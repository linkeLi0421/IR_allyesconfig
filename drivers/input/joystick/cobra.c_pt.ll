; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/cobra.c_pt.bc'
source_filename = "../drivers/input/joystick/cobra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cobra = type { ptr, [2 x ptr], i32, i32, i8, [2 x [32 x i8]] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author223 = internal constant [45 x i8] c"cobra.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [61 x i8] c"cobra.description=Creative Labs Blaster GamePad Cobra driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [40 x i8] c"cobra.file=drivers/input/joystick/cobra\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [18 x i8] c"cobra.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_cobra__227_247_cobra_drv_init6 = internal global ptr @cobra_drv_init, section ".initcall6.init", align 4
@cobra_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str.1, ptr @cobra_connect, ptr null, ptr @cobra_disconnect, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cobra_drv_exit = internal global ptr @cobra_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cobra\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Creative Labs Blaster GamePad Cobra driver\00", [53 x i8] zeroinitializer }, align 32
@cobra_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014cobra.c: Device %d on %s has the Ext bit set. ID is: %d Contact vojtech@ucw.cz\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cobra_connect\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/joystick/cobra.c\00", [33 x i8] zeroinitializer }, align 32
@cobra_connect._entry_ptr = internal global ptr @cobra_connect._entry, section ".printk_index", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s/input%d\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Creative Labs Blaster GamePad Cobra\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 48]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 48]
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"cobra_drv\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 238, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 247, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 242, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 163, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 187, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [34 x i8] c"../drivers/input/joystick/cobra.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 189, i32 21 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_cobra_drv_exit, ptr @__initcall__kmod_cobra__227_247_cobra_drv_init6, ptr @cobra_connect._entry, ptr @cobra_connect._entry_ptr, ptr @cobra_drv_exit, ptr @cobra_drv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobra_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobra_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cobra_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gameport_register_driver(ptr noundef nonnull @cobra_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cobra_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gameport_unregister_driver(ptr noundef nonnull @cobra_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobra_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %data = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !36
  %1 = getelementptr inbounds [2 x i32], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 88) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %gameport, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc zeroext i8 @cobra_read_packet(ptr noundef %gameport, ptr noundef nonnull %data)
  %exists = getelementptr inbounds %struct.cobra, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %exists to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call6, ptr %exists, align 4
  %phys = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %conv = zext i8 %call6 to i32
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %and = and i32 %8, 1
  %and8 = and i32 %and, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end5.for.inc_crit_edge, label %do.end

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %shr13 = lshr i32 %8, 2
  %and14 = and i32 %shr13, 7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %phys, i32 noundef %and14) #11
  %9 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %exists, align 4
  %conv19 = and i8 %10, -2
  store i8 %conv19, ptr %exists, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end5.for.inc_crit_edge
  %11 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %exists, align 4
  %13 = lshr i8 %12, 1
  %shr.1 = zext i8 %13 to i32
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %and.1 = and i32 %15, 1
  %and8.1 = and i32 %and.1, %shr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1)
  %tobool9.not.1 = icmp eq i32 %and8.1, 0
  br i1 %tobool9.not.1, label %for.inc.1thread-pre-split, label %do.end.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %shr13.1 = lshr i32 %15, 2
  %and14.1 = and i32 %shr13.1, 7
  %call15.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef %phys, i32 noundef %and14.1) #11
  %16 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %exists, align 4
  %conv19.1 = and i8 %17, -3
  store i8 %conv19.1, ptr %exists, align 4
  br label %for.inc.1

for.inc.1thread-pre-split:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %exists, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc.1thread-pre-split, %do.end.1
  %19 = phi i8 [ %.pr, %for.inc.1thread-pre-split ], [ %conv19.1, %do.end.1 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool22.not = icmp eq i8 %19, 0
  br i1 %tobool22.not, label %for.inc.1.fail2_crit_edge, label %if.end24

for.inc.1.fail2_crit_edge:                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

if.end24:                                         ; preds = %for.inc.1
  %poll_handler.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %20 = ptrtoint ptr %poll_handler.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cobra_poll, ptr %poll_handler.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %21 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 20, ptr %poll_interval.i, align 8
  %dev55 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21
  br label %for.body28

for.body28:                                       ; preds = %for.inc73.for.body28_crit_edge, %if.end24
  %i.1167 = phi i32 [ 0, %if.end24 ], [ %inc74, %for.inc73.for.body28_crit_edge ]
  %22 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %exists, align 4
  %conv30 = zext i8 %23 to i32
  %24 = shl nuw nsw i32 1, %i.1167
  %25 = and i32 %24, %conv30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool34.not.not = icmp eq i32 %25, 0
  br i1 %tobool34.not.not, label %for.body28.for.inc73_crit_edge, label %if.end36

for.body28.for.inc73_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc73

if.end36:                                         ; preds = %for.body28
  %call37 = tail call ptr @input_allocate_device() #7
  %arrayidx38 = getelementptr %struct.cobra, ptr %call7.i.i, i32 0, i32 1, i32 %i.1167
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call37, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %if.end36.fail3_crit_edge, label %if.end41

if.end36.fail3_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail3

if.end41:                                         ; preds = %if.end36
  %arrayidx43 = getelementptr %struct.cobra, ptr %call7.i.i, i32 0, i32 5, i32 %i.1167
  %call47 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx43, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %phys, i32 noundef %i.1167)
  %27 = ptrtoint ptr %call37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.6, ptr %call37, align 8
  %phys51 = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 1
  %28 = ptrtoint ptr %phys51 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx43, ptr %phys51, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 3
  %29 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 20, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 4, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 8, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 256, ptr %version, align 2
  %parent = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 40, i32 1
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev55, ptr %parent, align 8
  %driver_data.i.i155 = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 40, i32 8
  %34 = ptrtoint ptr %driver_data.i.i155 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %driver_data.i.i155, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 31
  %35 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @cobra_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 32
  %36 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @cobra_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 5
  %37 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 10, ptr %evbit, align 8
  tail call void @input_set_abs_params(ptr noundef nonnull %call37, i32 noundef 0, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call37, i32 noundef 1, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call37, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 315, ptr noundef %keybit) #7
  tail call void @_set_bit(i32 noundef 314, ptr noundef %keybit) #7
  tail call void @_set_bit(i32 noundef 310, ptr noundef %keybit) #7
  tail call void @_set_bit(i32 noundef 311, ptr noundef %keybit) #7
  tail call void @_set_bit(i32 noundef 307, ptr noundef %keybit) #7
  tail call void @_set_bit(i32 noundef 308, ptr noundef %keybit) #7
  tail call void @_set_bit(i32 noundef 309, ptr noundef %keybit) #7
  tail call void @_set_bit(i32 noundef 304, ptr noundef %keybit) #7
  tail call void @_set_bit(i32 noundef 305, ptr noundef %keybit) #7
  tail call void @_set_bit(i32 noundef 306, ptr noundef %keybit) #7
  tail call void @_set_bit(i32 noundef 312, ptr noundef %keybit) #7
  tail call void @_set_bit(i32 noundef 313, ptr noundef %keybit) #7
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx38, align 4
  %call69 = tail call i32 @input_register_device(ptr noundef %39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end41.for.inc73_crit_edge, label %fail4

if.end41.for.inc73_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc73

for.inc73:                                        ; preds = %if.end41.for.inc73_crit_edge, %for.body28.for.inc73_crit_edge
  %inc74 = add nuw nsw i32 %i.1167, 1
  %exitcond.not = icmp eq i32 %inc74, 2
  br i1 %exitcond.not, label %for.inc73.cleanup_crit_edge, label %for.inc73.for.body28_crit_edge

for.inc73.for.body28_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

for.inc73.cleanup_crit_edge:                      ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail4:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx38, align 4
  tail call void @input_free_device(ptr noundef %41) #7
  br label %fail3

fail3:                                            ; preds = %fail4, %if.end36.fail3_crit_edge
  %err.0 = phi i32 [ %call69, %fail4 ], [ -12, %if.end36.fail3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1167)
  %cmp78170.not = icmp eq i32 %i.1167, 0
  br i1 %cmp78170.not, label %fail3.fail2_crit_edge, label %while.body

fail3.fail2_crit_edge:                            ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

while.body:                                       ; preds = %fail3
  %dev162 = getelementptr inbounds %struct.cobra, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %dev162 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev162, align 4
  %tobool82.not = icmp eq ptr %43, null
  br i1 %tobool82.not, label %while.body.fail2_crit_edge, label %if.then83

while.body.fail2_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

if.then83:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_unregister_device(ptr noundef nonnull %43) #7
  br label %fail2

fail2:                                            ; preds = %if.then83, %while.body.fail2_crit_edge, %fail3.fail2_crit_edge, %for.inc.1.fail2_crit_edge
  %err.1 = phi i32 [ -19, %for.inc.1.fail2_crit_edge ], [ %err.0, %if.then83 ], [ %err.0, %while.body.fail2_crit_edge ], [ %err.0, %fail3.fail2_crit_edge ]
  tail call void @gameport_close(ptr noundef %gameport) #7
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %err.2 = phi i32 [ %call2, %if.end.fail1_crit_edge ], [ %err.1, %fail2 ]
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail1, %for.inc73.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %fail1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc73.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cobra_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %exists = getelementptr inbounds %struct.cobra, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %exists, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.cobra, ptr %1, i32 0, i32 1, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @input_unregister_device(ptr noundef %6) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %7 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %exists, align 4
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1 = icmp eq i8 %9, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1 = getelementptr %struct.cobra, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  tail call void @input_unregister_device(ptr noundef %11) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  tail call void @gameport_close(ptr noundef %gameport) #7
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gameport_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @cobra_read_packet(ptr noundef %gameport, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %1, 45
  %div.i = sdiv i32 %mul.i, 1000
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !37
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry.do.end14_crit_edge
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %3 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i8 %4(ptr noundef %gameport) #7
  br label %gameport_read.exit

if.else.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %5 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io.i, align 4
  %and.i199 = and i32 %6, 1048575
  %add.i = or i32 %and.i199, -18874368
  %7 = inttoptr i32 %add.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %call.i, %if.then.i ], [ %8, %if.else.i ]
  %io.i204 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %do.body16.outer

do.body16.outer:                                  ; preds = %do.cond61.do.body16.outer_crit_edge, %gameport_read.exit
  %buf.sroa.0.0.ph = phi i64 [ %buf.sroa.0.2, %do.cond61.do.body16.outer_crit_edge ], [ 0, %gameport_read.exit ]
  %buf.sroa.10.0.ph = phi i64 [ %buf.sroa.10.2, %do.cond61.do.body16.outer_crit_edge ], [ 0, %gameport_read.exit ]
  %r.sroa.0.0.ph = phi i32 [ %r.sroa.0.2, %do.cond61.do.body16.outer_crit_edge ], [ 0, %gameport_read.exit ]
  %r.sroa.7.0.ph = phi i32 [ %r.sroa.7.2, %do.cond61.do.body16.outer_crit_edge ], [ 0, %gameport_read.exit ]
  %t.sroa.10.0.ph = phi i32 [ %t.sroa.10.2, %do.cond61.do.body16.outer_crit_edge ], [ 45, %gameport_read.exit ]
  %t.sroa.0.0.ph = phi i32 [ %t.sroa.0.2, %do.cond61.do.body16.outer_crit_edge ], [ 45, %gameport_read.exit ]
  %u.0.ph = phi i8 [ %u.1.lcssa, %do.cond61.do.body16.outer_crit_edge ], [ %retval.0.i, %gameport_read.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %r.sroa.7.0.ph)
  %cmp38.1 = icmp slt i32 %r.sroa.7.0.ph, 36
  br label %do.body16

do.body16:                                        ; preds = %do.cond61.thread.do.body16_crit_edge, %do.body16.outer
  %buf.sroa.0.0 = phi i64 [ %buf.sroa.0.1, %do.cond61.thread.do.body16_crit_edge ], [ %buf.sroa.0.0.ph, %do.body16.outer ]
  %r.sroa.0.0 = phi i32 [ %r.sroa.0.1, %do.cond61.thread.do.body16_crit_edge ], [ %r.sroa.0.0.ph, %do.body16.outer ]
  %t.sroa.10.0 = phi i32 [ 0, %do.cond61.thread.do.body16_crit_edge ], [ %t.sroa.10.0.ph, %do.body16.outer ]
  %t.sroa.0.0 = phi i32 [ %t.sroa.0.1, %do.cond61.thread.do.body16_crit_edge ], [ %t.sroa.0.0.ph, %do.body16.outer ]
  %u.0 = phi i8 [ %u.2, %do.cond61.thread.do.body16_crit_edge ], [ %u.0.ph, %do.body16.outer ]
  %dec = add i32 %t.sroa.0.0, -1
  %dec19 = add i32 %t.sroa.10.0, -1
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %tobool.not.i201 = icmp eq ptr %10, null
  br i1 %tobool.not.i201, label %if.else.i207, label %if.then.i203

if.then.i203:                                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %call.i202 = tail call zeroext i8 %10(ptr noundef %gameport) #7
  br label %gameport_read.exit209

if.else.i207:                                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %io.i204 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io.i204, align 4
  %and.i205 = and i32 %12, 1048575
  %add.i206 = or i32 %and.i205, -18874368
  %13 = inttoptr i32 %add.i206 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  br label %gameport_read.exit209

gameport_read.exit209:                            ; preds = %if.else.i207, %if.then.i203
  %retval.0.i208 = phi i8 [ %call.i202, %if.then.i203 ], [ %14, %if.else.i207 ]
  %xor198 = xor i8 %retval.0.i208, %u.0
  %conv27 = zext i8 %xor198 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor198)
  %tobool28.not = icmp eq i8 %xor198, 0
  br i1 %tobool28.not, label %gameport_read.exit209.do.cond61_crit_edge, label %for.body29

gameport_read.exit209.do.cond61_crit_edge:        ; preds = %gameport_read.exit209
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond61

for.body29:                                       ; preds = %gameport_read.exit209
  %and = and i32 %conv27, 48
  %15 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %land.lhs.true [
    i32 0, label %for.body29.for.inc55_crit_edge
    i32 48, label %for.body29.if.else_crit_edge
  ]

for.body29.if.else_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body29.for.inc55_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc55

land.lhs.true:                                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %r.sroa.0.0)
  %cmp38 = icmp slt i32 %r.sroa.0.0, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp42 = icmp sgt i32 %dec, 0
  %or.cond272 = select i1 %cmp38, i1 %cmp42, i1 false
  br i1 %or.cond272, label %if.then44, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %16 = lshr i32 %conv27, 5
  %and46 = and i32 %16, 1
  %17 = zext i32 %and46 to i64
  %inc49 = add nsw i32 %r.sroa.0.0, 1
  %sh_prom = zext i32 %r.sroa.0.0 to i64
  %shl = shl nuw i64 %17, %sh_prom
  %or = or i64 %buf.sroa.0.0, %shl
  br label %for.inc55

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body29.if.else_crit_edge
  br label %for.inc55

for.inc55:                                        ; preds = %if.else, %if.then44, %for.body29.for.inc55_crit_edge
  %buf.sroa.0.1 = phi i64 [ %or, %if.then44 ], [ %buf.sroa.0.0, %if.else ], [ %buf.sroa.0.0, %for.body29.for.inc55_crit_edge ]
  %r.sroa.0.1 = phi i32 [ %inc49, %if.then44 ], [ %r.sroa.0.0, %if.else ], [ %r.sroa.0.0, %for.body29.for.inc55_crit_edge ]
  %t.sroa.0.1 = phi i32 [ %div.i, %if.then44 ], [ 0, %if.else ], [ %dec, %for.body29.for.inc55_crit_edge ]
  %u.2 = phi i8 [ %retval.0.i208, %if.then44 ], [ %u.0, %if.else ], [ %u.0, %for.body29.for.inc55_crit_edge ]
  %18 = lshr i8 %xor198, 2
  %conv27.1 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %xor198)
  %tobool28.not.1 = icmp ult i8 %xor198, 4
  br i1 %tobool28.not.1, label %for.inc55.do.cond61_crit_edge, label %for.body29.1

for.inc55.do.cond61_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond61

for.body29.1:                                     ; preds = %for.inc55
  %and.1 = and i32 %conv27.1, 48
  %19 = zext i32 %and.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and.1, label %land.lhs.true.1 [
    i32 0, label %for.body29.1.do.cond61_crit_edge
    i32 48, label %for.body29.1.do.cond61.thread_crit_edge
  ]

for.body29.1.do.cond61.thread_crit_edge:          ; preds = %for.body29.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond61.thread

for.body29.1.do.cond61_crit_edge:                 ; preds = %for.body29.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond61

land.lhs.true.1:                                  ; preds = %for.body29.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec19)
  %cmp42.1 = icmp sgt i32 %dec19, 0
  %or.cond273 = select i1 %cmp38.1, i1 %cmp42.1, i1 false
  br i1 %or.cond273, label %if.then44.1, label %land.lhs.true.1.do.cond61.thread_crit_edge

land.lhs.true.1.do.cond61.thread_crit_edge:       ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond61.thread

if.then44.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  %20 = lshr i32 %conv27.1, 5
  %21 = zext i32 %20 to i64
  %inc49.1 = add nsw i32 %r.sroa.7.0.ph, 1
  %sh_prom.1 = zext i32 %r.sroa.7.0.ph to i64
  %shl.1 = shl nuw i64 %21, %sh_prom.1
  %or.1 = or i64 %buf.sroa.10.0.ph, %shl.1
  br label %do.cond61

do.cond61:                                        ; preds = %if.then44.1, %for.body29.1.do.cond61_crit_edge, %for.inc55.do.cond61_crit_edge, %gameport_read.exit209.do.cond61_crit_edge
  %buf.sroa.0.2 = phi i64 [ %buf.sroa.0.1, %if.then44.1 ], [ %buf.sroa.0.1, %for.body29.1.do.cond61_crit_edge ], [ %buf.sroa.0.1, %for.inc55.do.cond61_crit_edge ], [ %buf.sroa.0.0, %gameport_read.exit209.do.cond61_crit_edge ]
  %buf.sroa.10.2 = phi i64 [ %or.1, %if.then44.1 ], [ %buf.sroa.10.0.ph, %gameport_read.exit209.do.cond61_crit_edge ], [ %buf.sroa.10.0.ph, %for.inc55.do.cond61_crit_edge ], [ %buf.sroa.10.0.ph, %for.body29.1.do.cond61_crit_edge ]
  %r.sroa.0.2 = phi i32 [ %r.sroa.0.1, %if.then44.1 ], [ %r.sroa.0.1, %for.body29.1.do.cond61_crit_edge ], [ %r.sroa.0.1, %for.inc55.do.cond61_crit_edge ], [ %r.sroa.0.0, %gameport_read.exit209.do.cond61_crit_edge ]
  %r.sroa.7.2 = phi i32 [ %inc49.1, %if.then44.1 ], [ %r.sroa.7.0.ph, %gameport_read.exit209.do.cond61_crit_edge ], [ %r.sroa.7.0.ph, %for.inc55.do.cond61_crit_edge ], [ %r.sroa.7.0.ph, %for.body29.1.do.cond61_crit_edge ]
  %t.sroa.10.2 = phi i32 [ %div.i, %if.then44.1 ], [ %dec19, %gameport_read.exit209.do.cond61_crit_edge ], [ %dec19, %for.inc55.do.cond61_crit_edge ], [ %dec19, %for.body29.1.do.cond61_crit_edge ]
  %t.sroa.0.2 = phi i32 [ %t.sroa.0.1, %if.then44.1 ], [ %t.sroa.0.1, %for.body29.1.do.cond61_crit_edge ], [ %t.sroa.0.1, %for.inc55.do.cond61_crit_edge ], [ %dec, %gameport_read.exit209.do.cond61_crit_edge ]
  %u.1.lcssa = phi i8 [ %retval.0.i208, %if.then44.1 ], [ %u.2, %for.body29.1.do.cond61_crit_edge ], [ %u.2, %for.inc55.do.cond61_crit_edge ], [ %u.0, %gameport_read.exit209.do.cond61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.sroa.0.2)
  %cmp63 = icmp sgt i32 %t.sroa.0.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.sroa.10.2)
  %cmp66 = icmp sgt i32 %t.sroa.10.2, 0
  %or.cond = select i1 %cmp63, i1 true, i1 %cmp66
  br i1 %or.cond, label %do.cond61.do.body16.outer_crit_edge, label %do.cond61.do.body69_crit_edge

do.cond61.do.body69_crit_edge:                    ; preds = %do.cond61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body69

do.cond61.do.body16.outer_crit_edge:              ; preds = %do.cond61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16.outer

do.cond61.thread:                                 ; preds = %land.lhs.true.1.do.cond61.thread_crit_edge, %for.body29.1.do.cond61.thread_crit_edge
  %cmp63244 = icmp sgt i32 %t.sroa.0.1, 0
  br i1 %cmp63244, label %do.cond61.thread.do.body16_crit_edge, label %do.cond61.thread.do.body69_crit_edge

do.cond61.thread.do.body69_crit_edge:             ; preds = %do.cond61.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body69

do.cond61.thread.do.body16_crit_edge:             ; preds = %do.cond61.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

do.body69:                                        ; preds = %do.cond61.thread.do.body69_crit_edge, %do.cond61.do.body69_crit_edge
  %buf.sroa.0.2245270 = phi i64 [ %buf.sroa.0.1, %do.cond61.thread.do.body69_crit_edge ], [ %buf.sroa.0.2, %do.cond61.do.body69_crit_edge ]
  %buf.sroa.10.2247269 = phi i64 [ %buf.sroa.10.0.ph, %do.cond61.thread.do.body69_crit_edge ], [ %buf.sroa.10.2, %do.cond61.do.body69_crit_edge ]
  %r.sroa.0.2249268 = phi i32 [ %r.sroa.0.1, %do.cond61.thread.do.body69_crit_edge ], [ %r.sroa.0.2, %do.cond61.do.body69_crit_edge ]
  %r.sroa.7.2251267 = phi i32 [ %r.sroa.7.0.ph, %do.cond61.thread.do.body69_crit_edge ], [ %r.sroa.7.2, %do.cond61.do.body69_crit_edge ]
  br i1 %tobool.not, label %if.then78, label %do.body69.do.body80_crit_edge

do.body69.do.body80_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body80

if.then78:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body80

do.body80:                                        ; preds = %if.then78, %do.body69.do.body80_crit_edge
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !40
  %and.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool88.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool88.not, label %if.then92, label %do.body80.do.end95_crit_edge, !prof !41

do.body80.do.end95_crit_edge:                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end95

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %do.body80.do.end95_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #7, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %r.sroa.0.2249268)
  %cmp105.not = icmp eq i32 %r.sroa.0.2249268, 36
  br i1 %cmp105.not, label %do.end95.land.rhs112_crit_edge, label %do.end95.for.inc156_crit_edge

do.end95.for.inc156_crit_edge:                    ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc156

do.end95.land.rhs112_crit_edge:                   ; preds = %do.end95
  br label %land.rhs112

land.rhs112:                                      ; preds = %for.body118.land.rhs112_crit_edge, %do.end95.land.rhs112_crit_edge
  %j.0220 = phi i32 [ %inc127, %for.body118.land.rhs112_crit_edge ], [ 0, %do.end95.land.rhs112_crit_edge ]
  %or124217219 = phi i64 [ %or124, %for.body118.land.rhs112_crit_edge ], [ %buf.sroa.0.2245270, %do.end95.land.rhs112_crit_edge ]
  %and114 = and i64 %or124217219, 1090785407
  call void @__sanitizer_cov_trace_const_cmp8(i64 1090785344, i64 %and114)
  %tobool116.not = icmp eq i64 %and114, 1090785344
  br i1 %tobool116.not, label %land.rhs112.if.end134_crit_edge, label %for.body118

land.rhs112.if.end134_crit_edge:                  ; preds = %land.rhs112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

for.body118:                                      ; preds = %land.rhs112
  %shr120 = lshr i64 %or124217219, 1
  %and122 = shl i64 %or124217219, 35
  %shl123 = and i64 %and122, 34359738368
  %or124 = or i64 %shl123, %shr120
  %inc127 = add nuw nsw i32 %j.0220, 1
  %exitcond.not = icmp eq i32 %inc127, 36
  br i1 %exitcond.not, label %for.body118.if.end134_crit_edge, label %for.body118.land.rhs112_crit_edge

for.body118.land.rhs112_crit_edge:                ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs112

for.body118.if.end134_crit_edge:                  ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134

if.end134:                                        ; preds = %for.body118.if.end134_crit_edge, %land.rhs112.if.end134_crit_edge
  %buf.sroa.0.3 = phi i64 [ %or124217219, %land.rhs112.if.end134_crit_edge ], [ %or124, %for.body118.if.end134_crit_edge ]
  %ret.1 = phi i32 [ 1, %land.rhs112.if.end134_crit_edge ], [ 0, %for.body118.if.end134_crit_edge ]
  %shr136 = lshr i64 %buf.sroa.0.3, 7
  %and137 = and i64 %shr136, 31
  %shr139 = lshr i64 %buf.sroa.0.3, 8
  %and140 = and i64 %shr139, 992
  %or141 = or i64 %and137, %and140
  %shr143 = lshr i64 %buf.sroa.0.3, 9
  %and144 = and i64 %shr143, 31744
  %or145 = or i64 %or141, %and144
  %shr147 = lshr i64 %buf.sroa.0.3, 10
  %and148 = and i64 %shr147, 1015808
  %or149 = or i64 %or145, %and148
  %shr151 = lshr i64 %buf.sroa.0.3, 11
  %and152 = and i64 %shr151, 32505856
  %or153 = or i64 %or149, %and152
  %conv154 = trunc i64 %or153 to i32
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv154, ptr %data, align 4
  br label %for.inc156

for.inc156:                                       ; preds = %if.end134, %do.end95.for.inc156_crit_edge
  %ret.2 = phi i32 [ 0, %do.end95.for.inc156_crit_edge ], [ %ret.1, %if.end134 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %r.sroa.7.2251267)
  %cmp105.not.1 = icmp eq i32 %r.sroa.7.2251267, 36
  br i1 %cmp105.not.1, label %for.inc156.land.rhs112.1_crit_edge, label %for.inc156.for.inc156.1_crit_edge

for.inc156.for.inc156.1_crit_edge:                ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc156.1

for.inc156.land.rhs112.1_crit_edge:               ; preds = %for.inc156
  br label %land.rhs112.1

land.rhs112.1:                                    ; preds = %for.body118.1.land.rhs112.1_crit_edge, %for.inc156.land.rhs112.1_crit_edge
  %j.0220.1 = phi i32 [ %inc127.1, %for.body118.1.land.rhs112.1_crit_edge ], [ 0, %for.inc156.land.rhs112.1_crit_edge ]
  %or124217219.1 = phi i64 [ %or124.1, %for.body118.1.land.rhs112.1_crit_edge ], [ %buf.sroa.10.2247269, %for.inc156.land.rhs112.1_crit_edge ]
  %and114.1 = and i64 %or124217219.1, 1090785407
  call void @__sanitizer_cov_trace_const_cmp8(i64 1090785344, i64 %and114.1)
  %tobool116.not.1 = icmp eq i64 %and114.1, 1090785344
  br i1 %tobool116.not.1, label %if.then131.critedge.1, label %for.body118.1

for.body118.1:                                    ; preds = %land.rhs112.1
  %shr120.1 = lshr i64 %or124217219.1, 1
  %and122.1 = shl i64 %or124217219.1, 35
  %shl123.1 = and i64 %and122.1, 34359738368
  %or124.1 = or i64 %shl123.1, %shr120.1
  %inc127.1 = add nuw nsw i32 %j.0220.1, 1
  %exitcond.1.not = icmp eq i32 %inc127.1, 36
  br i1 %exitcond.1.not, label %for.body118.1.if.end134.1_crit_edge, label %for.body118.1.land.rhs112.1_crit_edge

for.body118.1.land.rhs112.1_crit_edge:            ; preds = %for.body118.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs112.1

for.body118.1.if.end134.1_crit_edge:              ; preds = %for.body118.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134.1

if.then131.critedge.1:                            ; preds = %land.rhs112.1
  call void @__sanitizer_cov_trace_pc() #9
  %or133.1 = or i32 %ret.2, 2
  br label %if.end134.1

if.end134.1:                                      ; preds = %if.then131.critedge.1, %for.body118.1.if.end134.1_crit_edge
  %buf.sroa.10.3 = phi i64 [ %or124217219.1, %if.then131.critedge.1 ], [ %or124.1, %for.body118.1.if.end134.1_crit_edge ]
  %ret.1.1 = phi i32 [ %or133.1, %if.then131.critedge.1 ], [ %ret.2, %for.body118.1.if.end134.1_crit_edge ]
  %shr136.1 = lshr i64 %buf.sroa.10.3, 7
  %and137.1 = and i64 %shr136.1, 31
  %shr139.1 = lshr i64 %buf.sroa.10.3, 8
  %and140.1 = and i64 %shr139.1, 992
  %or141.1 = or i64 %and137.1, %and140.1
  %shr143.1 = lshr i64 %buf.sroa.10.3, 9
  %and144.1 = and i64 %shr143.1, 31744
  %or145.1 = or i64 %or141.1, %and144.1
  %shr147.1 = lshr i64 %buf.sroa.10.3, 10
  %and148.1 = and i64 %shr147.1, 1015808
  %or149.1 = or i64 %or145.1, %and148.1
  %shr151.1 = lshr i64 %buf.sroa.10.3, 11
  %and152.1 = and i64 %shr151.1, 32505856
  %or153.1 = or i64 %or149.1, %and152.1
  %conv154.1 = trunc i64 %or153.1 to i32
  %arrayidx155.1 = getelementptr i32, ptr %data, i32 1
  %24 = ptrtoint ptr %arrayidx155.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv154.1, ptr %arrayidx155.1, align 4
  br label %for.inc156.1

for.inc156.1:                                     ; preds = %if.end134.1, %for.inc156.for.inc156.1_crit_edge
  %ret.2.1 = phi i32 [ %ret.2, %for.inc156.for.inc156.1_crit_edge ], [ %ret.1.1, %if.end134.1 ]
  %conv159 = trunc i32 %ret.2.1 to i8
  ret i8 %conv159
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cobra_poll(ptr noundef %gameport) #2 align 64 {
entry:
  %data = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !36
  %3 = getelementptr inbounds [2 x i32], ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !36
  %reads = getelementptr inbounds %struct.cobra, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reads, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %reads, align 4
  %call1 = call fastcc zeroext i8 @cobra_read_packet(ptr noundef %gameport, ptr noundef nonnull %data)
  %exists = getelementptr inbounds %struct.cobra, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %exists, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %call1, i8 %8)
  %cmp.not = icmp eq i8 %call1, %8
  br i1 %cmp.not, label %entry.for.body_crit_edge, label %if.then

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bads = getelementptr inbounds %struct.cobra, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %bads to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bads, align 4
  %inc4 = add i32 %10, 1
  store i32 %inc4, ptr %bads, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc34.for.body_crit_edge, %entry.for.body_crit_edge
  %i.063 = phi i32 [ %inc35, %for.inc34.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %11 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %exists, align 4
  %and61 = and i8 %12, %call1
  %and = zext i8 %and61 to i32
  %shl = shl nuw nsw i32 1, %i.063
  %and9 = and i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %for.body.for.inc34_crit_edge, label %if.then10

for.body.for.inc34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.cobra, ptr %1, i32 0, i32 1, i32 %i.063
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr [2 x i32], ptr %data, i32 0, i32 %i.063
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12, align 4
  %shr = lshr i32 %16, 4
  %and13 = and i32 %shr, 1
  %17 = shl i32 %16, 28
  %18 = ashr i32 %17, 31
  %sub = add nsw i32 %18, %and13
  tail call void @input_event(ptr noundef %14, i32 noundef 3, i32 noundef 0, i32 noundef %sub) #7
  %shr18 = lshr i32 %16, 2
  %and19 = and i32 %shr18, 1
  %19 = shl i32 %16, 30
  %20 = ashr i32 %19, 31
  %sub23 = add nsw i32 %20, %and19
  tail call void @input_event(ptr noundef %14, i32 noundef 3, i32 noundef 1, i32 noundef %sub23) #7
  %and31 = lshr i32 %16, 5
  %and31.lobit = and i32 %and31, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 315, i32 noundef %and31.lobit) #7
  %and31.1 = lshr i32 %16, 6
  %and31.1.lobit = and i32 %and31.1, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 314, i32 noundef %and31.1.lobit) #7
  %and31.2 = lshr i32 %16, 7
  %and31.2.lobit = and i32 %and31.2, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 310, i32 noundef %and31.2.lobit) #7
  %and31.3 = lshr i32 %16, 8
  %and31.3.lobit = and i32 %and31.3, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 311, i32 noundef %and31.3.lobit) #7
  %and31.4 = lshr i32 %16, 9
  %and31.4.lobit = and i32 %and31.4, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 307, i32 noundef %and31.4.lobit) #7
  %and31.5 = lshr i32 %16, 10
  %and31.5.lobit = and i32 %and31.5, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 308, i32 noundef %and31.5.lobit) #7
  %and31.6 = lshr i32 %16, 11
  %and31.6.lobit = and i32 %and31.6, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 309, i32 noundef %and31.6.lobit) #7
  %and31.7 = lshr i32 %16, 12
  %and31.7.lobit = and i32 %and31.7, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 304, i32 noundef %and31.7.lobit) #7
  %and31.8 = lshr i32 %16, 13
  %and31.8.lobit = and i32 %and31.8, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 305, i32 noundef %and31.8.lobit) #7
  %and31.9 = lshr i32 %16, 14
  %and31.9.lobit = and i32 %and31.9, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 306, i32 noundef %and31.9.lobit) #7
  %and31.10 = lshr i32 %16, 15
  %and31.10.lobit = and i32 %and31.10, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 312, i32 noundef %and31.10.lobit) #7
  %and31.11 = lshr i32 %16, 16
  %and31.11.lobit = and i32 %and31.11, 1
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 313, i32 noundef %and31.11.lobit) #7
  tail call void @input_event(ptr noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %for.inc34

for.inc34:                                        ; preds = %if.then10, %for.body.for.inc34_crit_edge
  %inc35 = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc35, 2
  br i1 %exitcond.not, label %for.inc34.cleanup_crit_edge, label %for.inc34.for.body_crit_edge

for.inc34.for.body_crit_edge:                     ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc34.cleanup_crit_edge:                      ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc34.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobra_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_start_polling(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cobra_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_stop_polling(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_stop_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/cobra.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/cobra.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/cobra.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_cobra__227_247_cobra_drv_init6, !8, !"__initcall__kmod_cobra__227_247_cobra_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/cobra.c", i32 247, i32 1}
!9 = !{ptr @__exitcall_cobra_drv_exit, !8, !"__exitcall_cobra_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/cobra.c", i32 242, i32 17}
!13 = !{ptr @cobra_drv, !14, !"cobra_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/cobra.c", i32 238, i32 31}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/cobra.c", i32 163, i32 4}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cobra_connect._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @cobra_connect._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/cobra.c", i32 187, i32 5}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/cobra.c", i32 189, i32 21}
!25 = distinct !{null, !26, !"cobra_btn", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/cobra.c", i32 29, i32 12}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{i64 605918, i64 605979}
!38 = !{i64 4937032}
!39 = !{i64 2152726959}
!40 = !{i64 608650}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 608935}
