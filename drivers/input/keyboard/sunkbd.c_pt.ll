; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/sunkbd.c_pt.bc'
source_filename = "../drivers/input/keyboard/sunkbd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sunkbd = type { [128 x i8], ptr, ptr, %struct.work_struct, %struct.wait_queue_head, [64 x i8], [32 x i8], i8, i8, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [46 x i8] c"sunkbd.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [39 x i8] c"sunkbd.description=Sun keyboard driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [42 x i8] c"sunkbd.file=drivers/input/keyboard/sunkbd\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [19 x i8] c"sunkbd.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_sunkbd__231_380_sunkbd_drv_init6 = internal global ptr @sunkbd_drv_init, section ".initcall6.init", align 4
@sunkbd_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @sunkbd_serio_ids, i8 0, ptr null, ptr @sunkbd_interrupt, ptr @sunkbd_connect, ptr null, ptr null, ptr @sunkbd_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sunkbd_drv_exit = internal global ptr @sunkbd_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sunkbd\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sun keyboard driver\00", [44 x i8] zeroinitializer }, align 32
@sunkbd_serio_ids = internal constant { [3 x %struct.serio_device_id], [20 x i8] } { [3 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 16 }, %struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 0 }, %struct.serio_device_id zeroinitializer], [20 x i8] zeroinitializer }, align 32
@sunkbd_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014sunkbd.c: Unknown key (scancode %#x) %s.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sunkbd_interrupt\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/keyboard/sunkbd.c\00", [32 x i8] zeroinitializer }, align 32
@sunkbd_interrupt._entry_ptr = internal global ptr @sunkbd_interrupt._entry, section ".printk_index", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"released\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pressed\00", [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sunkbd_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sunkbd->wait\00", [18 x i8] zeroinitializer }, align 32
@sunkbd_connect.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&sunkbd->tq)\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sun Type %d keyboard\00", [43 x i8] zeroinitializer }, align 32
@sunkbd_keycode = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\00\80r\81s;<D=W>X?d@pABC8gwcFi\82\83lj\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D)\0Enqb7t\84S\85f\0F\10\11\12\13\14\15\16\17\18\19\1A\1Bo\7FGHIJ\86\87k\00\1D\1E\1F !\22#$%&'(+\1C`KLMR\88h\89E*,-./0123456eOPQ\00\00\00\8A:}9~mVN\00\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 127, i64 254, i64 255]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 18]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"sunkbd_drv\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 369, i32 28 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 380, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 373, i32 17 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"sunkbd_serio_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 351, i32 37 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 124, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 276, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 277, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 278, i32 47 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 292, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"sunkbd_keycode\00", align 1
@___asan_gen_.63 = private constant [35 x i8] c"../drivers/input/keyboard/sunkbd.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 28, i32 22 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_sunkbd_drv_exit, ptr @__initcall__kmod_sunkbd__231_380_sunkbd_drv_init6, ptr @sunkbd_drv_exit, ptr @sunkbd_interrupt._entry, ptr @sunkbd_interrupt._entry_ptr, ptr @sunkbd_drv, ptr @.str, ptr @.str.1, ptr @sunkbd_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sunkbd_connect.__key, ptr @.str.7, ptr @sunkbd_connect.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @sunkbd_keycode], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunkbd_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunkbd_serio_ids to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunkbd_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunkbd_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunkbd_connect.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunkbd_keycode to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunkbd_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @sunkbd_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunkbd_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @serio_unregister_driver(ptr noundef nonnull @sunkbd_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunkbd_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp slt i8 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 %data, ptr %reset, align 2
  %wait = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %out

if.end:                                           ; preds = %entry
  %layout = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %layout to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %layout, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp4 = icmp eq i8 %6, -1
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %layout to i32
  call void @__asan_store1_noabort(i32 %7)
  store volatile i8 %data, ptr %layout, align 1
  %wait8 = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait8, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %out

if.end9:                                          ; preds = %if.end
  %conv10 = zext i8 %data to i32
  %8 = zext i8 %data to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %data, label %sw.default [
    i8 -1, label %sw.bb
    i8 -2, label %sw.bb15
    i8 127, label %if.end9.out_crit_edge
  ]

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %if.end9
  %enabled = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %sw.bb.if.end13_crit_edge, label %if.then11

sw.bb.if.end13_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %tq = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %tq) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %sw.bb.if.end13_crit_edge
  %12 = ptrtoint ptr %reset to i32
  call void @__asan_store1_noabort(i32 %12)
  store volatile i8 -1, ptr %reset, align 2
  br label %out

sw.bb15:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %layout to i32
  call void @__asan_store1_noabort(i32 %13)
  store volatile i8 -1, ptr %layout, align 1
  br label %out

sw.default:                                       ; preds = %if.end9
  %enabled17 = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %enabled17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled17, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  br i1 %tobool18.not, label %sw.default.out_crit_edge, label %if.end20

sw.default.out_crit_edge:                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end20:                                         ; preds = %sw.default
  %and = and i32 %conv10, 127
  %arrayidx = getelementptr [128 x i8], ptr %1, i32 0, i32 %and
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not = icmp eq i8 %17, 0
  br i1 %tobool22.not, label %do.end, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %conv28 = zext i8 %17 to i32
  %and30.lobit.mask.lobit = lshr i32 %conv10, 7
  %20 = xor i32 %and30.lobit.mask.lobit, 1
  tail call void @input_event(ptr noundef %19, i32 noundef 1, i32 noundef %conv28, i32 noundef %20) #7
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void @input_event(ptr noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %out

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %and36 = and i32 %conv10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %cond = select i1 %tobool37.not, ptr @.str.6, ptr @.str.5
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %and, ptr noundef nonnull %cond) #10
  br label %out

out:                                              ; preds = %do.end, %if.then23, %sw.default.out_crit_edge, %sw.bb15, %if.end13, %if.end9.out_crit_edge, %if.then6, %if.then
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunkbd_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry89.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 332) #11
  %call1 = tail call ptr @input_allocate_device() #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end:                                           ; preds = %entry
  %serio3 = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %serio3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %serio, ptr %serio3, align 4
  %dev = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %dev, align 8
  %wait = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.7, ptr noundef nonnull @sunkbd_connect.__key) #7
  %tq = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %tq, i32 noundef 0) #7
  %3 = ptrtoint ptr %tq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %tq, align 8
  %lockdep_map = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @sunkbd_connect.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry8 = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry8, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sunkbd_reinit, ptr %func, align 4
  %phys = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 6
  %phys12 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef %phys12)
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call15 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end.fail2_crit_edge

if.end.fail2_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

if.end18:                                         ; preds = %if.end
  %reset.i = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %reset.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store volatile i8 -2, ptr %reset.i, align 2
  %9 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serio3, align 4
  %write.i.i = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end18.serio_write.exit.i_crit_edge, label %if.then.i.i

if.end18.serio_write.exit.i_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %serio_write.exit.i

if.then.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 %12(ptr noundef %10, i8 noundef zeroext 1) #7
  br label %serio_write.exit.i

serio_write.exit.i:                               ; preds = %if.then.i.i, %if.end18.serio_write.exit.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 183) #7
  %13 = ptrtoint ptr %reset.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %reset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp.i = icmp sgt i8 %14, -1
  br i1 %cmp.i, label %serio_write.exit.i.if.end44.i_crit_edge, label %if.then12.i

serio_write.exit.i.if.end44.i_crit_edge:          ; preds = %serio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then12.i:                                      ; preds = %serio_write.exit.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %15 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %call14200.i = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %16 = ptrtoint ptr %reset.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load volatile i8, ptr %reset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp18201.i = icmp sgt i8 %17, -1
  br i1 %cmp18201.i, label %if.then12.i.for.end.i_crit_edge, label %if.then12.i.if.end37.i_crit_edge

if.then12.i.if.end37.i_crit_edge:                 ; preds = %if.then12.i
  br label %if.end37.i

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end37.i:                                       ; preds = %cleanup.i.if.end37.i_crit_edge, %if.then12.i.if.end37.i_crit_edge
  %__ret13.1203.i = phi i32 [ %__ret13.1.i, %cleanup.i.if.end37.i_crit_edge ], [ 100, %if.then12.i.if.end37.i_crit_edge ]
  %call14202.i = phi i32 [ %call14.i, %cleanup.i.if.end37.i_crit_edge ], [ %call14200.i, %if.then12.i.if.end37.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14202.i)
  %tobool38.not.i = icmp eq i32 %call14202.i, 0
  br i1 %tobool38.not.i, label %cleanup.i, label %if.end37.i.__out.i_crit_edge

if.end37.i.__out.i_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out.i

cleanup.i:                                        ; preds = %if.end37.i
  %call41.i = call i32 @schedule_timeout(i32 noundef %__ret13.1203.i) #7
  %call14.i = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %18 = ptrtoint ptr %reset.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %reset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp18.i = icmp sgt i8 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool24.not.i = icmp eq i32 %call41.i, 0
  %20 = select i1 %cmp18.i, i1 %tobool24.not.i, i1 false
  %__ret13.1.i = select i1 %20, i32 1, i32 %call41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1.i)
  %tobool31.not.i = icmp eq i32 %__ret13.1.i, 0
  %21 = select i1 %cmp18.i, i1 true, i1 %tobool31.not.i
  br i1 %21, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end37.i_crit_edge

cleanup.i.if.end37.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then12.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry.i) #7
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end37.i.__out.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %if.end44.i

if.end44.i:                                       ; preds = %__out.i, %serio_write.exit.i.if.end44.i_crit_edge
  %22 = ptrtoint ptr %reset.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %reset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp48.i = icmp slt i8 %23, 0
  br i1 %cmp48.i, label %if.end44.i.fail3_crit_edge, label %if.end51.i

if.end44.i.fail3_crit_edge:                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail3

if.end51.i:                                       ; preds = %if.end44.i
  %24 = ptrtoint ptr %reset.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %reset.i, align 2
  %type.i = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %cmp55.i = icmp eq i8 %25, 4
  br i1 %cmp55.i, label %if.then57.i, label %if.end51.i.if.end21_crit_edge

if.end51.i.if.end21_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then57.i:                                      ; preds = %if.end51.i
  %layout.i = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %layout.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store volatile i8 -2, ptr %layout.i, align 1
  %28 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %serio3, align 4
  %write.i183.i = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %write.i183.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i183.i, align 8
  %tobool.not.i184.i = icmp eq ptr %31, null
  br i1 %tobool.not.i184.i, label %if.then57.i.serio_write.exit187.i_crit_edge, label %if.then.i186.i

if.then57.i.serio_write.exit187.i_crit_edge:      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %serio_write.exit187.i

if.then.i186.i:                                   ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i185.i = call i32 %31(ptr noundef %29, i8 noundef zeroext 15) #7
  br label %serio_write.exit187.i

serio_write.exit187.i:                            ; preds = %if.then.i186.i, %if.then57.i.serio_write.exit187.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 193) #7
  %32 = ptrtoint ptr %layout.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %layout.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp70.i = icmp sgt i8 %33, -1
  br i1 %cmp70.i, label %serio_write.exit187.i.if.end129.i_crit_edge, label %if.then88.i

serio_write.exit187.i.if.end129.i_crit_edge:      ; preds = %serio_write.exit187.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.i

if.then88.i:                                      ; preds = %serio_write.exit187.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry89.i) #7
  %34 = call ptr @memset(ptr %__wq_entry89.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry89.i, i32 noundef 0) #7
  %call94204.i = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry89.i, i32 noundef 1) #7
  %35 = ptrtoint ptr %layout.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %layout.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp98205.i = icmp sgt i8 %36, -1
  br i1 %cmp98205.i, label %if.then88.i.for.end125.i_crit_edge, label %if.then88.i.if.end117.i_crit_edge

if.then88.i.if.end117.i_crit_edge:                ; preds = %if.then88.i
  br label %if.end117.i

if.then88.i.for.end125.i_crit_edge:               ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end125.i

if.end117.i:                                      ; preds = %cleanup122.i.if.end117.i_crit_edge, %if.then88.i.if.end117.i_crit_edge
  %__ret90.1207.i = phi i32 [ %__ret90.1.i, %cleanup122.i.if.end117.i_crit_edge ], [ 25, %if.then88.i.if.end117.i_crit_edge ]
  %call94206.i = phi i32 [ %call94.i, %cleanup122.i.if.end117.i_crit_edge ], [ %call94204.i, %if.then88.i.if.end117.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94206.i)
  %tobool118.not.i = icmp eq i32 %call94206.i, 0
  br i1 %tobool118.not.i, label %cleanup122.i, label %if.end117.i.__out127.i_crit_edge

if.end117.i.__out127.i_crit_edge:                 ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out127.i

cleanup122.i:                                     ; preds = %if.end117.i
  %call121.i = call i32 @schedule_timeout(i32 noundef %__ret90.1207.i) #7
  %call94.i = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry89.i, i32 noundef 1) #7
  %37 = ptrtoint ptr %layout.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %layout.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %cmp98.i = icmp sgt i8 %38, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i)
  %tobool104.not.i = icmp eq i32 %call121.i, 0
  %39 = select i1 %cmp98.i, i1 %tobool104.not.i, i1 false
  %__ret90.1.i = select i1 %39, i32 1, i32 %call121.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret90.1.i)
  %tobool111.not.i = icmp eq i32 %__ret90.1.i, 0
  %40 = select i1 %cmp98.i, i1 true, i1 %tobool111.not.i
  br i1 %40, label %cleanup122.i.for.end125.i_crit_edge, label %cleanup122.i.if.end117.i_crit_edge

cleanup122.i.if.end117.i_crit_edge:               ; preds = %cleanup122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.i

cleanup122.i.for.end125.i_crit_edge:              ; preds = %cleanup122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end125.i

for.end125.i:                                     ; preds = %cleanup122.i.for.end125.i_crit_edge, %if.then88.i.for.end125.i_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry89.i) #7
  br label %__out127.i

__out127.i:                                       ; preds = %for.end125.i, %if.end117.i.__out127.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry89.i) #7
  br label %if.end129.i

if.end129.i:                                      ; preds = %__out127.i, %serio_write.exit187.i.if.end129.i_crit_edge
  %41 = ptrtoint ptr %layout.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load volatile i8, ptr %layout.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp133.i = icmp slt i8 %42, 0
  br i1 %cmp133.i, label %if.end129.i.fail3_crit_edge, label %if.end136.i

if.end129.i.fail3_crit_edge:                      ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail3

if.end136.i:                                      ; preds = %if.end129.i
  %43 = ptrtoint ptr %layout.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load volatile i8, ptr %layout.i, align 1
  %45 = and i8 %44, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool139.not.i = icmp eq i8 %45, 0
  br i1 %tobool139.not.i, label %if.end136.i.if.end21_crit_edge, label %if.then140.i

if.end136.i.if.end21_crit_edge:                   ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then140.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 5, ptr %type.i, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then140.i, %if.end136.i.if.end21_crit_edge, %if.end51.i.if.end21_crit_edge
  %name = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %type.i, align 8
  %conv = zext i8 %48 to i32
  %call23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 64, ptr noundef nonnull @.str.11, i32 noundef %conv)
  %49 = call ptr @memcpy(ptr %call7.i.i, ptr @sunkbd_keycode, i32 128)
  %50 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %name, ptr %call1, align 8
  %phys30 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %51 = ptrtoint ptr %phys30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %phys, ptr %phys30, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %52 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 19, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 16, ptr %vendor, align 2
  %54 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type.i, align 8
  %conv33 = zext i8 %55 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv33, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 256, ptr %version, align 2
  %dev36 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %58 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dev36, ptr %parent, align 8
  %driver_data.i.i112 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 8
  %59 = ptrtoint ptr %driver_data.i.i112 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i, ptr %driver_data.i.i112, align 4
  %event = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 34
  %60 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @sunkbd_event, ptr %event, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %61 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1441794, ptr %evbit, align 8
  %ledbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 10
  %62 = ptrtoint ptr %ledbit to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 15, ptr %ledbit, align 4
  %sndbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 11
  %63 = ptrtoint ptr %sndbit to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3, ptr %sndbit, align 8
  %keycode42 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 17
  %64 = ptrtoint ptr %keycode42 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i, ptr %keycode42, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 16
  %65 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 15
  %66 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 128, ptr %keycodemax, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end21
  %i.0122 = phi i32 [ 0, %if.end21 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx46 = getelementptr [128 x i8], ptr %call7.i.i, i32 0, i32 %i.0122
  %67 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %68 to i32
  %rem.i = and i32 %conv47, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv47, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %70
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %71 = ptrtoint ptr %keybit to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %keybit, align 4
  %and.i = and i32 %72, -2
  store i32 %and.i, ptr %keybit, align 4
  %73 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %serio3, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %74, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #7
  %enabled.i = getelementptr inbounds %struct.sunkbd, ptr %call7.i.i, i32 0, i32 8
  %75 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %enabled.i, align 1
  %76 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %serio3, align 4
  %lock.i9.i = getelementptr inbounds %struct.serio, ptr %77, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i9.i) #7
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 8
  %call52 = call i32 @input_register_device(ptr noundef %79) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %for.end.cleanup_crit_edge, label %fail4

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail4:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %serio3, align 4
  %lock.i.i115 = getelementptr inbounds %struct.serio, ptr %81, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i.i115) #7
  %82 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %enabled.i, align 1
  %83 = ptrtoint ptr %serio3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %serio3, align 4
  %lock.i9.i117 = getelementptr inbounds %struct.serio, ptr %84, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i9.i117) #7
  call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %call.i = call zeroext i1 @cancel_work_sync(ptr noundef %tq) #7
  br label %fail3

fail3:                                            ; preds = %fail4, %if.end129.i.fail3_crit_edge, %if.end44.i.fail3_crit_edge
  %err.0 = phi i32 [ %call52, %fail4 ], [ -19, %if.end44.i.fail3_crit_edge ], [ -19, %if.end129.i.fail3_crit_edge ]
  call void @serio_close(ptr noundef %serio) #7
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end.fail2_crit_edge
  %err.1 = phi i32 [ %call15, %if.end.fail2_crit_edge ], [ %err.0, %fail3 ]
  %85 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.2 = phi i32 [ %err.1, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  call void @input_free_device(ptr noundef %call1) #7
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail1, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %fail1 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunkbd_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %serio.i = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serio.i, align 4
  %lock.i.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #7
  %enabled.i = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled.i, align 1
  %5 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serio.i, align 4
  %lock.i9.i = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i9.i) #7
  %wait.i = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %tq.i = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 3
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %tq.i) #7
  %dev = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void @input_unregister_device(ptr noundef %8) #7
  tail call void @serio_close(ptr noundef %serio) #7
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunkbd_reinit(ptr noundef %work) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 239) #7
  %reset = getelementptr i8, ptr %work, i32 194
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp sgt i8 %1, -1
  br i1 %cmp, label %entry.if.end53_crit_edge, label %lor.rhs

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

lor.rhs:                                          ; preds = %entry
  %enabled = getelementptr i8, ptr %work, i32 193
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.rhs.if.end53_crit_edge, label %if.then16

lor.rhs.if.end53_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then16:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %wait = getelementptr i8, ptr %work, i32 44
  %call92 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp2193 = icmp sgt i8 %6, -1
  br i1 %cmp2193, label %if.then16.for.end_crit_edge, label %if.then16.lor.end27_crit_edge

if.then16.lor.end27_crit_edge:                    ; preds = %if.then16
  br label %lor.end27

if.then16.for.end_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lor.end27:                                        ; preds = %cleanup.lor.end27_crit_edge, %if.then16.lor.end27_crit_edge
  %call95 = phi i32 [ %call, %cleanup.lor.end27_crit_edge ], [ %call92, %if.then16.lor.end27_crit_edge ]
  %__ret17.094 = phi i32 [ %call50, %cleanup.lor.end27_crit_edge ], [ 100, %if.then16.lor.end27_crit_edge ]
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool25.not = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret17.094)
  %tobool40.not = icmp eq i32 %__ret17.094, 0
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool40.not
  br i1 %or.cond, label %lor.end27.for.end_crit_edge, label %if.end46

lor.end27.for.end_crit_edge:                      ; preds = %lor.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end46:                                         ; preds = %lor.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool47.not = icmp eq i32 %call95, 0
  br i1 %tobool47.not, label %cleanup, label %if.end46.__out_crit_edge

if.end46.__out_crit_edge:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end46
  %call50 = call i32 @schedule_timeout(i32 noundef %__ret17.094) #7
  %call = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %9 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %reset, align 2
  %cmp21 = icmp sgt i8 %10, -1
  br i1 %cmp21, label %cleanup.for.end_crit_edge, label %cleanup.lor.end27_crit_edge

cleanup.lor.end27_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end27

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.end27.for.end_crit_edge, %if.then16.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end46.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end53

if.end53:                                         ; preds = %__out, %lor.rhs.if.end53_crit_edge, %entry.if.end53_crit_edge
  %11 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp57 = icmp sgt i8 %12, -1
  br i1 %cmp57, label %land.lhs.true59, label %if.end53.if.end64_crit_edge

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

land.lhs.true59:                                  ; preds = %if.end53
  %enabled60 = getelementptr i8, ptr %work, i32 193
  %13 = ptrtoint ptr %enabled60 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enabled60, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool61.not = icmp eq i8 %14, 0
  br i1 %tobool61.not, label %land.lhs.true59.if.end64_crit_edge, label %if.then63

land.lhs.true59.if.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then63:                                        ; preds = %land.lhs.true59
  %serio.i = getelementptr i8, ptr %work, i32 -4
  %15 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serio.i, align 4
  %write.i.i = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.then63.serio_write.exit.i_crit_edge, label %if.then.i.i

if.then63.serio_write.exit.i_crit_edge:           ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %serio_write.exit.i

if.then.i.i:                                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 %18(ptr noundef %16, i8 noundef zeroext 14) #7
  br label %serio_write.exit.i

serio_write.exit.i:                               ; preds = %if.then.i.i, %if.then63.serio_write.exit.i_crit_edge
  %19 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serio.i, align 4
  %dev.i = getelementptr i8, ptr %work, i32 -8
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %led.i = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 28
  %23 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %led.i, align 4
  %25 = load volatile i32, ptr %led.i, align 4
  %26 = load volatile i32, ptr %led.i, align 4
  %27 = load volatile i32, ptr %led.i, align 4
  %write.i77.i = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 7
  %28 = ptrtoint ptr %write.i77.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write.i77.i, align 8
  %tobool.not.i78.i = icmp eq ptr %29, null
  br i1 %tobool.not.i78.i, label %serio_write.exit.i.serio_write.exit81.i_crit_edge, label %if.then.i80.i

serio_write.exit.i.serio_write.exit81.i_crit_edge: ; preds = %serio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %serio_write.exit81.i

if.then.i80.i:                                    ; preds = %serio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = trunc i32 %24 to i8
  %31 = shl i8 %30, 2
  %32 = and i8 %31, 8
  %33 = trunc i32 %25 to i8
  %34 = and i8 %33, 4
  %or.i = or i8 %32, %34
  %35 = trunc i32 %26 to i8
  %36 = lshr i8 %35, 2
  %37 = and i8 %36, 2
  %or24.i = or i8 %or.i, %37
  %38 = trunc i32 %27 to i8
  %39 = and i8 %38, 1
  %or34.i = or i8 %or24.i, %39
  %call.i79.i = call i32 %29(ptr noundef %20, i8 noundef zeroext %or34.i) #7
  br label %serio_write.exit81.i

serio_write.exit81.i:                             ; preds = %if.then.i80.i, %serio_write.exit.i.serio_write.exit81.i_crit_edge
  %40 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %serio.i, align 4
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %snd.i = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 29
  %44 = ptrtoint ptr %snd.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %snd.i, align 4
  %write.i82.i = getelementptr inbounds %struct.serio, ptr %41, i32 0, i32 7
  %46 = ptrtoint ptr %write.i82.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write.i82.i, align 8
  %tobool.not.i83.i = icmp eq ptr %47, null
  br i1 %tobool.not.i83.i, label %serio_write.exit81.i.serio_write.exit86.i_crit_edge, label %if.then.i85.i

serio_write.exit81.i.serio_write.exit86.i_crit_edge: ; preds = %serio_write.exit81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %serio_write.exit86.i

if.then.i85.i:                                    ; preds = %serio_write.exit81.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.i74.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i74.i)
  %tobool40.not.i = icmp eq i32 %and1.i74.i, 0
  %conv45.i = select i1 %tobool40.not.i, i8 11, i8 10
  %call.i84.i = call i32 %47(ptr noundef %41, i8 noundef zeroext %conv45.i) #7
  br label %serio_write.exit86.i

serio_write.exit86.i:                             ; preds = %if.then.i85.i, %serio_write.exit81.i.serio_write.exit86.i_crit_edge
  %48 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %serio.i, align 4
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %snd49.i = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 29
  %52 = ptrtoint ptr %snd49.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %snd49.i, align 4
  %write.i87.i = getelementptr inbounds %struct.serio, ptr %49, i32 0, i32 7
  %54 = ptrtoint ptr %write.i87.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write.i87.i, align 8
  %tobool.not.i88.i = icmp eq ptr %55, null
  br i1 %tobool.not.i88.i, label %serio_write.exit86.i.if.end64_crit_edge, label %if.then.i90.i

serio_write.exit86.i.if.end64_crit_edge:          ; preds = %serio_write.exit86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then.i90.i:                                    ; preds = %serio_write.exit86.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool52.not.i = icmp eq i32 %56, 0
  %conv58.i = select i1 %tobool52.not.i, i8 3, i8 2
  %call.i89.i = call i32 %55(ptr noundef %49, i8 noundef zeroext %conv58.i) #7
  br label %if.end64

if.end64:                                         ; preds = %if.then.i90.i, %serio_write.exit86.i.if.end64_crit_edge, %land.lhs.true59.if.end64_crit_edge, %if.end53.if.end64_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunkbd_event(ptr noundef %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 17, label %sw.bb
    i32 18, label %sw.bb34
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %serio = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serio, align 4
  %write.i = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %sw.bb.serio_write.exit_crit_edge, label %if.then.i

sw.bb.serio_write.exit_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %serio_write.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %6(ptr noundef %4, i8 noundef zeroext 14) #7
  br label %serio_write.exit

serio_write.exit:                                 ; preds = %if.then.i, %sw.bb.serio_write.exit_crit_edge
  %7 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serio, align 4
  %led = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 28
  %9 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %led, align 4
  %11 = load volatile i32, ptr %led, align 4
  %12 = load volatile i32, ptr %led, align 4
  %13 = load volatile i32, ptr %led, align 4
  %write.i58 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 7
  %14 = ptrtoint ptr %write.i58 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i58, align 8
  %tobool.not.i59 = icmp eq ptr %15, null
  br i1 %tobool.not.i59, label %serio_write.exit.cleanup_crit_edge, label %if.then.i61

serio_write.exit.cleanup_crit_edge:               ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i61:                                      ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = trunc i32 %10 to i8
  %17 = shl i8 %16, 2
  %18 = and i8 %17, 8
  %19 = trunc i32 %11 to i8
  %20 = and i8 %19, 4
  %or = or i8 %18, %20
  %21 = trunc i32 %12 to i8
  %22 = lshr i8 %21, 2
  %23 = and i8 %22, 2
  %or23 = or i8 %or, %23
  %24 = trunc i32 %13 to i8
  %25 = and i8 %24, 1
  %or32 = or i8 %or23, %25
  %call.i60 = tail call i32 %15(ptr noundef %8, i8 noundef zeroext %or32) #7
  br label %cleanup

sw.bb34:                                          ; preds = %entry
  %26 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %code, label %sw.bb34.cleanup_crit_edge [
    i32 0, label %sw.bb35
    i32 1, label %sw.bb39
  ]

sw.bb34.cleanup_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb35:                                          ; preds = %sw.bb34
  %serio36 = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %serio36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %serio36, align 4
  %write.i63 = getelementptr inbounds %struct.serio, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %write.i63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write.i63, align 8
  %tobool.not.i64 = icmp eq ptr %30, null
  br i1 %tobool.not.i64, label %sw.bb35.cleanup_crit_edge, label %if.then.i66

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i66:                                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  %31 = trunc i32 %value to i8
  %conv37 = sub i8 11, %31
  %call.i65 = tail call i32 %30(ptr noundef %28, i8 noundef zeroext %conv37) #7
  br label %cleanup

sw.bb39:                                          ; preds = %sw.bb34
  %serio40 = getelementptr inbounds %struct.sunkbd, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %serio40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %serio40, align 4
  %write.i68 = getelementptr inbounds %struct.serio, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %write.i68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i68, align 8
  %tobool.not.i69 = icmp eq ptr %35, null
  br i1 %tobool.not.i69, label %sw.bb39.cleanup_crit_edge, label %if.then.i71

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i71:                                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  %36 = trunc i32 %value to i8
  %conv42 = sub i8 3, %36
  %call.i70 = tail call i32 %35(ptr noundef %33, i8 noundef zeroext %conv42) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i71, %sw.bb39.cleanup_crit_edge, %if.then.i66, %sw.bb35.cleanup_crit_edge, %sw.bb34.cleanup_crit_edge, %if.then.i61, %serio_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb34.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ 0, %serio_write.exit.cleanup_crit_edge ], [ 0, %if.then.i61 ], [ 0, %sw.bb35.cleanup_crit_edge ], [ 0, %if.then.i66 ], [ 0, %sw.bb39.cleanup_crit_edge ], [ 0, %if.then.i71 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/sunkbd.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/keyboard/sunkbd.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/keyboard/sunkbd.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_sunkbd__231_380_sunkbd_drv_init6, !8, !"__initcall__kmod_sunkbd__231_380_sunkbd_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/sunkbd.c", i32 380, i32 1}
!9 = !{ptr @__exitcall_sunkbd_drv_exit, !8, !"__exitcall_sunkbd_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/keyboard/sunkbd.c", i32 373, i32 17}
!13 = !{ptr @sunkbd_drv, !14, !"sunkbd_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/keyboard/sunkbd.c", i32 369, i32 28}
!15 = !{ptr @sunkbd_serio_ids, !16, !"sunkbd_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/keyboard/sunkbd.c", i32 351, i32 37}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/keyboard/sunkbd.c", i32 124, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sunkbd_interrupt._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @sunkbd_interrupt._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sunkbd_connect.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/input/keyboard/sunkbd.c", i32 276, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sunkbd_connect.__key.8, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/sunkbd.c", i32 277, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/keyboard/sunkbd.c", i32 278, i32 47}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/keyboard/sunkbd.c", i32 292, i32 4}
!35 = !{ptr @sunkbd_keycode, !36, !"sunkbd_keycode", i1 false, i1 false}
!36 = !{!"../drivers/input/keyboard/sunkbd.c", i32 28, i32 22}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i8 0, i8 2}
