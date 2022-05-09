; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/interact.c_pt.bc'
source_filename = "../drivers/input/joystick/interact.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.interact_type = type { i32, ptr, ptr, ptr, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.interact = type { ptr, ptr, i32, i32, i8, i8, [32 x i8] }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author223 = internal constant [48 x i8] c"interact.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [54 x i8] c"interact.description=InterAct digital joystick driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [46 x i8] c"interact.file=drivers/input/joystick/interact\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [21 x i8] c"interact.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_interact__227_297_interact_drv_init6 = internal global ptr @interact_drv_init, section ".initcall6.init", align 4
@interact_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str.1, ptr @interact_connect, ptr null, ptr @interact_disconnect, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_interact_drv_exit = internal global ptr @interact_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"interact\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"InterAct digital joystick driver\00", [63 x i8] zeroinitializer }, align 32
@interact_type = internal constant { [3 x %struct.interact_type], [36 x i8] } { [3 x %struct.interact_type] [%struct.interact_type { i32 25090, ptr @interact_abs_hhfx, ptr @interact_btn_hhfx, ptr @.str.6, i8 32, i8 4 }, %struct.interact_type { i32 21496, ptr @interact_abs_pp8d, ptr @interact_btn_pp8d, ptr @.str.7, i8 16, i8 0 }, %struct.interact_type zeroinitializer], [36 x i8] zeroinitializer }, align 32
@interact_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014interact.c: Unknown joystick on %s. [len %d d0 %08x d1 %08x i2 %08x]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"interact_connect\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/input/joystick/interact.c\00", [62 x i8] zeroinitializer }, align 32
@interact_connect._entry_ptr = internal global ptr @interact_connect._entry, section ".printk_index", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@interact_abs_hhfx = internal global { [7 x i16], [18 x i8] } { [7 x i16] [i16 3, i16 4, i16 0, i16 1, i16 16, i16 17, i16 -1], [18 x i8] zeroinitializer }, align 32
@interact_btn_hhfx = internal global { [13 x i16], [38 x i8] } { [13 x i16] [i16 311, i16 307, i16 308, i16 309, i16 304, i16 305, i16 306, i16 310, i16 312, i16 313, i16 316, i16 314, i16 -1], [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"InterAct HammerHead/FX\00", [41 x i8] zeroinitializer }, align 32
@interact_abs_pp8d = internal global { [3 x i16], [26 x i8] } { [3 x i16] [i16 0, i16 1, i16 -1], [26 x i8] zeroinitializer }, align 32
@interact_btn_pp8d = internal global { [9 x i16], [46 x i8] } { [9 x i16] [i16 306, i16 310, i16 311, i16 304, i16 305, i16 308, i16 309, i16 307, i16 -1], [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"InterAct ProPad 8 Digital\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 21496, i64 25090]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"interact_drv\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 288, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 297, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 292, i32 17 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"interact_type\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 66, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 226, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 235, i32 51 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"interact_abs_hhfx\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 47, i32 14 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"interact_btn_hhfx\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 52, i32 14 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 67, i32 50 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"interact_abs_pp8d\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 49, i32 14 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"interact_btn_pp8d\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 54, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [37 x i8] c"../drivers/input/joystick/interact.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 68, i32 50 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_interact_drv_exit, ptr @__initcall__kmod_interact__227_297_interact_drv_init6, ptr @interact_connect._entry, ptr @interact_connect._entry_ptr, ptr @interact_drv_exit, ptr @interact_drv, ptr @.str, ptr @.str.1, ptr @interact_type, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @interact_abs_hhfx, ptr @interact_btn_hhfx, ptr @.str.6, ptr @interact_abs_pp8d, ptr @interact_btn_pp8d, ptr @.str.7], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interact_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interact_type to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interact_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interact_abs_hhfx to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interact_btn_hhfx to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interact_abs_pp8d to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interact_btn_pp8d to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @interact_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gameport_register_driver(ptr noundef nonnull @interact_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @interact_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gameport_unregister_driver(ptr noundef nonnull @interact_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interact_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %data = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !46
  %1 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !46
  %3 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 52) #10
  %call1 = tail call ptr @input_allocate_device() #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %gameport, ptr %call7.i.i, align 8
  %dev = getelementptr inbounds %struct.interact, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call4 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @interact_read_packet(ptr noundef %gameport, i32 noundef 64, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 32
  br i1 %cmp.not, label %lor.lhs.false9, label %if.end7.fail2_crit_edge

if.end7.fail2_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

lor.lhs.false9:                                   ; preds = %if.end7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  %shr.mask = and i32 %10, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %shr.mask)
  %cmp10.not = icmp eq i32 %shr.mask, 201326592
  br i1 %cmp10.not, label %lor.lhs.false11, label %lor.lhs.false9.fail2_crit_edge

lor.lhs.false9.fail2_crit_edge:                   ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %shr13.mask = and i32 %12, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %shr13.mask)
  %cmp14.not = icmp eq i32 %shr13.mask, 33554432
  br i1 %cmp14.not, label %for.cond.preheader, label %lor.lhs.false11.fail2_crit_edge

lor.lhs.false11.fail2_crit_edge:                  ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

for.cond.preheader:                               ; preds = %lor.lhs.false11
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %shr21 = lshr i32 %14, 16
  %trunc = trunc i32 %shr21 to i16
  %15 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %for.inc.1 [
    i16 25090, label %for.cond.preheader.if.end34_crit_edge
    i16 21496, label %if.end34.fold.split
  ]

for.cond.preheader.if.end34_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.inc.1:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %phys = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %phys, i32 noundef 2, i32 noundef %10, i32 noundef %12, i32 noundef %17) #11
  br label %fail2

if.end34.fold.split:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end34:                                         ; preds = %if.end34.fold.split, %for.cond.preheader.if.end34_crit_edge
  %arrayidx17165.lcssa = phi ptr [ @interact_type, %for.cond.preheader.if.end34_crit_edge ], [ getelementptr inbounds ([3 x %struct.interact_type], ptr @interact_type, i32 0, i32 1), %if.end34.fold.split ]
  %i.0164.lcssa = phi i32 [ 0, %for.cond.preheader.if.end34_crit_edge ], [ 1, %if.end34.fold.split ]
  %length.le = getelementptr [3 x %struct.interact_type], ptr @interact_type, i32 0, i32 %i.0164.lcssa, i32 4
  %poll_handler.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %18 = ptrtoint ptr %poll_handler.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @interact_poll, ptr %poll_handler.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %19 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20, ptr %poll_interval.i, align 8
  %phys35 = getelementptr inbounds %struct.interact, ptr %call7.i.i, i32 0, i32 6
  %phys37 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %call39 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys35, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %phys37)
  %conv = trunc i32 %i.0164.lcssa to i8
  %type = getelementptr inbounds %struct.interact, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %type, align 8
  %21 = ptrtoint ptr %length.le to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %length.le, align 4
  %length42 = getelementptr inbounds %struct.interact, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %length42 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %length42, align 1
  %name = getelementptr [3 x %struct.interact_type], ptr @interact_type, i32 0, i32 %i.0164.lcssa, i32 3
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  %26 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %call1, align 8
  %phys47 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %27 = ptrtoint ptr %phys47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %phys35, ptr %phys47, align 4
  %id48 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %28 = ptrtoint ptr %id48 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 20, ptr %id48, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 6, ptr %vendor, align 2
  %30 = ptrtoint ptr %arrayidx17165.lcssa to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx17165.lcssa, align 4
  %conv52 = trunc i32 %31 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv52, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 256, ptr %version, align 2
  %dev55 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev55, ptr %parent, align 8
  %driver_data.i.i157 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 8
  %35 = ptrtoint ptr %driver_data.i.i157 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %driver_data.i.i157, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 31
  %36 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @interact_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 32
  %37 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @interact_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %38 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10, ptr %evbit, align 8
  %39 = load i8, ptr %type, align 8
  %idxprom166 = zext i8 %39 to i32
  %abs167 = getelementptr [3 x %struct.interact_type], ptr @interact_type, i32 0, i32 %idxprom166, i32 1
  %40 = ptrtoint ptr %abs167 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %abs167, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %cmp63169 = icmp sgt i16 %43, -1
  br i1 %cmp63169, label %if.end34.for.body65_crit_edge, label %if.end34.for.cond77.preheader_crit_edge

if.end34.for.cond77.preheader_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond77.preheader

if.end34.for.body65_crit_edge:                    ; preds = %if.end34
  br label %for.body65

for.cond77.preheader:                             ; preds = %for.inc74.for.cond77.preheader_crit_edge, %if.end34.for.cond77.preheader_crit_edge
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type, align 8
  %idxprom79173 = zext i8 %45 to i32
  %btn174 = getelementptr [3 x %struct.interact_type], ptr @interact_type, i32 0, i32 %idxprom79173, i32 2
  %46 = ptrtoint ptr %btn174 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %btn174, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %47, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %49)
  %cmp83175 = icmp sgt i16 %49, -1
  br i1 %cmp83175, label %for.body85.lr.ph, label %for.cond77.preheader.for.end89_crit_edge

for.cond77.preheader.for.end89_crit_edge:         ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

for.body85.lr.ph:                                 ; preds = %for.cond77.preheader
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  br label %for.body85

for.body65:                                       ; preds = %for.inc74.for.body65_crit_edge, %if.end34.for.body65_crit_edge
  %conv62172.in = phi i16 [ %57, %for.inc74.for.body65_crit_edge ], [ %43, %if.end34.for.body65_crit_edge ]
  %idxprom171 = phi i32 [ %idxprom, %for.inc74.for.body65_crit_edge ], [ %idxprom166, %if.end34.for.body65_crit_edge ]
  %i.1170 = phi i32 [ %inc75, %for.inc74.for.body65_crit_edge ], [ 0, %if.end34.for.body65_crit_edge ]
  %conv62172179 = zext i16 %conv62172.in to i32
  %b8 = getelementptr [3 x %struct.interact_type], ptr @interact_type, i32 0, i32 %idxprom171, i32 5
  %50 = ptrtoint ptr %b8 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %b8, align 1
  %conv69 = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1170, i32 %conv69)
  %cmp70 = icmp slt i32 %i.1170, %conv69
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef %conv62172179, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #7
  br label %for.inc74

if.else:                                          ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef %conv62172179, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  br label %for.inc74

for.inc74:                                        ; preds = %if.else, %if.then72
  %inc75 = add i32 %i.1170, 1
  %52 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %type, align 8
  %idxprom = zext i8 %53 to i32
  %abs = getelementptr [3 x %struct.interact_type], ptr @interact_type, i32 0, i32 %idxprom, i32 1
  %54 = ptrtoint ptr %abs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %abs, align 4
  %arrayidx61 = getelementptr i16, ptr %55, i32 %inc75
  %56 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx61, align 2
  %cmp63 = icmp sgt i16 %57, -1
  br i1 %cmp63, label %for.inc74.for.body65_crit_edge, label %for.inc74.for.cond77.preheader_crit_edge

for.inc74.for.cond77.preheader_crit_edge:         ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond77.preheader

for.inc74.for.body65_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body65

for.body85:                                       ; preds = %for.body85.for.body85_crit_edge, %for.body85.lr.ph
  %58 = phi i16 [ %49, %for.body85.lr.ph ], [ %66, %for.body85.for.body85_crit_edge ]
  %i.2176 = phi i32 [ 0, %for.body85.lr.ph ], [ %inc88, %for.body85.for.body85_crit_edge ]
  %conv82159 = zext i16 %58 to i32
  %rem.i = and i32 %conv82159, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv82159, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %60, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc88 = add i32 %i.2176, 1
  %61 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %type, align 8
  %idxprom79 = zext i8 %62 to i32
  %btn = getelementptr [3 x %struct.interact_type], ptr @interact_type, i32 0, i32 %idxprom79, i32 2
  %63 = ptrtoint ptr %btn to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %btn, align 4
  %arrayidx81 = getelementptr i16, ptr %64, i32 %inc88
  %65 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx81, align 2
  %cmp83 = icmp sgt i16 %66, -1
  br i1 %cmp83, label %for.body85.for.body85_crit_edge, label %for.body85.for.end89_crit_edge

for.body85.for.end89_crit_edge:                   ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

for.body85.for.body85_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body85

for.end89:                                        ; preds = %for.body85.for.end89_crit_edge, %for.cond77.preheader.for.end89_crit_edge
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %call91 = tail call i32 @input_register_device(ptr noundef %68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %for.end89.cleanup_crit_edge, label %for.end89.fail2_crit_edge

for.end89.fail2_crit_edge:                        ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

for.end89.cleanup_crit_edge:                      ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail2:                                            ; preds = %for.end89.fail2_crit_edge, %for.inc.1, %lor.lhs.false11.fail2_crit_edge, %lor.lhs.false9.fail2_crit_edge, %if.end7.fail2_crit_edge
  %err.0 = phi i32 [ %call91, %for.end89.fail2_crit_edge ], [ -19, %for.inc.1 ], [ -19, %lor.lhs.false11.fail2_crit_edge ], [ -19, %lor.lhs.false9.fail2_crit_edge ], [ -19, %if.end7.fail2_crit_edge ]
  tail call void @gameport_close(ptr noundef %gameport) #7
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %call4, %if.end.fail1_crit_edge ], [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  %driver_data.i.i158 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %69 = ptrtoint ptr %driver_data.i.i158 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %driver_data.i.i158, align 4
  tail call void @input_free_device(ptr noundef %call1) #7
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail1, %for.end89.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %for.end89.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @interact_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.interact, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @input_unregister_device(ptr noundef %3) #7
  tail call void @gameport_close(ptr noundef %gameport) #7
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gameport_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @interact_read_packet(ptr noundef %gameport, i32 noundef %length, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %data, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %arrayidx1, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data, align 4
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %3 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %4, 600
  %div.i = sdiv i32 %mul.i, 1000
  %mul.i98 = mul i32 %4, 60
  %div.i99 = sdiv i32 %mul.i98, 1000
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !47
  %and.i = and i32 %5, 128
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
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %6 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %gameport) #7
  br label %gameport_trigger.exit

do.body.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %8 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io.i, align 4
  %and.i100 = and i32 %9, 1048575
  %add.i = or i32 %and.i100, -18874368
  %10 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -1) #7, !srcloc !49
  br label %gameport_trigger.exit

gameport_trigger.exit:                            ; preds = %do.body.i, %if.then.i
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 4
  %tobool.not.i101 = icmp eq ptr %12, null
  br i1 %tobool.not.i101, label %if.else.i, label %if.then.i102

if.then.i102:                                     ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i8 %12(ptr noundef %gameport) #7
  br label %gameport_read.exit

if.else.i:                                        ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #9
  %io.i103 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %13 = ptrtoint ptr %io.i103 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io.i103, align 4
  %and.i104 = and i32 %14, 1048575
  %add.i105 = or i32 %and.i104, -18874368
  %15 = inttoptr i32 %add.i105 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i102
  %retval.0.i = phi i8 [ %call.i, %if.then.i102 ], [ %16, %if.else.i ]
  %17 = add i32 %mul.i, -1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1999, i32 %17)
  %18 = icmp ult i32 %17, -1999
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp18118 = icmp sgt i32 %length, 0
  %or.cond119 = and i1 %18, %cmp18118
  br i1 %or.cond119, label %while.body.lr.ph, label %gameport_read.exit.do.body45_crit_edge

gameport_read.exit.do.body45_crit_edge:           ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body45

while.body.lr.ph:                                 ; preds = %gameport_read.exit
  %io.i110 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end44.while.body_crit_edge, %while.body.lr.ph
  %v.0122 = phi i8 [ %retval.0.i, %while.body.lr.ph ], [ %retval.0.i114, %if.end44.while.body_crit_edge ]
  %t.0121 = phi i32 [ %div.i, %while.body.lr.ph ], [ %t.1, %if.end44.while.body_crit_edge ]
  %i.0120 = phi i32 [ 0, %while.body.lr.ph ], [ %i.1, %if.end44.while.body_crit_edge ]
  %dec = add i32 %t.0121, -1
  %19 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i, align 4
  %tobool.not.i107 = icmp eq ptr %20, null
  br i1 %tobool.not.i107, label %if.else.i113, label %if.then.i109

if.then.i109:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i108 = tail call zeroext i8 %20(ptr noundef %gameport) #7
  br label %gameport_read.exit115

if.else.i113:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %io.i110 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io.i110, align 4
  %and.i111 = and i32 %22, 1048575
  %add.i112 = or i32 %and.i111, -18874368
  %23 = inttoptr i32 %add.i112 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %gameport_read.exit115

gameport_read.exit115:                            ; preds = %if.else.i113, %if.then.i109
  %retval.0.i114 = phi i8 [ %call.i108, %if.then.i109 ], [ %24, %if.else.i113 ]
  %25 = and i8 %v.0122, 64
  %26 = xor i8 %25, 64
  %and23123 = and i8 %26, %retval.0.i114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and23123)
  %tobool24.not = icmp eq i8 %and23123, 0
  br i1 %tobool24.not, label %gameport_read.exit115.if.end44_crit_edge, label %if.then25

gameport_read.exit115.if.end44_crit_edge:         ; preds = %gameport_read.exit115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then25:                                        ; preds = %gameport_read.exit115
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = zext i8 %retval.0.i114 to i32
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data, align 4
  %shl = shl i32 %28, 1
  %29 = lshr i32 %conv21, 4
  %and28 = and i32 %29, 1
  %or = or i32 %shl, %and28
  store i32 %or, ptr %data, align 4
  %30 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx1, align 4
  %shl31 = shl i32 %31, 1
  %32 = lshr i32 %conv21, 5
  %and34 = and i32 %32, 1
  %or35 = or i32 %shl31, %and34
  store i32 %or35, ptr %arrayidx1, align 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %shl38 = shl i32 %34, 1
  %35 = lshr i32 %conv21, 7
  %or42 = or i32 %shl38, %35
  store i32 %or42, ptr %arrayidx, align 4
  %inc = add nsw i32 %i.0120, 1
  br label %if.end44

if.end44:                                         ; preds = %if.then25, %gameport_read.exit115.if.end44_crit_edge
  %i.1 = phi i32 [ %inc, %if.then25 ], [ %i.0120, %gameport_read.exit115.if.end44_crit_edge ]
  %t.1 = phi i32 [ %div.i99, %if.then25 ], [ %dec, %gameport_read.exit115.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.1)
  %cmp16.not = icmp ne i32 %t.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %length)
  %cmp18 = icmp slt i32 %i.1, %length
  %or.cond = select i1 %cmp16.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.end44.while.body_crit_edge, label %if.end44.do.body45_crit_edge

if.end44.do.body45_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body45

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body45:                                        ; preds = %if.end44.do.body45_crit_edge, %gameport_read.exit.do.body45_crit_edge
  %i.0.lcssa = phi i32 [ 0, %gameport_read.exit.do.body45_crit_edge ], [ %i.1, %if.end44.do.body45_crit_edge ]
  br i1 %tobool.not, label %if.then54, label %do.body45.do.body56_crit_edge

do.body45.do.body56_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

if.then54:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body56

do.body56:                                        ; preds = %if.then54, %do.body45.do.body56_crit_edge
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !52
  %and.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool64.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool64.not, label %if.then68, label %do.body56.do.end71_crit_edge, !prof !53

do.body56.do.end71_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %do.body56.do.end71_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #7, !srcloc !54
  ret i32 %i.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @interact_poll(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  %data = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.interact, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %data, align 4, !annotation !46
  %5 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !46
  %7 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !46
  %reads = getelementptr inbounds %struct.interact, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reads, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %reads, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %length = getelementptr inbounds %struct.interact, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %length, align 1
  %conv = zext i8 %14 to i32
  %call3 = call fastcc i32 @interact_read_packet(ptr noundef %12, i32 noundef %conv, ptr noundef nonnull %data)
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %length, align 1
  %conv5 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %conv5)
  %cmp = icmp slt i32 %call3, %conv5
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %sub = sub nsw i32 32, %conv5
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  %shl = shl i32 %18, %sub
  store i32 %shl, ptr %data, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %shl.1 = shl i32 %20, %sub
  store i32 %shl.1, ptr %5, align 4
  %type = getelementptr inbounds %struct.interact, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %22, label %for.cond.preheader.if.end_crit_edge [
    i8 0, label %for.body17.preheader
    i8 1, label %for.cond73.preheader
  ]

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bads = getelementptr inbounds %struct.interact, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %bads to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bads, align 4
  %inc7 = add i32 %25, 1
  store i32 %inc7, ptr %bads, align 4
  br label %if.end

for.body17.preheader:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %26 = load i16, ptr @interact_abs_hhfx, align 2
  %conv19 = sext i16 %26 to i32
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data, align 4
  %and23 = and i32 %28, 255
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv19, i32 noundef %and23) #7
  %29 = load i16, ptr getelementptr inbounds ([7 x i16], ptr @interact_abs_hhfx, i32 0, i32 1), align 2
  %conv19.1 = sext i16 %29 to i32
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %5, align 4
  %and23.1 = and i32 %31, 255
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv19.1, i32 noundef %and23.1) #7
  %32 = load i16, ptr getelementptr inbounds ([7 x i16], ptr @interact_abs_hhfx, i32 0, i32 2), align 2
  %conv19.2 = sext i16 %32 to i32
  %shr22.2 = lshr i32 %28, 8
  %and23.2 = and i32 %shr22.2, 255
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv19.2, i32 noundef %and23.2) #7
  %33 = load i16, ptr getelementptr inbounds ([7 x i16], ptr @interact_abs_hhfx, i32 0, i32 3), align 2
  %conv19.3 = sext i16 %33 to i32
  %shr22.3 = lshr i32 %31, 8
  %and23.3 = and i32 %shr22.3, 255
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv19.3, i32 noundef %and23.3) #7
  %shr34 = lshr i32 %31, 17
  %and35 = and i32 %shr34, 1
  %34 = shl i32 %31, 15
  %35 = ashr i32 %34, 31
  %sub41 = add nsw i32 %35, %and35
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 17, i32 noundef %sub41) #7
  %shr34.1 = lshr i32 %31, 19
  %and35.1 = and i32 %shr34.1, 1
  %36 = shl i32 %31, 13
  %37 = ashr i32 %36, 31
  %sub41.1 = add nsw i32 %37, %and35.1
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 16, i32 noundef %sub41.1) #7
  %38 = load i16, ptr @interact_btn_hhfx, align 2
  %conv50 = sext i16 %38 to i32
  %39 = lshr i32 %28, 16
  %.lobit168 = and i32 %39, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv50, i32 noundef %.lobit168) #7
  %40 = load i16, ptr getelementptr inbounds ([13 x i16], ptr @interact_btn_hhfx, i32 0, i32 1), align 2
  %conv50.1 = sext i16 %40 to i32
  %41 = lshr i32 %28, 17
  %.lobit169 = and i32 %41, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv50.1, i32 noundef %.lobit169) #7
  %42 = load i16, ptr getelementptr inbounds ([13 x i16], ptr @interact_btn_hhfx, i32 0, i32 2), align 2
  %conv50.2 = sext i16 %42 to i32
  %43 = lshr i32 %28, 18
  %.lobit170 = and i32 %43, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv50.2, i32 noundef %.lobit170) #7
  %44 = load i16, ptr getelementptr inbounds ([13 x i16], ptr @interact_btn_hhfx, i32 0, i32 3), align 2
  %conv50.3 = sext i16 %44 to i32
  %45 = lshr i32 %28, 19
  %.lobit171 = and i32 %45, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv50.3, i32 noundef %.lobit171) #7
  %46 = load i16, ptr getelementptr inbounds ([13 x i16], ptr @interact_btn_hhfx, i32 0, i32 4), align 2
  %conv50.4 = sext i16 %46 to i32
  %47 = lshr i32 %28, 20
  %.lobit172 = and i32 %47, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv50.4, i32 noundef %.lobit172) #7
  %48 = load i16, ptr getelementptr inbounds ([13 x i16], ptr @interact_btn_hhfx, i32 0, i32 5), align 2
  %conv50.5 = sext i16 %48 to i32
  %49 = lshr i32 %28, 21
  %.lobit173 = and i32 %49, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv50.5, i32 noundef %.lobit173) #7
  %50 = load i16, ptr getelementptr inbounds ([13 x i16], ptr @interact_btn_hhfx, i32 0, i32 6), align 2
  %conv50.6 = sext i16 %50 to i32
  %51 = lshr i32 %28, 22
  %.lobit174 = and i32 %51, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv50.6, i32 noundef %.lobit174) #7
  %52 = load i16, ptr getelementptr inbounds ([13 x i16], ptr @interact_btn_hhfx, i32 0, i32 7), align 2
  %conv50.7 = sext i16 %52 to i32
  %53 = lshr i32 %28, 23
  %.lobit175 = and i32 %53, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv50.7, i32 noundef %.lobit175) #7
  %54 = load i16, ptr getelementptr inbounds ([13 x i16], ptr @interact_btn_hhfx, i32 0, i32 8), align 2
  %conv64 = sext i16 %54 to i32
  %55 = lshr i32 %31, 20
  %.lobit176 = and i32 %55, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv64, i32 noundef %.lobit176) #7
  %56 = load i16, ptr getelementptr inbounds ([13 x i16], ptr @interact_btn_hhfx, i32 0, i32 9), align 2
  %conv64.1 = sext i16 %56 to i32
  %57 = lshr i32 %31, 21
  %.lobit177 = and i32 %57, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv64.1, i32 noundef %.lobit177) #7
  %58 = load i16, ptr getelementptr inbounds ([13 x i16], ptr @interact_btn_hhfx, i32 0, i32 10), align 2
  %conv64.2 = sext i16 %58 to i32
  %59 = lshr i32 %31, 22
  %.lobit178 = and i32 %59, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv64.2, i32 noundef %.lobit178) #7
  %60 = load i16, ptr getelementptr inbounds ([13 x i16], ptr @interact_btn_hhfx, i32 0, i32 11), align 2
  %conv64.3 = sext i16 %60 to i32
  %61 = lshr i32 %31, 23
  %.lobit179 = and i32 %61, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv64.3, i32 noundef %.lobit179) #7
  br label %if.end

for.cond73.preheader:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data, align 4
  %64 = load i16, ptr @interact_abs_pp8d, align 2
  %conv78 = sext i16 %64 to i32
  %shr82 = lshr i32 %63, 20
  %and83 = and i32 %shr82, 1
  %65 = shl i32 %63, 10
  %66 = ashr i32 %65, 31
  %sub89 = add nsw i32 %66, %and83
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv78, i32 noundef %sub89) #7
  %67 = load i16, ptr getelementptr inbounds ([3 x i16], ptr @interact_abs_pp8d, i32 0, i32 1), align 2
  %conv78.1 = sext i16 %67 to i32
  %shr82.1 = lshr i32 %63, 22
  %and83.1 = and i32 %shr82.1, 1
  %68 = shl i32 %63, 8
  %69 = ashr i32 %68, 31
  %sub89.1 = add nsw i32 %69, %and83.1
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv78.1, i32 noundef %sub89.1) #7
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %5, align 4
  %72 = load i16, ptr @interact_btn_pp8d, align 2
  %conv98 = sext i16 %72 to i32
  %73 = lshr i32 %71, 16
  %.lobit = and i32 %73, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv98, i32 noundef %.lobit) #7
  %74 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @interact_btn_pp8d, i32 0, i32 1), align 2
  %conv98.1 = sext i16 %74 to i32
  %75 = lshr i32 %71, 17
  %.lobit161 = and i32 %75, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv98.1, i32 noundef %.lobit161) #7
  %76 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @interact_btn_pp8d, i32 0, i32 2), align 2
  %conv98.2 = sext i16 %76 to i32
  %77 = lshr i32 %71, 18
  %.lobit162 = and i32 %77, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv98.2, i32 noundef %.lobit162) #7
  %78 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @interact_btn_pp8d, i32 0, i32 3), align 2
  %conv98.3 = sext i16 %78 to i32
  %79 = lshr i32 %71, 19
  %.lobit163 = and i32 %79, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv98.3, i32 noundef %.lobit163) #7
  %80 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @interact_btn_pp8d, i32 0, i32 4), align 2
  %conv98.4 = sext i16 %80 to i32
  %81 = lshr i32 %71, 20
  %.lobit164 = and i32 %81, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv98.4, i32 noundef %.lobit164) #7
  %82 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @interact_btn_pp8d, i32 0, i32 5), align 2
  %conv98.5 = sext i16 %82 to i32
  %83 = lshr i32 %71, 21
  %.lobit165 = and i32 %83, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv98.5, i32 noundef %.lobit165) #7
  %84 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @interact_btn_pp8d, i32 0, i32 6), align 2
  %conv98.6 = sext i16 %84 to i32
  %85 = lshr i32 %71, 22
  %.lobit166 = and i32 %85, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv98.6, i32 noundef %.lobit166) #7
  %86 = load i16, ptr getelementptr inbounds ([9 x i16], ptr @interact_btn_pp8d, i32 0, i32 7), align 2
  %conv98.7 = sext i16 %86 to i32
  %87 = lshr i32 %71, 23
  %.lobit167 = and i32 %87, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv98.7, i32 noundef %.lobit167) #7
  br label %if.end

if.end:                                           ; preds = %for.cond73.preheader, %for.body17.preheader, %if.then, %for.cond.preheader.if.end_crit_edge
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #7
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interact_open(ptr nocapture noundef readonly %dev) #2 align 64 {
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
define internal void @interact_close(ptr nocapture noundef readonly %dev) #2 align 64 {
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
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_stop_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/interact.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/interact.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/interact.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_interact__227_297_interact_drv_init6, !8, !"__initcall__kmod_interact__227_297_interact_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/interact.c", i32 297, i32 1}
!9 = !{ptr @__exitcall_interact_drv_exit, !8, !"__exitcall_interact_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/interact.c", i32 292, i32 17}
!13 = !{ptr @interact_drv, !14, !"interact_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/interact.c", i32 288, i32 31}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/interact.c", i32 226, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @interact_connect._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @interact_connect._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/interact.c", i32 235, i32 51}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/interact.c", i32 67, i32 50}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/interact.c", i32 68, i32 50}
!27 = !{ptr @interact_type, !28, !"interact_type", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/interact.c", i32 66, i32 29}
!29 = !{ptr @interact_abs_hhfx, !30, !"interact_abs_hhfx", i1 false, i1 false}
!30 = !{!"../drivers/input/joystick/interact.c", i32 47, i32 14}
!31 = !{ptr @interact_btn_hhfx, !32, !"interact_btn_hhfx", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/interact.c", i32 52, i32 14}
!33 = !{ptr @interact_abs_pp8d, !34, !"interact_abs_pp8d", i1 false, i1 false}
!34 = !{!"../drivers/input/joystick/interact.c", i32 49, i32 14}
!35 = !{ptr @interact_btn_pp8d, !36, !"interact_btn_pp8d", i1 false, i1 false}
!36 = !{!"../drivers/input/joystick/interact.c", i32 54, i32 14}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
!47 = !{i64 607353, i64 607414}
!48 = !{i64 2152735571}
!49 = !{i64 4945824}
!50 = !{i64 4946219}
!51 = !{i64 2152736146}
!52 = !{i64 610085}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 610370}
