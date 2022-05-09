; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/guillemot.c_pt.bc'
source_filename = "../drivers/input/joystick/guillemot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.guillemot_type = type { i8, ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.69 = type { i32, i32 }
%struct.guillemot = type { ptr, ptr, i32, i32, ptr, i8, [32 x i8] }
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

@__UNIQUE_ID_author223 = internal constant [49 x i8] c"guillemot.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [56 x i8] c"guillemot.description=Guillemot Digital joystick driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [48 x i8] c"guillemot.file=drivers/input/joystick/guillemot\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [22 x i8] c"guillemot.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_guillemot__227_267_guillemot_drv_init6 = internal global ptr @guillemot_drv_init, section ".initcall6.init", align 4
@guillemot_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str.1, ptr @guillemot_connect, ptr null, ptr @guillemot_disconnect, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_guillemot_drv_exit = internal global ptr @guillemot_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"guillemot\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Guillemot Digital joystick driver\00", [62 x i8] zeroinitializer }, align 32
@guillemot_type = internal global { [2 x %struct.guillemot_type], [56 x i8] } { [2 x %struct.guillemot_type] [%struct.guillemot_type { i8 0, ptr @guillemot_abs_pad, ptr @guillemot_btn_pad, i32 1, ptr @.str.6 }, %struct.guillemot_type zeroinitializer], [56 x i8] zeroinitializer }, align 32
@guillemot_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014guillemot.c: Unknown joystick on %s. [ %02x%02x:%04x, ver %d.%02d ]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"guillemot_connect\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/joystick/guillemot.c\00", [61 x i8] zeroinitializer }, align 32
@guillemot_connect._entry_ptr = internal global ptr @guillemot_connect._entry, section ".printk_index", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@guillemot_abs_pad = internal global { [5 x i16], [22 x i8] } { [5 x i16] [i16 0, i16 1, i16 6, i16 7, i16 -1], [22 x i8] zeroinitializer }, align 32
@guillemot_btn_pad = internal global { [11 x i16], [42 x i8] } { [11 x i16] [i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 310, i16 311, i16 316, i16 314, i16 -1], [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Guillemot Pad\00", [18 x i8] zeroinitializer }, align 32
@guillemot_hat_to_axis = internal constant { <{ [8 x %struct.anon.69], [8 x %struct.anon.69] }>, [32 x i8] } { <{ [8 x %struct.anon.69], [8 x %struct.anon.69] }> <{ [8 x %struct.anon.69] [%struct.anon.69 { i32 0, i32 -1 }, %struct.anon.69 { i32 1, i32 -1 }, %struct.anon.69 { i32 1, i32 0 }, %struct.anon.69 { i32 1, i32 1 }, %struct.anon.69 { i32 0, i32 1 }, %struct.anon.69 { i32 -1, i32 1 }, %struct.anon.69 { i32 -1, i32 0 }, %struct.anon.69 { i32 -1, i32 -1 }], [8 x %struct.anon.69] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@guillemot_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016guillemot.c: Failed %d reads out of %d on %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"guillemot_disconnect\00", [43 x i8] zeroinitializer }, align 32
@guillemot_disconnect._entry_ptr = internal global ptr @guillemot_disconnect._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"guillemot_drv\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 258, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 267, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 262, i32 17 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"guillemot_type\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 60, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 197, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 206, i32 53 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"guillemot_abs_pad\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 31, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"guillemot_btn_pad\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 34, i32 14 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 61, i32 51 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"guillemot_hat_to_axis\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 40, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [38 x i8] c"../drivers/input/joystick/guillemot.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 252, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_guillemot_drv_exit, ptr @__initcall__kmod_guillemot__227_267_guillemot_drv_init6, ptr @guillemot_connect._entry, ptr @guillemot_connect._entry_ptr, ptr @guillemot_disconnect._entry, ptr @guillemot_disconnect._entry_ptr, ptr @guillemot_drv_exit, ptr @guillemot_drv, ptr @.str, ptr @.str.1, ptr @guillemot_type, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @guillemot_abs_pad, ptr @guillemot_btn_pad, ptr @.str.6, ptr @guillemot_hat_to_axis, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @guillemot_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @guillemot_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @guillemot_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @guillemot_abs_pad to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @guillemot_btn_pad to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @guillemot_hat_to_axis to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @guillemot_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @guillemot_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gameport_register_driver(ptr noundef nonnull @guillemot_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @guillemot_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gameport_unregister_driver(ptr noundef nonnull @guillemot_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @guillemot_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %data = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %data) #7
  %0 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 11
  %1 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 12
  %2 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 13
  %3 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 14
  %4 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 15
  %5 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 16
  %6 = call ptr @memset(ptr %data, i32 255, i32 17)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 56) #10
  %call1 = tail call ptr @input_allocate_device() #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %gameport, ptr %call7.i.i, align 8
  %dev = getelementptr inbounds %struct.guillemot, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call4 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @guillemot_read_packet(ptr noundef %gameport, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 136
  br i1 %cmp.not, label %lor.lhs.false9, label %if.end7.fail2_crit_edge

if.end7.fail2_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

lor.lhs.false9:                                   ; preds = %if.end7
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %12)
  %cmp10.not = icmp eq i8 %12, 85
  br i1 %cmp10.not, label %lor.lhs.false12, label %lor.lhs.false9.fail2_crit_edge

lor.lhs.false9.fail2_crit_edge:                   ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %14)
  %cmp15.not = icmp eq i8 %14, -86
  br i1 %cmp15.not, label %for.cond.preheader, label %lor.lhs.false12.fail2_crit_edge

lor.lhs.false12.fail2_crit_edge:                  ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

for.cond.preheader:                               ; preds = %lor.lhs.false12
  %15 = load ptr, ptr getelementptr inbounds ([2 x %struct.guillemot_type], ptr @guillemot_type, i32 0, i32 0, i32 4), align 4
  %tobool20.not167 = icmp eq ptr %15, null
  br i1 %tobool20.not167, label %for.cond.preheader.do.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %0, align 1
  %18 = load i8, ptr @guillemot_type, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %17)
  %cmp25189 = icmp eq i8 %18, %17
  br i1 %cmp25189, label %for.body.lr.ph.if.end45_crit_edge, label %for.body.lr.ph.for.inc_crit_edge

for.body.lr.ph.for.inc_crit_edge:                 ; preds = %for.body.lr.ph
  br label %for.inc

for.body.lr.ph.if.end45_crit_edge:                ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

for.body:                                         ; preds = %for.inc
  %arrayidx19 = getelementptr [2 x %struct.guillemot_type], ptr @guillemot_type, i32 0, i32 %inc
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx19, align 4
  %cmp25 = icmp eq i8 %20, %17
  br i1 %cmp25, label %for.body.if.end45_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.lr.ph.for.inc_crit_edge
  %i.0168190 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %for.body.lr.ph.for.inc_crit_edge ]
  %inc = add i32 %i.0168190, 1
  %name = getelementptr [2 x %struct.guillemot_type], ptr @guillemot_type, i32 0, i32 %inc, i32 4
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %tobool20.not = icmp eq ptr %22, null
  br i1 %tobool20.not, label %for.inc.do.end_crit_edge, label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %phys = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 1
  %conv35 = zext i8 %24 to i32
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %2, align 1
  %conv37 = zext i8 %26 to i32
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %0, align 1
  %conv39 = zext i8 %28 to i32
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 1
  %conv41 = zext i8 %30 to i32
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %4, align 1
  %conv43 = zext i8 %32 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %phys, i32 noundef %conv35, i32 noundef %conv37, i32 noundef %conv39, i32 noundef %conv41, i32 noundef %conv43) #11
  br label %fail2

if.end45:                                         ; preds = %for.body.if.end45_crit_edge, %for.body.lr.ph.if.end45_crit_edge
  %name170.lcssa = phi ptr [ getelementptr inbounds ([2 x %struct.guillemot_type], ptr @guillemot_type, i32 0, i32 0, i32 4), %for.body.lr.ph.if.end45_crit_edge ], [ %name, %for.body.if.end45_crit_edge ]
  %arrayidx19169.lcssa = phi ptr [ @guillemot_type, %for.body.lr.ph.if.end45_crit_edge ], [ %arrayidx19, %for.body.if.end45_crit_edge ]
  %i.0168.lcssa = phi i32 [ 0, %for.body.lr.ph.if.end45_crit_edge ], [ %inc, %for.body.if.end45_crit_edge ]
  %poll_handler.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %33 = ptrtoint ptr %poll_handler.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @guillemot_poll, ptr %poll_handler.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %34 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 20, ptr %poll_interval.i, align 8
  %phys46 = getelementptr inbounds %struct.guillemot, ptr %call7.i.i, i32 0, i32 6
  %phys48 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %call50 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys46, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %phys48)
  %add.ptr = getelementptr %struct.guillemot_type, ptr @guillemot_type, i32 %i.0168.lcssa
  %type = getelementptr inbounds %struct.guillemot, ptr %call7.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr, ptr %type, align 8
  %36 = ptrtoint ptr %name170.lcssa to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name170.lcssa, align 4
  %38 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %call1, align 8
  %phys56 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %39 = ptrtoint ptr %phys56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %phys46, ptr %phys56, align 4
  %id57 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %40 = ptrtoint ptr %id57 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 20, ptr %id57, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 10, ptr %vendor, align 2
  %42 = ptrtoint ptr %arrayidx19169.lcssa to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx19169.lcssa, align 4
  %conv61 = zext i8 %43 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv61, ptr %product, align 4
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %3, align 1
  %conv64 = zext i8 %46 to i16
  %shl = shl nuw i16 %conv64, 8
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %4, align 1
  %conv66 = zext i8 %48 to i16
  %or = or i16 %shl, %conv66
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %or, ptr %version, align 2
  %dev69 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %50 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %dev69, ptr %parent, align 8
  %driver_data.i.i160 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 8
  %51 = ptrtoint ptr %driver_data.i.i160 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %driver_data.i.i160, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 31
  %52 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @guillemot_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 32
  %53 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @guillemot_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %54 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 10, ptr %evbit, align 8
  %55 = load ptr, ptr %type, align 8
  %abs171 = getelementptr inbounds %struct.guillemot_type, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %abs171 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %abs171, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %57, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %59)
  %cmp76172 = icmp sgt i16 %59, -1
  br i1 %cmp76172, label %if.end45.for.body78_crit_edge, label %if.end45.for.end81_crit_edge

if.end45.for.end81_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end81

if.end45.for.body78_crit_edge:                    ; preds = %if.end45
  br label %for.body78

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %if.end45.for.body78_crit_edge
  %60 = phi i16 [ %66, %for.body78.for.body78_crit_edge ], [ %59, %if.end45.for.body78_crit_edge ]
  %i.1173 = phi i32 [ %inc80, %for.body78.for.body78_crit_edge ], [ 0, %if.end45.for.body78_crit_edge ]
  %conv75162 = zext i16 %60 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef %conv75162, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #7
  %inc80 = add i32 %i.1173, 1
  %61 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %type, align 8
  %abs = getelementptr inbounds %struct.guillemot_type, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %abs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %abs, align 4
  %arrayidx74 = getelementptr i16, ptr %64, i32 %inc80
  %65 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx74, align 2
  %cmp76 = icmp sgt i16 %66, -1
  br i1 %cmp76, label %for.body78.for.body78_crit_edge, label %for.body78.for.end81_crit_edge

for.body78.for.end81_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end81

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body78

for.end81:                                        ; preds = %for.body78.for.end81_crit_edge, %if.end45.for.end81_crit_edge
  %.lcssa = phi ptr [ %55, %if.end45.for.end81_crit_edge ], [ %62, %for.body78.for.end81_crit_edge ]
  %hat = getelementptr inbounds %struct.guillemot_type, ptr %.lcssa, i32 0, i32 3
  %67 = ptrtoint ptr %hat to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool83.not = icmp eq i32 %68, 0
  br i1 %tobool83.not, label %for.end81.if.end85_crit_edge, label %if.then84

for.end81.if.end85_crit_edge:                     ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then84:                                        ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 16, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 17, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %for.end81.if.end85_crit_edge
  %69 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %type, align 8
  %btn174 = getelementptr inbounds %struct.guillemot_type, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %btn174 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %btn174, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %72, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %74)
  %cmp90175 = icmp sgt i16 %74, -1
  br i1 %cmp90175, label %for.body92.lr.ph, label %if.end85.for.end96_crit_edge

if.end85.for.end96_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end96

for.body92.lr.ph:                                 ; preds = %if.end85
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  br label %for.body92

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %for.body92.lr.ph
  %75 = phi i16 [ %74, %for.body92.lr.ph ], [ %81, %for.body92.for.body92_crit_edge ]
  %i.2176 = phi i32 [ 0, %for.body92.lr.ph ], [ %inc95, %for.body92.for.body92_crit_edge ]
  %conv89163 = zext i16 %75 to i32
  tail call void @_set_bit(i32 noundef %conv89163, ptr noundef %keybit) #7
  %inc95 = add i32 %i.2176, 1
  %76 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %type, align 8
  %btn = getelementptr inbounds %struct.guillemot_type, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %btn to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %btn, align 4
  %arrayidx88 = getelementptr i16, ptr %79, i32 %inc95
  %80 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx88, align 2
  %cmp90 = icmp sgt i16 %81, -1
  br i1 %cmp90, label %for.body92.for.body92_crit_edge, label %for.body92.for.end96_crit_edge

for.body92.for.end96_crit_edge:                   ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end96

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body92

for.end96:                                        ; preds = %for.body92.for.end96_crit_edge, %if.end85.for.end96_crit_edge
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %call98 = tail call i32 @input_register_device(ptr noundef %83) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %for.end96.cleanup_crit_edge, label %for.end96.fail2_crit_edge

for.end96.fail2_crit_edge:                        ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

for.end96.cleanup_crit_edge:                      ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail2:                                            ; preds = %for.end96.fail2_crit_edge, %do.end, %lor.lhs.false12.fail2_crit_edge, %lor.lhs.false9.fail2_crit_edge, %if.end7.fail2_crit_edge
  %err.0 = phi i32 [ %call98, %for.end96.fail2_crit_edge ], [ -19, %do.end ], [ -19, %lor.lhs.false12.fail2_crit_edge ], [ -19, %lor.lhs.false9.fail2_crit_edge ], [ -19, %if.end7.fail2_crit_edge ]
  tail call void @gameport_close(ptr noundef %gameport) #7
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %call4, %if.end.fail1_crit_edge ], [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  %driver_data.i.i161 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %84 = ptrtoint ptr %driver_data.i.i161 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %driver_data.i.i161, align 4
  tail call void @input_free_device(ptr noundef %call1) #7
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail1, %for.end96.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %for.end96.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @guillemot_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reads = getelementptr inbounds %struct.guillemot, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reads, align 4
  %bads = getelementptr inbounds %struct.guillemot, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bads, align 4
  %phys = getelementptr inbounds %struct.guillemot, ptr %1, i32 0, i32 6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %3, i32 noundef %5, ptr noundef %phys) #11
  %dev = getelementptr inbounds %struct.guillemot, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @input_unregister_device(ptr noundef %7) #7
  tail call void @gameport_close(ptr noundef %gameport) #7
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
define internal fastcc i32 @guillemot_read_packet(ptr noundef %gameport, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %data, i32 0, i32 17)
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %1 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %2, 600
  %div.i = sdiv i32 %mul.i, 1000
  %mul.i83 = mul i32 %2, 60
  %div.i84 = sdiv i32 %mul.i83, 1000
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !47
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end13

do.end13:                                         ; preds = %if.then, %entry.do.end13_crit_edge
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %4 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %gameport) #7
  br label %gameport_trigger.exit

do.body.i:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %6 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io.i, align 4
  %and.i85 = and i32 %7, 1048575
  %add.i = or i32 %and.i85, -18874368
  %8 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -1) #7, !srcloc !49
  br label %gameport_trigger.exit

gameport_trigger.exit:                            ; preds = %do.body.i, %if.then.i
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %tobool.not.i86 = icmp eq ptr %10, null
  br i1 %tobool.not.i86, label %if.else.i, label %if.then.i87

if.then.i87:                                      ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i8 %10(ptr noundef %gameport) #7
  br label %gameport_read.exit

if.else.i:                                        ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #9
  %io.i88 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %11 = ptrtoint ptr %io.i88 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io.i88, align 4
  %and.i89 = and i32 %12, 1048575
  %add.i90 = or i32 %and.i89, -18874368
  %13 = inttoptr i32 %add.i90 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i87
  %retval.0.i = phi i8 [ %call.i, %if.then.i87 ], [ %14, %if.else.i ]
  %mul.i.off = add i32 %mul.i, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %mul.i.off)
  %15 = icmp ult i32 %mul.i.off, 1999
  br i1 %15, label %gameport_read.exit.do.body34_crit_edge, label %while.body.lr.ph

gameport_read.exit.do.body34_crit_edge:           ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

while.body.lr.ph:                                 ; preds = %gameport_read.exit
  %io.i95 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %while.body.lr.ph
  %v.0106 = phi i8 [ %retval.0.i, %while.body.lr.ph ], [ %retval.0.i99, %if.end33.while.body_crit_edge ]
  %t.0105 = phi i32 [ %div.i, %while.body.lr.ph ], [ %t.1, %if.end33.while.body_crit_edge ]
  %i.1104 = phi i32 [ 0, %while.body.lr.ph ], [ %i.2, %if.end33.while.body_crit_edge ]
  %dec = add i32 %t.0105, -1
  %16 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i, align 4
  %tobool.not.i92 = icmp eq ptr %17, null
  br i1 %tobool.not.i92, label %if.else.i98, label %if.then.i94

if.then.i94:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i93 = tail call zeroext i8 %17(ptr noundef %gameport) #7
  br label %gameport_read.exit100

if.else.i98:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io.i95, align 4
  %and.i96 = and i32 %19, 1048575
  %add.i97 = or i32 %and.i96, -18874368
  %20 = inttoptr i32 %add.i97 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %gameport_read.exit100

gameport_read.exit100:                            ; preds = %if.else.i98, %if.then.i94
  %retval.0.i99 = phi i8 [ %call.i93, %if.then.i94 ], [ %21, %if.else.i98 ]
  %22 = and i8 %v.0106, 16
  %23 = xor i8 %22, 16
  %and22107 = and i8 %23, %retval.0.i99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and22107)
  %tobool23.not = icmp eq i8 %and22107, 0
  br i1 %tobool23.not, label %gameport_read.exit100.if.end33_crit_edge, label %if.then24

gameport_read.exit100.if.end33_crit_edge:         ; preds = %gameport_read.exit100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then24:                                        ; preds = %gameport_read.exit100
  call void @__sanitizer_cov_trace_pc() #9
  %24 = lshr i8 %retval.0.i99, 5
  %25 = and i8 %24, 1
  %and26 = zext i8 %25 to i32
  %and27 = and i32 %i.1104, 7
  %shl = shl nuw nsw i32 %and26, %and27
  %shr28 = ashr i32 %i.1104, 3
  %arrayidx29 = getelementptr i8, ptr %data, i32 %shr28
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx29, align 1
  %28 = trunc i32 %shl to i8
  %conv31 = or i8 %27, %28
  store i8 %conv31, ptr %arrayidx29, align 1
  %inc32 = add nsw i32 %i.1104, 1
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %gameport_read.exit100.if.end33_crit_edge
  %i.2 = phi i32 [ %inc32, %if.then24 ], [ %i.1104, %gameport_read.exit100.if.end33_crit_edge ]
  %t.1 = phi i32 [ %div.i84, %if.then24 ], [ %dec, %gameport_read.exit100.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.1)
  %cmp15.not = icmp ne i32 %t.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %i.2)
  %cmp17 = icmp slt i32 %i.2, 136
  %or.cond = select i1 %cmp15.not, i1 %cmp17, i1 false
  br i1 %or.cond, label %if.end33.while.body_crit_edge, label %if.end33.do.body34_crit_edge

if.end33.do.body34_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body34:                                        ; preds = %if.end33.do.body34_crit_edge, %gameport_read.exit.do.body34_crit_edge
  %i.1.lcssa = phi i32 [ 0, %gameport_read.exit.do.body34_crit_edge ], [ %i.2, %if.end33.do.body34_crit_edge ]
  br i1 %tobool.not, label %if.then43, label %do.body34.do.body45_crit_edge

do.body34.do.body45_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body45

if.then43:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body45

do.body45:                                        ; preds = %if.then43, %do.body34.do.body45_crit_edge
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !52
  %and.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool53.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool53.not, label %if.then57, label %do.body45.do.end60_crit_edge, !prof !53

do.body45.do.end60_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body45.do.end60_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #7, !srcloc !54
  ret i32 %i.1.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @guillemot_poll(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  %data = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.guillemot, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %data) #7
  %4 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 4
  %5 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 5
  %6 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 6
  %7 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 7
  %8 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 8
  %9 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 9
  %10 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 10
  %11 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 16
  %reads = getelementptr inbounds %struct.guillemot, ptr %1, i32 0, i32 3
  %12 = call ptr @memset(ptr %data, i32 255, i32 17)
  %13 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reads, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %reads, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call3 = call fastcc i32 @guillemot_read_packet(ptr noundef %16, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 136
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %18)
  %cmp4.not = icmp eq i8 %18, 85
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %20)
  %cmp9.not = icmp eq i8 %20, -86
  br i1 %cmp9.not, label %for.cond.preheader, label %lor.lhs.false6.if.then_crit_edge

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.preheader:                               ; preds = %lor.lhs.false6
  %type = getelementptr inbounds %struct.guillemot, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type, align 4
  %abs = getelementptr inbounds %struct.guillemot_type, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %abs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %abs, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %26)
  %cmp16 = icmp sgt i16 %26, -1
  br i1 %cmp16, label %for.body, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then:                                          ; preds = %lor.lhs.false6.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %bads = getelementptr inbounds %struct.guillemot, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %bads to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bads, align 4
  %inc11 = add i32 %28, 1
  store i32 %inc11, ptr %bads, align 4
  br label %if.end58

for.body:                                         ; preds = %for.cond.preheader
  %conv1581 = zext i16 %26 to i32
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %5, align 1
  %conv23 = zext i8 %30 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv1581, i32 noundef %conv23) #7
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type, align 4
  %abs.1 = getelementptr inbounds %struct.guillemot_type, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %abs.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %abs.1, align 4
  %arrayidx14.1 = getelementptr i16, ptr %34, i32 1
  %35 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx14.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %cmp16.1 = icmp sgt i16 %36, -1
  br i1 %cmp16.1, label %for.body.1, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %conv1581.1 = zext i16 %36 to i32
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %6, align 1
  %conv23.1 = zext i8 %38 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv1581.1, i32 noundef %conv23.1) #7
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %type, align 4
  %abs.2 = getelementptr inbounds %struct.guillemot_type, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %abs.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %abs.2, align 4
  %arrayidx14.2 = getelementptr i16, ptr %42, i32 2
  %43 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx14.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %44)
  %cmp16.2 = icmp sgt i16 %44, -1
  br i1 %cmp16.2, label %for.body.2, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %conv1581.2 = zext i16 %44 to i32
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %7, align 1
  %conv23.2 = zext i8 %46 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv1581.2, i32 noundef %conv23.2) #7
  %47 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %type, align 4
  %abs.3 = getelementptr inbounds %struct.guillemot_type, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %abs.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %abs.3, align 4
  %arrayidx14.3 = getelementptr i16, ptr %50, i32 3
  %51 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx14.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %52)
  %cmp16.3 = icmp sgt i16 %52, -1
  br i1 %cmp16.3, label %for.body.3, label %for.body.2.for.end_crit_edge

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %conv1581.3 = zext i16 %52 to i32
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %8, align 1
  %conv23.3 = zext i8 %54 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv1581.3, i32 noundef %conv23.3) #7
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %type, align 4
  %abs.4 = getelementptr inbounds %struct.guillemot_type, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %abs.4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %abs.4, align 4
  %arrayidx14.4 = getelementptr i16, ptr %58, i32 4
  %59 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx14.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %60)
  %cmp16.4 = icmp sgt i16 %60, -1
  br i1 %cmp16.4, label %for.body.4, label %for.body.3.for.end_crit_edge

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %conv1581.4 = zext i16 %60 to i32
  %61 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %9, align 1
  %conv23.4 = zext i8 %62 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv1581.4, i32 noundef %conv23.4) #7
  %63 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %type, align 4
  %abs.5 = getelementptr inbounds %struct.guillemot_type, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %abs.5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %abs.5, align 4
  %arrayidx14.5 = getelementptr i16, ptr %66, i32 5
  %67 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx14.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %68)
  %cmp16.5 = icmp sgt i16 %68, -1
  br i1 %cmp16.5, label %for.body.5, label %for.body.4.for.end_crit_edge

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  %conv1581.5 = zext i16 %68 to i32
  %69 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %10, align 1
  %conv23.5 = zext i8 %70 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %conv1581.5, i32 noundef %conv23.5) #7
  br label %for.end

for.end:                                          ; preds = %for.body.5, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %71 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %type, align 4
  %hat = getelementptr inbounds %struct.guillemot_type, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %hat to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not = icmp eq i32 %74, 0
  br i1 %tobool.not, label %for.end.land.rhs37.preheader_crit_edge, label %if.then26

for.end.land.rhs37.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs37.preheader

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %4, align 1
  %77 = lshr i8 %76, 4
  %78 = zext i8 %77 to i32
  %arrayidx29 = getelementptr [16 x %struct.anon.69], ptr @guillemot_hat_to_axis, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx29, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 16, i32 noundef %80) #7
  %y = getelementptr [16 x %struct.anon.69], ptr @guillemot_hat_to_axis, i32 0, i32 %78, i32 1
  %81 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %y, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 17, i32 noundef %82) #7
  br label %land.rhs37.preheader

land.rhs37.preheader:                             ; preds = %if.then26, %for.end.land.rhs37.preheader_crit_edge
  br label %land.rhs37

land.rhs37:                                       ; preds = %for.body44.land.rhs37_crit_edge, %land.rhs37.preheader
  %i.184 = phi i32 [ %inc56, %for.body44.land.rhs37_crit_edge ], [ 0, %land.rhs37.preheader ]
  %83 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %type, align 4
  %btn = getelementptr inbounds %struct.guillemot_type, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %btn to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %btn, align 4
  %arrayidx39 = getelementptr i16, ptr %86, i32 %i.184
  %87 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx39, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %88)
  %cmp41 = icmp sgt i16 %88, -1
  br i1 %cmp41, label %for.body44, label %land.rhs37.if.end58_crit_edge

land.rhs37.if.end58_crit_edge:                    ; preds = %land.rhs37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

for.body44:                                       ; preds = %land.rhs37
  %conv4082 = zext i16 %88 to i32
  %89 = lshr i32 %i.184, 3
  %add50 = add nuw nsw i32 %89, 2
  %arrayidx51 = getelementptr [17 x i8], ptr %data, i32 0, i32 %add50
  %90 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %91 to i32
  %and = and i32 %i.184, 7
  %92 = lshr i32 %conv52, %and
  %93 = and i32 %92, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv4082, i32 noundef %93) #7
  %inc56 = add nuw nsw i32 %i.184, 1
  %exitcond.not = icmp eq i32 %inc56, 16
  br i1 %exitcond.not, label %for.body44.if.end58_crit_edge, label %for.body44.land.rhs37_crit_edge

for.body44.land.rhs37_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs37

for.body44.if.end58_crit_edge:                    ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.end58:                                         ; preds = %for.body44.if.end58_crit_edge, %land.rhs37.if.end58_crit_edge, %if.then
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %data) #7
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @guillemot_open(ptr nocapture noundef readonly %dev) #2 align 64 {
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
define internal void @guillemot_close(ptr nocapture noundef readonly %dev) #2 align 64 {
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

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/guillemot.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/guillemot.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/guillemot.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_guillemot__227_267_guillemot_drv_init6, !8, !"__initcall__kmod_guillemot__227_267_guillemot_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/guillemot.c", i32 267, i32 1}
!9 = !{ptr @__exitcall_guillemot_drv_exit, !8, !"__exitcall_guillemot_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/guillemot.c", i32 262, i32 17}
!13 = !{ptr @guillemot_drv, !14, !"guillemot_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/guillemot.c", i32 258, i32 31}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/guillemot.c", i32 197, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @guillemot_connect._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @guillemot_connect._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/guillemot.c", i32 206, i32 53}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/guillemot.c", i32 61, i32 51}
!25 = !{ptr @guillemot_type, !26, !"guillemot_type", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/guillemot.c", i32 60, i32 30}
!27 = !{ptr @guillemot_abs_pad, !28, !"guillemot_abs_pad", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/guillemot.c", i32 31, i32 14}
!29 = !{ptr @guillemot_btn_pad, !30, !"guillemot_btn_pad", i1 false, i1 false}
!30 = !{!"../drivers/input/joystick/guillemot.c", i32 34, i32 14}
!31 = !{ptr @guillemot_hat_to_axis, !32, !"guillemot_hat_to_axis", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/guillemot.c", i32 40, i32 3}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/joystick/guillemot.c", i32 252, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @guillemot_disconnect._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @guillemot_disconnect._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 606725, i64 606786}
!48 = !{i64 2152734943}
!49 = !{i64 4945196}
!50 = !{i64 4945591}
!51 = !{i64 2152735518}
!52 = !{i64 609457}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 609742}
