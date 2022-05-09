; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/a3d.c_pt.bc'
source_filename = "../drivers/input/joystick/a3d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.a3d = type { ptr, ptr, ptr, [4 x i32], i32, i32, i32, i32, i32, [32 x i8] }
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
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author223 = internal constant [43 x i8] c"a3d.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [54 x i8] c"a3d.description=FP-Gaming Assassin 3D joystick driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [36 x i8] c"a3d.file=drivers/input/joystick/a3d\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [16 x i8] c"a3d.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_a3d__227_399_a3d_drv_init6 = internal global ptr @a3d_drv_init, section ".initcall6.init", align 4
@a3d_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str.1, ptr @a3d_connect, ptr null, ptr @a3d_disconnect, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_a3d_drv_exit = internal global ptr @a3d_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"a3d\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FP-Gaming Assassin 3D joystick driver\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@a3d_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014a3d.c: Unknown A3D device detected (%s, id=%d), contact <vojtech@ucw.cz>\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a3d_connect\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/joystick/a3d.c\00", [35 x i8] zeroinitializer }, align 32
@a3d_connect._entry_ptr = internal global ptr @a3d_connect._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@a3d_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr null, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [40 x i8] zeroinitializer }, align 32
@a3d_connect._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013a3d: Not enough memory for ADC port\0A\00", [57 x i8] zeroinitializer }, align 32
@a3d_connect._entry_ptr.9 = internal global ptr @a3d_connect._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s/gameport0\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FP-Gaming Assassin 3D\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MadCatz Panther\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OEM Panther\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MadCatz Panther XL\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MadCatz Panther XL w/ rudder\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.16 = private unnamed_addr constant [8 x i8] c"a3d_drv\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 389, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 399, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 394, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 391, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 281, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 290, i32 41 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"a3d_names\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 35, i32 14 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 346, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 355, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 35, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 35, i32 61 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 35, i32 80 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 36, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [32 x i8] c"../drivers/input/joystick/a3d.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 36, i32 26 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_a3d_drv_exit, ptr @__initcall__kmod_a3d__227_399_a3d_drv_init6, ptr @a3d_connect._entry, ptr @a3d_connect._entry.7, ptr @a3d_connect._entry_ptr, ptr @a3d_connect._entry_ptr.9, ptr @a3d_drv_exit, ptr @a3d_drv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @a3d_names, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3d_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3d_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3d_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a3d_connect._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @a3d_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gameport_register_driver(ptr noundef nonnull @a3d_drv, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @a3d_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gameport_unregister_driver(ptr noundef nonnull @a3d_drv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3d_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %data = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %data) #9
  %0 = call ptr @memset(ptr %data, i32 255, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 80) #12
  %call1 = tail call ptr @input_allocate_device() #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.a3d, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %dev, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %gameport, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call4 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @a3d_read_packet(ptr noundef %gameport, i32 noundef 40, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.fail2_crit_edge, label %lor.lhs.false10

if.end7.fail2_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

lor.lhs.false10:                                  ; preds = %if.end7
  %sub.i = add i32 %call8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp16.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp16.i, label %lor.lhs.false10.for.body.i_crit_edge, label %lor.lhs.false10.a3d_csum.exit_crit_edge

lor.lhs.false10.a3d_csum.exit_crit_edge:          ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %a3d_csum.exit

lor.lhs.false10.for.body.i_crit_edge:             ; preds = %lor.lhs.false10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lor.lhs.false10.for.body.i_crit_edge
  %csum.018.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false10.for.body.i_crit_edge ]
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false10.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.017.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %6 to i32
  %add.i = add i32 %csum.018.i, %conv.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i = and i32 %add.i, 63
  br label %a3d_csum.exit

a3d_csum.exit:                                    ; preds = %for.end.loopexit.i, %lor.lhs.false10.a3d_csum.exit_crit_edge
  %csum.0.lcssa.i = phi i32 [ 0, %lor.lhs.false10.a3d_csum.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %arrayidx2.i = getelementptr i8, ptr %data, i32 %sub.i
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 3
  %sub4.i = add i32 %call8, -1
  %arrayidx5.i = getelementptr i8, ptr %data, i32 %sub4.i
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %10 to i32
  %or.i = or i32 %shl.i, %conv6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %csum.0.lcssa.i, i32 %or.i)
  %cmp7.i.not = icmp eq i32 %csum.0.lcssa.i, %or.i
  br i1 %cmp7.i.not, label %if.end15, label %a3d_csum.exit.fail2_crit_edge

a3d_csum.exit.fail2_crit_edge:                    ; preds = %a3d_csum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

if.end15:                                         ; preds = %a3d_csum.exit
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  %conv = zext i8 %12 to i32
  %mode = getelementptr inbounds %struct.a3d, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %mode, align 8
  %14 = add i8 %12, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %14)
  %15 = icmp ult i8 %14, -5
  br i1 %15, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %phys = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %phys, i32 noundef %conv) #13
  br label %fail2

if.end25:                                         ; preds = %if.end15
  %poll_handler.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %16 = ptrtoint ptr %poll_handler.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @a3d_poll, ptr %poll_handler.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %17 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 20, ptr %poll_interval.i, align 8
  %phys26 = getelementptr inbounds %struct.a3d, ptr %call7.i.i, i32 0, i32 9
  %phys28 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %call30 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys26, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %phys28)
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 8
  %arrayidx32 = getelementptr [6 x ptr], ptr @a3d_names, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx32, align 4
  %22 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %call1, align 8
  %phys35 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %23 = ptrtoint ptr %phys35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %phys26, ptr %phys35, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %24 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 20, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %vendor, align 2
  %26 = load i32, ptr %mode, align 8
  %conv38 = trunc i32 %26 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv38, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 256, ptr %version, align 2
  %dev41 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev41, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 31
  %30 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @a3d_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 32
  %31 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @a3d_close, ptr %close, align 4
  %driver_data.i.i195 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 8
  %32 = ptrtoint ptr %driver_data.i.i195 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %driver_data.i.i195, align 4
  %33 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp44 = icmp eq i32 %33, 4
  %length = getelementptr inbounds %struct.a3d, ptr %call7.i.i, i32 0, i32 6
  br i1 %cmp44, label %if.then62.peel, label %if.else68

if.then62.peel:                                   ; preds = %if.end25
  %34 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 33, ptr %length, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %35 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %evbit, align 8
  %or = or i32 %36, 14
  store i32 %or, ptr %evbit, align 8
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 7
  %37 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %relbit, align 4
  %or49 = or i32 %38, 3
  store i32 %or49, ptr %relbit, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 8
  %39 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %absbit, align 8
  %or51 = or i32 %40, 983235
  store i32 %or51, ptr %absbit, align 8
  %arrayidx52 = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 8
  %41 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx52, align 4
  %or53 = or i32 %42, 2031616
  store i32 %or53, ptr %arrayidx52, align 4
  %arrayidx55 = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 9
  %43 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx55, align 4
  %or56 = or i32 %44, 43
  store i32 %or56, ptr %arrayidx55, align 4
  call fastcc void @a3d_read(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %data)
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 26
  %45 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i.peel = icmp eq ptr %46, null
  br i1 %tobool.not.i.peel, label %if.then62.peel.if.then62.peel205_crit_edge, label %cond.true.i.peel

if.then62.peel.if.then62.peel205_crit_edge:       ; preds = %if.then62.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then62.peel205

cond.true.i.peel:                                 ; preds = %if.then62.peel
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %phi.bo = shl i32 %48, 1
  %phi.bo219 = add i32 %phi.bo, -48
  br label %if.then62.peel205

if.then62.peel205:                                ; preds = %cond.true.i.peel, %if.then62.peel.if.then62.peel205_crit_edge
  %cond.i.peel = phi i32 [ %phi.bo219, %cond.true.i.peel ], [ -48, %if.then62.peel.if.then62.peel205_crit_edge ]
  call void @input_set_abs_params(ptr noundef %call1, i32 noundef 0, i32 noundef 48, i32 noundef %cond.i.peel, i32 noundef 0, i32 noundef 8) #9
  call void @input_set_abs_params(ptr noundef %call1, i32 noundef 16, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %49 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i.peel207 = icmp eq ptr %50, null
  br i1 %tobool.not.i.peel207, label %if.then62.peel205.for.body.peel.next200_crit_edge, label %cond.true.i.peel208

if.then62.peel205.for.body.peel.next200_crit_edge: ; preds = %if.then62.peel205
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.peel.next200

cond.true.i.peel208:                              ; preds = %if.then62.peel205
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i196.peel209 = getelementptr %struct.input_absinfo, ptr %50, i32 1
  %51 = ptrtoint ptr %arrayidx.i196.peel209 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i196.peel209, align 4
  %phi.bo220 = shl i32 %52, 1
  %phi.bo221 = add i32 %phi.bo220, -48
  br label %for.body.peel.next200

for.body.peel.next200:                            ; preds = %cond.true.i.peel208, %if.then62.peel205.for.body.peel.next200_crit_edge
  %cond.i.peel211 = phi i32 [ %phi.bo221, %cond.true.i.peel208 ], [ -48, %if.then62.peel205.for.body.peel.next200_crit_edge ]
  call void @input_set_abs_params(ptr noundef %call1, i32 noundef 1, i32 noundef 48, i32 noundef %cond.i.peel211, i32 noundef 0, i32 noundef 8) #9
  call void @input_set_abs_params(ptr noundef %call1, i32 noundef 17, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  call void @input_set_abs_params(ptr noundef %call1, i32 noundef 6, i32 noundef 2, i32 noundef 253, i32 noundef 0, i32 noundef 0) #9
  call void @input_set_abs_params(ptr noundef %call1, i32 noundef 18, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  call void @input_set_abs_params(ptr noundef %call1, i32 noundef 7, i32 noundef 2, i32 noundef 253, i32 noundef 0, i32 noundef 0) #9
  call void @input_set_abs_params(ptr noundef %call1, i32 noundef 19, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  br label %if.end100

if.else68:                                        ; preds = %if.end25
  %53 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 29, ptr %length, align 4
  %evbit70 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %54 = ptrtoint ptr %evbit70 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %evbit70, align 8
  %or72 = or i32 %55, 6
  store i32 %or72, ptr %evbit70, align 8
  %relbit73 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 7
  %56 = ptrtoint ptr %relbit73 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %relbit73, align 4
  %or75 = or i32 %57, 3
  store i32 %or75, ptr %relbit73, align 4
  %arrayidx77 = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 8
  %58 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx77, align 4
  %or78 = or i32 %59, 458752
  store i32 %or78, ptr %arrayidx77, align 4
  call fastcc void @a3d_read(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %data)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 1248) #12
  %adc81 = getelementptr inbounds %struct.a3d, ptr %call7.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %adc81 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i.i, ptr %adc81, align 4
  %tobool82.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool82.not, label %do.end86, label %if.else89

do.end86:                                         ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %if.end100

if.else89:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i, ptr %call7.i.i.i, align 8
  %open90 = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 10
  %63 = ptrtoint ptr %open90 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @a3d_adc_open, ptr %open90, align 8
  %close91 = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 11
  %64 = ptrtoint ptr %close91 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @a3d_adc_close, ptr %close91, align 4
  %cooked_read = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 8
  %65 = ptrtoint ptr %cooked_read to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @a3d_adc_cooked_read, ptr %cooked_read, align 8
  %fuzz = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 5
  %66 = ptrtoint ptr %fuzz to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %fuzz, align 4
  %67 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mode, align 8
  %arrayidx93 = getelementptr [6 x ptr], ptr @a3d_names, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx93, align 4
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = call i32 @strlcpy(ptr noundef %name1.i, ptr noundef %70, i32 noundef 32) #9
  call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.10, ptr noundef %phys28) #9
  %parent98 = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %71 = ptrtoint ptr %parent98 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %dev41, ptr %parent98, align 8
  call void @__gameport_register_port(ptr noundef nonnull %call7.i.i.i, ptr noundef null) #9
  br label %if.end100

if.end100:                                        ; preds = %if.else89, %do.end86, %for.body.peel.next200
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 8
  %call102 = call i32 @input_register_device(ptr noundef %73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end100.cleanup_crit_edge, label %fail3

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fail3:                                            ; preds = %if.end100
  %adc106 = getelementptr inbounds %struct.a3d, ptr %call7.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %adc106 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adc106, align 4
  %tobool107.not = icmp eq ptr %75, null
  br i1 %tobool107.not, label %fail3.fail2_crit_edge, label %if.then108

fail3.fail2_crit_edge:                            ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

if.then108:                                       ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #11
  call void @gameport_unregister_port(ptr noundef nonnull %75) #9
  br label %fail2

fail2:                                            ; preds = %if.then108, %fail3.fail2_crit_edge, %do.end, %a3d_csum.exit.fail2_crit_edge, %if.end7.fail2_crit_edge
  %err.0 = phi i32 [ -19, %do.end ], [ %call102, %if.then108 ], [ %call102, %fail3.fail2_crit_edge ], [ -19, %a3d_csum.exit.fail2_crit_edge ], [ -19, %if.end7.fail2_crit_edge ]
  call void @gameport_close(ptr noundef %gameport) #9
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %call4, %if.end.fail1_crit_edge ], [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  %driver_data.i.i197 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %76 = ptrtoint ptr %driver_data.i.i197 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %driver_data.i.i197, align 4
  call void @input_free_device(ptr noundef %call1) #9
  call void @kfree(ptr noundef %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end100.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %if.end100.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a3d_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.a3d, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @input_unregister_device(ptr noundef %3) #9
  %adc = getelementptr inbounds %struct.a3d, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gameport_unregister_port(ptr noundef nonnull %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @gameport_close(ptr noundef %gameport) #9
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gameport_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a3d_read_packet(ptr noundef %gameport, i32 noundef %length, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %1, 600
  %div.i = sdiv i32 %mul.i, 1000
  %mul.i70 = mul i32 %1, 80
  %div.i71 = sdiv i32 %mul.i70, 1000
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !52
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry.do.end12_crit_edge
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %3 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %4(ptr noundef %gameport) #9
  br label %gameport_trigger.exit

do.body.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %5 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io.i, align 4
  %and.i72 = and i32 %6, 1048575
  %add.i = or i32 %and.i72, -18874368
  %7 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -1) #9, !srcloc !54
  br label %gameport_trigger.exit

gameport_trigger.exit:                            ; preds = %do.body.i, %if.then.i
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %tobool.not.i73 = icmp eq ptr %9, null
  br i1 %tobool.not.i73, label %if.else.i, label %if.then.i74

if.then.i74:                                      ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i8 %9(ptr noundef %gameport) #9
  br label %gameport_read.exit

if.else.i:                                        ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #11
  %io.i75 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %10 = ptrtoint ptr %io.i75 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io.i75, align 4
  %and.i76 = and i32 %11, 1048575
  %add.i77 = or i32 %and.i76, -18874368
  %12 = inttoptr i32 %add.i77 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !56
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i74
  %retval.0.i = phi i8 [ %call.i, %if.then.i74 ], [ %13, %if.else.i ]
  %14 = add i32 %mul.i, -1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1999, i32 %14)
  %15 = icmp ult i32 %14, -1999
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp1690 = icmp sgt i32 %length, 0
  %or.cond91 = and i1 %15, %cmp1690
  br i1 %or.cond91, label %while.body.lr.ph, label %gameport_read.exit.do.body27_crit_edge

gameport_read.exit.do.body27_crit_edge:           ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

while.body.lr.ph:                                 ; preds = %gameport_read.exit
  %io.i82 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %while.body.lr.ph
  %v.094 = phi i8 [ %retval.0.i, %while.body.lr.ph ], [ %retval.0.i86, %if.end26.while.body_crit_edge ]
  %t.093 = phi i32 [ %div.i, %while.body.lr.ph ], [ %t.1, %if.end26.while.body_crit_edge ]
  %i.092 = phi i32 [ 0, %while.body.lr.ph ], [ %i.1, %if.end26.while.body_crit_edge ]
  %dec = add i32 %t.093, -1
  %16 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i, align 4
  %tobool.not.i79 = icmp eq ptr %17, null
  br i1 %tobool.not.i79, label %if.else.i85, label %if.then.i81

if.then.i81:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call.i80 = tail call zeroext i8 %17(ptr noundef %gameport) #9
  br label %gameport_read.exit87

if.else.i85:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %io.i82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io.i82, align 4
  %and.i83 = and i32 %19, 1048575
  %add.i84 = or i32 %and.i83, -18874368
  %20 = inttoptr i32 %add.i84 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #9, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !56
  br label %gameport_read.exit87

gameport_read.exit87:                             ; preds = %if.else.i85, %if.then.i81
  %retval.0.i86 = phi i8 [ %call.i80, %if.then.i81 ], [ %21, %if.else.i85 ]
  %conv19 = zext i8 %retval.0.i86 to i32
  %neg = xor i32 %conv19, -1
  %22 = and i8 %v.094, 16
  %and = zext i8 %22 to i32
  %and21 = and i32 %and, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %gameport_read.exit87.if.end26_crit_edge, label %if.then23

gameport_read.exit87.if.end26_crit_edge:          ; preds = %gameport_read.exit87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then23:                                        ; preds = %gameport_read.exit87
  call void @__sanitizer_cov_trace_pc() #11
  %23 = lshr i8 %retval.0.i86, 5
  %inc = add nsw i32 %i.092, 1
  %arrayidx = getelementptr i8, ptr %data, i32 %i.092
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %gameport_read.exit87.if.end26_crit_edge
  %i.1 = phi i32 [ %inc, %if.then23 ], [ %i.092, %gameport_read.exit87.if.end26_crit_edge ]
  %t.1 = phi i32 [ %div.i71, %if.then23 ], [ %dec, %gameport_read.exit87.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.1)
  %cmp14.not = icmp ne i32 %t.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %length)
  %cmp16 = icmp slt i32 %i.1, %length
  %or.cond = select i1 %cmp14.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.end26.while.body_crit_edge, label %if.end26.do.body27_crit_edge

if.end26.do.body27_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.body27:                                        ; preds = %if.end26.do.body27_crit_edge, %gameport_read.exit.do.body27_crit_edge
  %i.0.lcssa = phi i32 [ 0, %gameport_read.exit.do.body27_crit_edge ], [ %i.1, %if.end26.do.body27_crit_edge ]
  br i1 %tobool.not, label %if.then36, label %do.body27.do.body38_crit_edge

do.body27.do.body38_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body38

if.then36:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body38

do.body38:                                        ; preds = %if.then36, %do.body27.do.body38_crit_edge
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !57
  %and.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool46.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool46.not, label %if.then50, label %do.body38.do.end53_crit_edge, !prof !58

do.body38.do.end53_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body38.do.end53_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #9, !srcloc !59
  ret i32 %i.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a3d_poll(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  %data = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %data) #9
  %2 = call ptr @memset(ptr %data, i32 255, i32 40)
  %reads = getelementptr inbounds %struct.a3d, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reads, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %reads, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %length = getelementptr inbounds %struct.a3d, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %call2 = call fastcc i32 @a3d_read_packet(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %data)
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %10)
  %cmp.not = icmp eq i32 %call2, %10
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  %conv = zext i8 %12 to i32
  %mode = getelementptr inbounds %struct.a3d, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv)
  %cmp4.not = icmp eq i32 %14, %conv
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %sub.i = add i32 %call2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp16.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp16.i, label %lor.lhs.false6.for.body.i_crit_edge, label %lor.lhs.false6.a3d_csum.exit_crit_edge

lor.lhs.false6.a3d_csum.exit_crit_edge:           ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %a3d_csum.exit

lor.lhs.false6.for.body.i_crit_edge:              ; preds = %lor.lhs.false6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lor.lhs.false6.for.body.i_crit_edge
  %csum.018.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false6.for.body.i_crit_edge ]
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false6.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.017.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %16 to i32
  %add.i = add i32 %csum.018.i, %conv.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i = and i32 %add.i, 63
  br label %a3d_csum.exit

a3d_csum.exit:                                    ; preds = %for.end.loopexit.i, %lor.lhs.false6.a3d_csum.exit_crit_edge
  %csum.0.lcssa.i = phi i32 [ 0, %lor.lhs.false6.a3d_csum.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %arrayidx2.i = getelementptr i8, ptr %data, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 3
  %sub4.i = add i32 %call2, -1
  %arrayidx5.i = getelementptr i8, ptr %data, i32 %sub4.i
  %19 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %20 to i32
  %or.i = or i32 %shl.i, %conv6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %csum.0.lcssa.i, i32 %or.i)
  %cmp7.i.not = icmp eq i32 %csum.0.lcssa.i, %or.i
  br i1 %cmp7.i.not, label %if.else, label %a3d_csum.exit.if.then_crit_edge

a3d_csum.exit.if.then_crit_edge:                  ; preds = %a3d_csum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %a3d_csum.exit.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %bads = getelementptr inbounds %struct.a3d, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %bads to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bads, align 4
  %inc10 = add i32 %22, 1
  store i32 %inc10, ptr %bads, align 4
  br label %if.end

if.else:                                          ; preds = %a3d_csum.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @a3d_read(ptr noundef %1, ptr noundef nonnull %data)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %data) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3d_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_start_polling(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a3d_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_stop_polling(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a3d_read(ptr nocapture noundef %a3d, ptr noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.a3d, ptr %a3d, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %mode = getelementptr inbounds %struct.a3d, ptr %a3d, i32 0, i32 5
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge363
    i32 2, label %entry.sw.bb_crit_edge364
    i32 4, label %sw.bb100
  ]

entry.sw.bb_crit_edge364:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge363:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge363, %entry.sw.bb_crit_edge364
  %arrayidx = getelementptr i8, ptr %data, i32 5
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 6
  %arrayidx2 = getelementptr i8, ptr %data, i32 6
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %8 to i32
  %shl4 = shl nuw nsw i32 %conv3, 3
  %or = or i32 %shl4, %shl
  %arrayidx5 = getelementptr i8, ptr %data, i32 7
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %or7 = or i32 %or, %conv6
  %and = shl nuw nsw i32 %conv, 7
  %shl10 = and i32 %and, 512
  %sub = sub nsw i32 %or7, %shl10
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 0, i32 noundef %sub) #9
  %arrayidx11 = getelementptr i8, ptr %data, i32 8
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  %shl13 = shl nuw nsw i32 %conv12, 6
  %arrayidx14 = getelementptr i8, ptr %data, i32 9
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %shl16 = shl nuw nsw i32 %conv15, 3
  %or17 = or i32 %shl16, %shl13
  %arrayidx18 = getelementptr i8, ptr %data, i32 10
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %16 to i32
  %or20 = or i32 %or17, %conv19
  %and23 = shl nuw nsw i32 %conv12, 7
  %shl24 = and i32 %and23, 512
  %sub25 = sub nsw i32 %or20, %shl24
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 1, i32 noundef %sub25) #9
  %arrayidx26 = getelementptr i8, ptr %data, i32 2
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx26, align 1
  %19 = and i8 %18, 1
  %20 = zext i8 %19 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 273, i32 noundef %20) #9
  %arrayidx29 = getelementptr i8, ptr %data, i32 3
  %21 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx29, align 1
  %23 = lshr i8 %22, 1
  %.lobit361 = and i8 %23, 1
  %24 = zext i8 %.lobit361 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 272, i32 noundef %24) #9
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx29, align 1
  %27 = lshr i8 %26, 2
  %.lobit362 = and i8 %27, 1
  %28 = zext i8 %.lobit362 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 274, i32 noundef %28) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %arrayidx35 = getelementptr i8, ptr %data, i32 11
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx35, align 1
  %shl37 = shl i8 %30, 6
  %arrayidx38 = getelementptr i8, ptr %data, i32 12
  %31 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx38, align 1
  %shl40 = shl i8 %32, 3
  %or41 = or i8 %shl40, %shl37
  %arrayidx42 = getelementptr i8, ptr %data, i32 13
  %33 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx42, align 1
  %or44 = or i8 %or41, %34
  %conv46 = sext i8 %or44 to i32
  %add = add nsw i32 %conv46, 128
  %axes = getelementptr inbounds %struct.a3d, ptr %a3d, i32 0, i32 3
  %35 = ptrtoint ptr %axes to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %axes, align 4
  %arrayidx48 = getelementptr i8, ptr %data, i32 14
  %36 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx48, align 1
  %shl50 = shl i8 %37, 6
  %arrayidx51 = getelementptr i8, ptr %data, i32 15
  %38 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx51, align 1
  %shl53 = shl i8 %39, 3
  %or54 = or i8 %shl53, %shl50
  %arrayidx55 = getelementptr i8, ptr %data, i32 16
  %40 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx55, align 1
  %or57 = or i8 %or54, %41
  %conv59 = sext i8 %or57 to i32
  %add60 = add nsw i32 %conv59, 128
  %arrayidx62 = getelementptr %struct.a3d, ptr %a3d, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add60, ptr %arrayidx62, align 4
  %arrayidx63 = getelementptr i8, ptr %data, i32 17
  %43 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx63, align 1
  %shl65 = shl i8 %44, 6
  %arrayidx66 = getelementptr i8, ptr %data, i32 18
  %45 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx66, align 1
  %shl68 = shl i8 %46, 3
  %or69 = or i8 %shl68, %shl65
  %arrayidx70 = getelementptr i8, ptr %data, i32 19
  %47 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx70, align 1
  %or72 = or i8 %or69, %48
  %conv74 = sext i8 %or72 to i32
  %add75 = add nsw i32 %conv74, 128
  %arrayidx77 = getelementptr %struct.a3d, ptr %a3d, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add75, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr i8, ptr %data, i32 20
  %50 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx78, align 1
  %shl80 = shl i8 %51, 6
  %arrayidx81 = getelementptr i8, ptr %data, i32 21
  %52 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx81, align 1
  %shl83 = shl i8 %53, 3
  %or84 = or i8 %shl83, %shl80
  %arrayidx85 = getelementptr i8, ptr %data, i32 22
  %54 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx85, align 1
  %or87 = or i8 %or84, %55
  %conv89 = sext i8 %or87 to i32
  %add90 = add nsw i32 %conv89, 128
  %arrayidx92 = getelementptr %struct.a3d, ptr %a3d, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add90, ptr %arrayidx92, align 4
  %57 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx29, align 1
  %conv94 = zext i8 %58 to i32
  %shl95 = shl nuw nsw i32 %conv94, 3
  %arrayidx96 = getelementptr i8, ptr %data, i32 4
  %59 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %60 to i32
  %or98 = or i32 %shl95, %conv97
  %and99 = and i32 %or98, 15
  %buttons = getelementptr inbounds %struct.a3d, ptr %a3d, i32 0, i32 4
  %61 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and99, ptr %buttons, align 4
  br label %sw.epilog

sw.bb100:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx101 = getelementptr i8, ptr %data, i32 9
  %62 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %63 to i32
  %shl103 = shl nuw nsw i32 %conv102, 6
  %arrayidx104 = getelementptr i8, ptr %data, i32 10
  %64 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %65 to i32
  %shl106 = shl nuw nsw i32 %conv105, 3
  %or107 = or i32 %shl106, %shl103
  %arrayidx108 = getelementptr i8, ptr %data, i32 11
  %66 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %67 to i32
  %or110 = or i32 %or107, %conv109
  %and113 = shl nuw nsw i32 %conv102, 7
  %shl114 = and i32 %and113, 512
  %sub115 = sub nsw i32 %or110, %shl114
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 0, i32 noundef %sub115) #9
  %arrayidx116 = getelementptr i8, ptr %data, i32 12
  %68 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %69 to i32
  %shl118 = shl nuw nsw i32 %conv117, 6
  %arrayidx119 = getelementptr i8, ptr %data, i32 13
  %70 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %71 to i32
  %shl121 = shl nuw nsw i32 %conv120, 3
  %or122 = or i32 %shl121, %shl118
  %arrayidx123 = getelementptr i8, ptr %data, i32 14
  %72 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %73 to i32
  %or125 = or i32 %or122, %conv124
  %and128 = shl nuw nsw i32 %conv117, 7
  %shl129 = and i32 %and128, 512
  %sub130 = sub nsw i32 %or125, %shl129
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 1, i32 noundef %sub130) #9
  %arrayidx131 = getelementptr i8, ptr %data, i32 2
  %74 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx131, align 1
  %76 = and i8 %75, 1
  %77 = zext i8 %76 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 273, i32 noundef %77) #9
  %arrayidx134 = getelementptr i8, ptr %data, i32 3
  %78 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx134, align 1
  %80 = lshr i8 %79, 1
  %.lobit = and i8 %80, 1
  %81 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 272, i32 noundef %81) #9
  %82 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx134, align 1
  %84 = lshr i8 %83, 2
  %.lobit356 = and i8 %84, 1
  %85 = zext i8 %.lobit356 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 274, i32 noundef %85) #9
  %arrayidx140 = getelementptr i8, ptr %data, i32 7
  %86 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx140, align 1
  %88 = lshr i8 %87, 1
  %.lobit357 = and i8 %88, 1
  %89 = zext i8 %.lobit357 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 275, i32 noundef %89) #9
  %90 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx140, align 1
  %92 = lshr i8 %91, 2
  %.lobit358 = and i8 %92, 1
  %93 = zext i8 %.lobit358 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 276, i32 noundef %93) #9
  %arrayidx146 = getelementptr i8, ptr %data, i32 15
  %94 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx146, align 1
  %shl148 = shl i8 %95, 6
  %arrayidx149 = getelementptr i8, ptr %data, i32 16
  %96 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx149, align 1
  %shl151 = shl i8 %97, 3
  %or152 = or i8 %shl151, %shl148
  %arrayidx153 = getelementptr i8, ptr %data, i32 17
  %98 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx153, align 1
  %or155 = or i8 %or152, %99
  %conv157 = sext i8 %or155 to i32
  %add158 = add nsw i32 %conv157, 128
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %add158) #9
  %arrayidx159 = getelementptr i8, ptr %data, i32 18
  %100 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx159, align 1
  %shl161 = shl i8 %101, 6
  %arrayidx162 = getelementptr i8, ptr %data, i32 19
  %102 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx162, align 1
  %shl164 = shl i8 %103, 3
  %or165 = or i8 %shl164, %shl161
  %arrayidx166 = getelementptr i8, ptr %data, i32 20
  %104 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx166, align 1
  %or168 = or i8 %or165, %105
  %conv170 = sext i8 %or168 to i32
  %add171 = add nsw i32 %conv170, 128
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %add171) #9
  %arrayidx172 = getelementptr i8, ptr %data, i32 21
  %106 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx172, align 1
  %shl174 = shl i8 %107, 6
  %arrayidx175 = getelementptr i8, ptr %data, i32 22
  %108 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx175, align 1
  %shl177 = shl i8 %109, 3
  %or178 = or i8 %shl177, %shl174
  %arrayidx179 = getelementptr i8, ptr %data, i32 23
  %110 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx179, align 1
  %or181 = or i8 %or178, %111
  %conv183 = sext i8 %or181 to i32
  %add184 = add nsw i32 %conv183, 128
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 7, i32 noundef %add184) #9
  %arrayidx185 = getelementptr i8, ptr %data, i32 24
  %112 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx185, align 1
  %shl187 = shl i8 %113, 6
  %arrayidx188 = getelementptr i8, ptr %data, i32 25
  %114 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx188, align 1
  %shl190 = shl i8 %115, 3
  %or191 = or i8 %shl190, %shl187
  %arrayidx192 = getelementptr i8, ptr %data, i32 26
  %116 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx192, align 1
  %or194 = or i8 %or191, %117
  %conv196 = sext i8 %or194 to i32
  %add197 = add nsw i32 %conv196, 128
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 6, i32 noundef %add197) #9
  %arrayidx198 = getelementptr i8, ptr %data, i32 5
  %118 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %119 to i32
  %and200 = and i32 %conv199, 1
  %120 = shl i32 %conv199, 29
  %121 = ashr i32 %120, 31
  %sub204 = add nsw i32 %121, %and200
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 16, i32 noundef %sub204) #9
  %122 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx198, align 1
  %124 = lshr i8 %123, 1
  %125 = and i8 %124, 1
  %and208 = zext i8 %125 to i32
  %arrayidx209 = getelementptr i8, ptr %data, i32 6
  %126 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx209, align 1
  %128 = lshr i8 %127, 2
  %129 = and i8 %128, 1
  %and212 = zext i8 %129 to i32
  %sub213 = sub nsw i32 %and208, %and212
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 17, i32 noundef %sub213) #9
  %arrayidx214 = getelementptr i8, ptr %data, i32 4
  %130 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx214, align 1
  %132 = lshr i8 %131, 1
  %133 = and i8 %132, 1
  %and217 = zext i8 %133 to i32
  %134 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx134, align 1
  %136 = and i8 %135, 1
  %and220 = zext i8 %136 to i32
  %sub221 = sub nsw i32 %and217, %and220
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 18, i32 noundef %sub221) #9
  %137 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx214, align 1
  %conv223 = zext i8 %138 to i32
  %139 = lshr i32 %conv223, 2
  %and225 = and i32 %139, 1
  %and228 = and i32 %conv223, 1
  %sub229 = sub nsw i32 %and225, %and228
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 19, i32 noundef %sub229) #9
  %arrayidx230 = getelementptr i8, ptr %data, i32 8
  %140 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx230, align 1
  %142 = and i8 %141, 1
  %143 = zext i8 %142 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 288, i32 noundef %143) #9
  %144 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx230, align 1
  %146 = lshr i8 %145, 1
  %.lobit359 = and i8 %146, 1
  %147 = zext i8 %.lobit359 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 289, i32 noundef %147) #9
  %148 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx230, align 1
  %150 = lshr i8 %149, 2
  %.lobit360 = and i8 %150, 1
  %151 = zext i8 %.lobit360 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 291, i32 noundef %151) #9
  %152 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx140, align 1
  %154 = and i8 %153, 1
  %155 = zext i8 %154 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 293, i32 noundef %155) #9
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb100, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3d_adc_open(ptr nocapture noundef readonly %gameport, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_start_polling(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a3d_adc_close(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_stop_polling(ptr noundef %3) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a3d_adc_cooked_read(ptr nocapture noundef readonly %gameport, ptr nocapture noundef writeonly %axes, ptr nocapture noundef writeonly %buttons) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %arrayidx = getelementptr %struct.a3d, ptr %1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %3)
  %cmp2 = icmp slt i32 %3, 254
  %spec.select = select i1 %cmp2, i32 %3, i32 -1
  %4 = ptrtoint ptr %axes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %axes, align 4
  %arrayidx.1 = getelementptr %struct.a3d, ptr %1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %6)
  %cmp2.1 = icmp slt i32 %6, 254
  %spec.select.1 = select i1 %cmp2.1, i32 %6, i32 -1
  %arrayidx5.1 = getelementptr i32, ptr %axes, i32 1
  %7 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select.1, ptr %arrayidx5.1, align 4
  %arrayidx.2 = getelementptr %struct.a3d, ptr %1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %9)
  %cmp2.2 = icmp slt i32 %9, 254
  %spec.select.2 = select i1 %cmp2.2, i32 %9, i32 -1
  %arrayidx5.2 = getelementptr i32, ptr %axes, i32 2
  %10 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select.2, ptr %arrayidx5.2, align 4
  %arrayidx.3 = getelementptr %struct.a3d, ptr %1, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %12)
  %cmp2.3 = icmp slt i32 %12, 254
  %spec.select.3 = select i1 %cmp2.3, i32 %12, i32 -1
  %arrayidx5.3 = getelementptr i32, ptr %axes, i32 3
  %13 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.3, ptr %arrayidx5.3, align 4
  %buttons6 = getelementptr inbounds %struct.a3d, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %buttons6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buttons6, align 4
  %16 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %buttons, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_stop_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/a3d.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/a3d.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/a3d.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_a3d__227_399_a3d_drv_init6, !8, !"__initcall__kmod_a3d__227_399_a3d_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/a3d.c", i32 399, i32 1}
!9 = !{ptr @__exitcall_a3d_drv_exit, !8, !"__exitcall_a3d_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/a3d.c", i32 394, i32 17}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/a3d.c", i32 391, i32 11}
!15 = !{ptr @a3d_drv, !16, !"a3d_drv", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/a3d.c", i32 389, i32 31}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/a3d.c", i32 281, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @a3d_connect._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @a3d_connect._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/a3d.c", i32 290, i32 41}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/a3d.c", i32 346, i32 4}
!27 = !{ptr @a3d_connect._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @a3d_connect._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/joystick/a3d.c", i32 355, i32 27}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/a3d.c", i32 35, i32 36}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/joystick/a3d.c", i32 35, i32 61}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/joystick/a3d.c", i32 35, i32 80}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/joystick/a3d.c", i32 36, i32 4}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/joystick/a3d.c", i32 36, i32 26}
!41 = !{ptr @a3d_names, !42, !"a3d_names", i1 false, i1 false}
!42 = !{!"../drivers/input/joystick/a3d.c", i32 35, i32 14}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 610529, i64 610590}
!53 = !{i64 2152730995}
!54 = !{i64 4941248}
!55 = !{i64 4941643}
!56 = !{i64 2152731570}
!57 = !{i64 613261}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 613546}
