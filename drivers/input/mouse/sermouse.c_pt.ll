; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/sermouse.c_pt.bc'
source_filename = "../drivers/input/mouse/sermouse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sermouse = type { ptr, [8 x i8], i8, i8, i32, [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [48 x i8] c"sermouse.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [41 x i8] c"sermouse.description=Serial mouse driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [43 x i8] c"sermouse.file=drivers/input/mouse/sermouse\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [21 x i8] c"sermouse.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_sermouse__231_343_sermouse_drv_init6 = internal global ptr @sermouse_drv_init, section ".initcall6.init", align 4
@sermouse_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @sermouse_serio_ids, i8 0, ptr null, ptr @sermouse_interrupt, ptr @sermouse_connect, ptr null, ptr null, ptr @sermouse_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sermouse_drv_exit = internal global ptr @sermouse_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sermouse\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Serial mouse driver\00", [44 x i8] zeroinitializer }, align 32
@sermouse_serio_ids = internal global { [8 x %struct.serio_device_id], [32 x i8] } { [8 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 1 }, %struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 2 }, %struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 3 }, %struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 4 }, %struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 5 }, %struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 6 }, %struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 7 }, %struct.serio_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sermouse_process_ms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014sermouse.c: Received MZ++ packet %x, don't know how to handle.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sermouse_process_ms\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/mouse/sermouse.c\00", [33 x i8] zeroinitializer }, align 32
@sermouse_process_ms._entry_ptr = internal global ptr @sermouse_process_ms._entry, section ".printk_index", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@sermouse_protocols = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mouse Systems Mouse\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Sun Mouse\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Microsoft Mouse\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Logitech M+ Mouse\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Microsoft MZ Mouse\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Logitech MZ+ Mouse\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Logitech MZ++ Mouse\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"sermouse_drv\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 332, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 343, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 336, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"sermouse_serio_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 284, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 174, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 243, i32 51 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"sermouse_protocols\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 26, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 26, i32 45 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 26, i32 53 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 26, i32 76 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 26, i32 89 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 27, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 27, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 27, i32 49 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [34 x i8] c"../drivers/input/mouse/sermouse.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 28, i32 6 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_sermouse_drv_exit, ptr @__initcall__kmod_sermouse__231_343_sermouse_drv_init6, ptr @sermouse_drv_exit, ptr @sermouse_process_ms._entry, ptr @sermouse_process_ms._entry_ptr, ptr @sermouse_drv, ptr @.str, ptr @.str.1, ptr @sermouse_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sermouse_protocols, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sermouse_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sermouse_serio_ids to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sermouse_process_ms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sermouse_protocols to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sermouse_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @sermouse_drv, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sermouse_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serio_unregister_driver(ptr noundef nonnull @sermouse_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sermouse_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %last = getelementptr inbounds %struct.sermouse, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last, align 4
  %add = add i32 %3, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %count = getelementptr inbounds %struct.sermouse, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %last, align 4
  %type = getelementptr inbounds %struct.sermouse, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp2 = icmp ugt i8 %9, 2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %buf2.i = getelementptr inbounds %struct.sermouse, ptr %1, i32 0, i32 1
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %conv238.i = zext i8 %data to i32
  %and.i = and i32 %conv238.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %count3.i = getelementptr inbounds %struct.sermouse, ptr %1, i32 0, i32 2
  br i1 %tobool.not.i, label %if.else.i, label %if.end7.i.thread

if.end7.i.thread:                                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %count3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %count3.i, align 4
  %arrayidx.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %data, ptr %arrayidx.i, align 1
  %14 = lshr i32 %conv238.i, 5
  %.lobit236.i = and i32 %14, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 272, i32 noundef %.lobit236.i) #6
  %15 = lshr i32 %conv238.i, 4
  %.lobit237.i = and i32 %15, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 273, i32 noundef %.lobit237.i) #6
  br label %sw.epilog135.i

if.else.i:                                        ; preds = %if.then4
  %16 = ptrtoint ptr %count3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %count3.i, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.else.i.sw.epilog135.i_crit_edge [
    i8 0, label %if.else.i.if.end5_crit_edge
    i8 7, label %if.else.i.sw.bb107.i_crit_edge
    i8 1, label %sw.bb15.i
    i8 2, label %sw.bb31.i
    i8 3, label %sw.bb70.i
    i8 4, label %if.else.i.sw.bb101.i_crit_edge
    i8 6, label %if.else.i.sw.bb101.i_crit_edge19
    i8 5, label %if.else.i.sw.bb107.i_crit_edge20
  ]

if.else.i.sw.bb107.i_crit_edge20:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.else.i.sw.bb101.i_crit_edge19:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb101.i

if.else.i.sw.bb101.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb101.i

if.else.i.sw.bb107.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107.i

if.else.i.if.end5_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else.i.sw.epilog135.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog135.i

sw.bb15.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %data, ptr %arrayidx16.i, align 1
  %arrayidx17.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx17.i, align 1
  %shl.i = shl i8 %21, 6
  %and21.i = and i8 %data, 63
  %or.i = or i8 %shl.i, %and21.i
  %22 = sdiv i8 %or.i, 2
  %div.i = sext i8 %22 to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 0, i32 noundef %div.i) #6
  %arrayidx24.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = sext i8 %24 to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 1, i32 noundef %conv25.i) #6
  %conv29.i = sub i8 %or.i, %22
  %arrayidx30.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv29.i, ptr %arrayidx30.i, align 1
  br label %sw.epilog135.i

sw.bb31.i:                                        ; preds = %if.else.i
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp33.i = icmp eq i8 %27, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data)
  %tobool35.not.i = icmp eq i8 %data, 0
  %or.cond.i = and i1 %tobool35.not.i, %cmp33.i
  br i1 %or.cond.i, label %land.lhs.true36.i, label %sw.bb31.i.if.end49.i_crit_edge

sw.bb31.i.if.end49.i_crit_edge:                   ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

land.lhs.true36.i:                                ; preds = %sw.bb31.i
  %arrayidx37.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx37.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool38.not.i = icmp eq i8 %29, 0
  br i1 %tobool38.not.i, label %land.lhs.true39.i, label %land.lhs.true36.i.if.end49.i_crit_edge

land.lhs.true36.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

land.lhs.true39.i:                                ; preds = %land.lhs.true36.i
  %30 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf2.i, align 1
  %32 = and i8 %31, -16
  %and42.i = zext i8 %32 to i32
  %arrayidx43.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx43.i, align 1
  %conv44.i = sext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and42.i, i32 %conv44.i)
  %tobool45.not.i = icmp eq i32 %and42.i, %conv44.i
  br i1 %tobool45.not.i, label %if.then46.i, label %land.lhs.true39.i.if.end49.i_crit_edge

land.lhs.true39.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then46.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.input_dev, ptr %11, i32 0, i32 27, i32 8
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx.i.i, align 4
  %37 = lshr i32 %36, 18
  %.lobit235.i = and i32 %37, 1
  %38 = xor i32 %.lobit235.i, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 274, i32 noundef %38) #6
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %land.lhs.true39.i.if.end49.i_crit_edge, %land.lhs.true36.i.if.end49.i_crit_edge, %sw.bb31.i.if.end49.i_crit_edge
  %arrayidx50.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx50.i, align 1
  %41 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %buf2.i, align 1
  %shl54.i = shl i8 %40, 4
  %and55.i = and i8 %shl54.i, -64
  %and57.i = and i8 %data, 63
  %or58.i = or i8 %and55.i, %and57.i
  %arrayidx60.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx60.i, align 1
  %conv61.i = sext i8 %43 to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 0, i32 noundef %conv61.i) #6
  %conv62.i = sext i8 %or58.i to i32
  %arrayidx63.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = sext i8 %45 to i32
  %sub65.i = sub nsw i32 %conv62.i, %conv64.i
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 1, i32 noundef %sub65.i) #6
  %div67229.i = sdiv i8 %or58.i, 2
  %46 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %div67229.i, ptr %arrayidx63.i, align 1
  br label %sw.epilog135.i

sw.bb70.i:                                        ; preds = %if.else.i
  %47 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %type, align 1
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %48, label %sw.bb70.i.sw.epilog135.i_crit_edge [
    i8 3, label %sw.bb73.i
    i8 4, label %sw.bb70.i.sw.bb75.i_crit_edge
    i8 6, label %sw.bb70.i.sw.bb88.i_crit_edge
    i8 7, label %sw.bb70.i.sw.bb88.i_crit_edge21
    i8 5, label %sw.bb70.i.sw.bb92.i_crit_edge
  ]

sw.bb70.i.sw.bb92.i_crit_edge:                    ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb92.i

sw.bb70.i.sw.bb88.i_crit_edge21:                  ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb88.i

sw.bb70.i.sw.bb88.i_crit_edge:                    ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb88.i

sw.bb70.i.sw.bb75.i_crit_edge:                    ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb75.i

sw.bb70.i.sw.epilog135.i_crit_edge:               ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog135.i

sw.bb73.i:                                        ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 4, ptr %type, align 1
  br label %sw.bb75.i

sw.bb75.i:                                        ; preds = %sw.bb73.i, %sw.bb70.i.sw.bb75.i_crit_edge
  %51 = and i32 %conv238.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool79.not.i = icmp eq i32 %51, 0
  br i1 %tobool79.not.i, label %if.end81.i, label %sw.bb75.i.sw.epilog135.i_crit_edge

sw.bb75.i.sw.epilog135.i_crit_edge:               ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog135.i

if.end81.i:                                       ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = lshr i32 %conv238.i, 5
  %.lobit233.i = and i32 %52, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 274, i32 noundef %.lobit233.i) #6
  %53 = lshr i32 %conv238.i, 4
  %.lobit234.i = and i32 %53, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 275, i32 noundef %.lobit234.i) #6
  br label %sw.epilog135.i

sw.bb88.i:                                        ; preds = %sw.bb70.i.sw.bb88.i_crit_edge, %sw.bb70.i.sw.bb88.i_crit_edge21
  %54 = lshr i32 %conv238.i, 5
  %.lobit232.i = and i32 %54, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 275, i32 noundef %.lobit232.i) #6
  br label %sw.bb92.i

sw.bb92.i:                                        ; preds = %sw.bb88.i, %sw.bb70.i.sw.bb92.i_crit_edge
  %55 = lshr i32 %conv238.i, 4
  %.lobit231.i = and i32 %55, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 274, i32 noundef %.lobit231.i) #6
  %and97.i = and i32 %conv238.i, 8
  %and99.i = and i32 %conv238.i, 7
  %sub100.i = sub nsw i32 %and97.i, %and99.i
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 8, i32 noundef %sub100.i) #6
  br label %sw.epilog135.i

sw.bb101.i:                                       ; preds = %if.else.i.sw.bb101.i_crit_edge, %if.else.i.sw.bb101.i_crit_edge19
  %56 = lshr i8 %data, 2
  %conv105.i = and i8 %56, 15
  %arrayidx106.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv105.i, ptr %arrayidx106.i, align 1
  br label %sw.epilog135.i

sw.bb107.i:                                       ; preds = %if.else.i.sw.bb107.i_crit_edge, %if.else.i.sw.bb107.i_crit_edge20
  %58 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %59)
  %cmp110.not.i = icmp eq i8 %59, 7
  br i1 %cmp110.not.i, label %if.end113.i, label %sw.bb107.i.sw.epilog135.i_crit_edge

sw.bb107.i.sw.epilog135.i_crit_edge:              ; preds = %sw.bb107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog135.i

if.end113.i:                                      ; preds = %sw.bb107.i
  %arrayidx114.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx114.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cond138.i = icmp eq i8 %61, 1
  br i1 %cond138.i, label %sw.bb116.i, label %do.end.i

sw.bb116.i:                                       ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = lshr i32 %conv238.i, 4
  %.lobit.i = and i32 %62, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 275, i32 noundef %.lobit.i) #6
  %63 = lshr i32 %conv238.i, 5
  %.lobit230.i = and i32 %63, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 276, i32 noundef %.lobit230.i) #6
  %and124.i = and i32 %conv238.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool125.not.i = icmp eq i32 %and124.i, 0
  %cond.i = select i1 %tobool125.not.i, i32 8, i32 6
  %and127.i = and i32 %conv238.i, 7
  %and129.i = and i32 %conv238.i, 8
  %sub130.i = sub nsw i32 %and127.i, %and129.i
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef %cond.i, i32 noundef %sub130.i) #6
  br label %sw.epilog135.i

do.end.i:                                         ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv115.i = sext i8 %61 to i32
  %call133.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv115.i) #9
  br label %sw.epilog135.i

sw.epilog135.i:                                   ; preds = %do.end.i, %sw.bb116.i, %sw.bb107.i.sw.epilog135.i_crit_edge, %sw.bb101.i, %sw.bb92.i, %if.end81.i, %sw.bb75.i.sw.epilog135.i_crit_edge, %sw.bb70.i.sw.epilog135.i_crit_edge, %if.end49.i, %sw.bb15.i, %if.else.i.sw.epilog135.i_crit_edge, %if.end7.i.thread
  tail call void @input_event(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %64 = ptrtoint ptr %count3.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %count3.i, align 4
  %inc.i = add i8 %65, 1
  store i8 %inc.i, ptr %count3.i, align 4
  br label %if.end5

if.else:                                          ; preds = %if.end
  %count.i = getelementptr inbounds %struct.sermouse, ptr %1, i32 0, i32 2
  %66 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %count.i, align 4
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %67, label %if.else.sw.epilog.i_crit_edge [
    i8 0, label %sw.bb.i14
    i8 1, label %if.else.sw.bb17.i_crit_edge
    i8 3, label %if.else.sw.bb17.i_crit_edge22
    i8 2, label %if.else.sw.bb26.i_crit_edge
    i8 4, label %if.else.sw.bb26.i_crit_edge23
  ]

if.else.sw.bb26.i_crit_edge23:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26.i

if.else.sw.bb26.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26.i

if.else.sw.bb17.i_crit_edge22:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17.i

if.else.sw.bb17.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb17.i

if.else.sw.epilog.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i14:                                        ; preds = %if.else
  %conv374.i = zext i8 %data to i32
  %and.i13 = and i32 %conv374.i, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and.i13)
  %cmp.not.i = icmp eq i32 %and.i13, 128
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.i14.if.end5_crit_edge

sw.bb.i14.if.end5_crit_edge:                      ; preds = %sw.bb.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i:                                         ; preds = %sw.bb.i14
  call void @__sanitizer_cov_trace_pc() #8
  %69 = lshr i32 %conv374.i, 2
  %.lobit.i15 = and i32 %69, 1
  %70 = xor i32 %.lobit.i15, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 272, i32 noundef %70) #6
  %and8.i = and i32 %conv374.i, 1
  %71 = xor i32 %and8.i, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 273, i32 noundef %71) #6
  %72 = lshr i32 %conv374.i, 1
  %.lobit73.i = and i32 %72, 1
  %73 = xor i32 %.lobit73.i, 1
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 274, i32 noundef %73) #6
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.else.sw.bb17.i_crit_edge, %if.else.sw.bb17.i_crit_edge22
  %74 = sdiv i8 %data, 2
  %div.i16 = sext i8 %74 to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 0, i32 noundef %div.i16) #6
  %arrayidx.i17 = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i17, align 1
  %conv19.i = sext i8 %76 to i32
  %sub.i = sub nsw i32 0, %conv19.i
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 1, i32 noundef %sub.i) #6
  %conv24.i = sub i8 %data, %74
  %77 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv24.i, ptr %buf2.i, align 1
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.else.sw.bb26.i_crit_edge, %if.else.sw.bb26.i_crit_edge23
  %78 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %buf2.i, align 1
  %conv28.i = sext i8 %79 to i32
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 0, i32 noundef %conv28.i) #6
  %arrayidx29.i = getelementptr %struct.sermouse, ptr %1, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = sext i8 %81 to i32
  %conv31.i = sext i8 %data to i32
  %sub32.i = sub nsw i32 %conv30.i, %conv31.i
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 1, i32 noundef %sub32.i) #6
  %div3472.i = sdiv i8 %data, 2
  %82 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %div3472.i, ptr %arrayidx29.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb26.i, %sw.bb17.i, %if.end.i, %if.else.sw.epilog.i_crit_edge
  tail call void @input_event(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %83 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %count.i, align 4
  %inc.i18 = add i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc.i18)
  %cmp39.i = icmp eq i8 %inc.i18, 5
  %spec.select.i = select i1 %cmp39.i, i8 0, i8 %inc.i18
  %85 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %spec.select.i, ptr %count.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %sw.epilog.i, %sw.bb.i14.if.end5_crit_edge, %sw.epilog135.i, %if.else.i.if.end5_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sermouse_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extra, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 52) #10
  %call1 = tail call ptr @input_allocate_device() #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %call7.i.i, align 8
  %phys = getelementptr inbounds %struct.sermouse, ptr %call7.i.i, i32 0, i32 5
  %phys3 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %phys3)
  %proto = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %proto, align 1
  %type = getelementptr inbounds %struct.sermouse, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %type, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [8 x ptr], ptr @sermouse_protocols, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call1, align 8
  %phys10 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %10 = ptrtoint ptr %phys10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %phys, ptr %phys10, align 4
  %id11 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %11 = ptrtoint ptr %id11 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 19, ptr %id11, align 4
  %12 = load i8, ptr %type, align 1
  %conv = zext i8 %12 to i16
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %vendor, align 2
  %conv14 = zext i8 %1 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv14, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 256, ptr %version, align 2
  %dev17 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev17, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %17 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %evbit, align 8
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  %arrayidx20 = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 8
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 196608, ptr %arrayidx20, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 7
  %19 = ptrtoint ptr %relbit to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %relbit, align 4
  %conv22 = zext i8 %1 to i32
  %and = and i32 %conv22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end.if.end27_crit_edge, label %if.then24

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 274, ptr noundef %keybit) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end.if.end27_crit_edge
  %and29 = and i32 %conv22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end34_crit_edge, label %if.then31

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 275, ptr noundef %keybit) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge
  %and36 = and i32 %conv22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end41_crit_edge, label %if.then38

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 276, ptr noundef %keybit) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end34.if.end41_crit_edge
  %and43 = and i32 %conv22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.if.end48_crit_edge, label %if.then45

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 8, ptr noundef %relbit) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end41.if.end48_crit_edge
  %and50 = and i32 %conv22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end48.if.end55_crit_edge, label %if.then52

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 6, ptr noundef %relbit) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end48.if.end55_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call56 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.fail2_crit_edge

if.end55.fail2_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

if.end59:                                         ; preds = %if.end55
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %call61 = tail call i32 @input_register_device(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end59.cleanup_crit_edge, label %fail3

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail3:                                            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serio_close(ptr noundef %serio) #6
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end55.fail2_crit_edge
  %err.0 = phi i32 [ %call56, %if.end55.fail2_crit_edge ], [ %call61, %fail3 ]
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #6
  tail call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end59.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sermouse_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @serio_close(ptr noundef %serio) #6
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %4) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/sermouse.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/sermouse.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/sermouse.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_sermouse__231_343_sermouse_drv_init6, !8, !"__initcall__kmod_sermouse__231_343_sermouse_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/mouse/sermouse.c", i32 343, i32 1}
!9 = !{ptr @__exitcall_sermouse_drv_exit, !8, !"__exitcall_sermouse_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/mouse/sermouse.c", i32 336, i32 17}
!13 = !{ptr @sermouse_drv, !14, !"sermouse_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/mouse/sermouse.c", i32 332, i32 28}
!15 = !{ptr @sermouse_serio_ids, !16, !"sermouse_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/mouse/sermouse.c", i32 284, i32 31}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/mouse/sermouse.c", i32 174, i32 6}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sermouse_process_ms._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @sermouse_process_ms._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/mouse/sermouse.c", i32 243, i32 51}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/mouse/sermouse.c", i32 26, i32 45}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/mouse/sermouse.c", i32 26, i32 53}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/mouse/sermouse.c", i32 26, i32 76}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/mouse/sermouse.c", i32 26, i32 89}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/mouse/sermouse.c", i32 27, i32 6}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/mouse/sermouse.c", i32 27, i32 27}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/sermouse.c", i32 27, i32 49}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/mouse/sermouse.c", i32 28, i32 6}
!41 = !{ptr @sermouse_protocols, !42, !"sermouse_protocols", i1 false, i1 false}
!42 = !{!"../drivers/input/mouse/sermouse.c", i32 26, i32 20}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
