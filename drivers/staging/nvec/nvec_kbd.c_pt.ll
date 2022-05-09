; ModuleID = '/llk/IR_all_yes/drivers/staging/nvec/nvec_kbd.c_pt.bc'
source_filename = "../drivers/staging/nvec/nvec_kbd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvec_keys = type { ptr, %struct.notifier_block, ptr, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_nvec_kbd__223_185_nvec_kbd_driver_init6 = internal global ptr @nvec_kbd_driver_init, section ".initcall6.init", align 4
@nvec_kbd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nvec_kbd_probe, ptr @nvec_kbd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nvec_kbd_driver_exit = internal global ptr @nvec_kbd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [48 x i8] c"nvec_kbd.author=Marc Dietrich <marvin24@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [42 x i8] c"nvec_kbd.description=NVEC keyboard driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias226 = internal constant [33 x i8] c"nvec_kbd.alias=platform:nvec-kbd\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [44 x i8] c"nvec_kbd.file=drivers/staging/nvec/nvec_kbd\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [21 x i8] c"nvec_kbd.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nvec-kbd\00", [23 x i8] zeroinitializer }, align 32
@__const.nvec_kbd_probe.cnfg_wake_key_reporting = private unnamed_addr constant [3 x i8] c"\05\04\01", align 1
@code_tab_102us = internal global { [126 x i16], [36 x i8] } { [126 x i16] [i16 41, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 464, i16 0, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 139, i16 116, i16 86, i16 87, i16 88, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 217, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 76, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 73], [36 x i8] zeroinitializer }, align 32
@keycodes = internal global { [236 x i8], [52 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvec keyboard\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nvec\00", [27 x i8] zeroinitializer }, align 32
@keys_dev = internal global { %struct.nvec_keys, [40 x i8] } zeroinitializer, align 32
@extcode_tab_us102 = internal global { <{ [95 x i16], [15 x i16] }>, [36 x i8] } { <{ [95 x i16], [15 x i16] }> <{ [95 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 97, i16 0, i16 0, i16 113, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 115, i16 0, i16 0, i16 0, i16 0, i16 98, i16 0, i16 99, i16 100, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 105, i16 0, i16 0, i16 0, i16 0, i16 223, i16 102, i16 103, i16 104, i16 0, i16 105, i16 0, i16 106, i16 0, i16 107, i16 108, i16 109, i16 110, i16 111, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 125, i16 0, i16 1, i16 74], [15 x i16] zeroinitializer }>, [36 x i8] zeroinitializer }, align 32
@code_tabs = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @code_tab_102us, ptr @extcode_tab_us102], [24 x i8] zeroinitializer }, align 32
@__const.nvec_kbd_toggle_led.buf = private unnamed_addr constant [3 x i8] c"\05\ED\00", align 1
@__const.nvec_kbd_remove.uncnfg_wake_key_reporting = private unnamed_addr constant [3 x i8] c"\05\04\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 20]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"nvec_kbd_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 177, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 181, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"code_tab_102us\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 11, i32 23 }
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"keycodes\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 28, i32 22 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 128, i32 15 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 129, i32 15 }
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"keys_dev\00", align 1
@___asan_gen_.24 = private constant [35 x i8] c"../drivers/staging/nvec/nvec_kbd.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 38, i32 25 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"extcode_tab_us102\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 151, i32 23 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"code_tabs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [40 x i8] c"../drivers/staging/nvec/nvec-keytable.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 294, i32 24 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias226, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_nvec_kbd_driver_exit, ptr @__initcall__kmod_nvec_kbd__223_185_nvec_kbd_driver_init6, ptr @nvec_kbd_driver_exit, ptr @nvec_kbd_driver, ptr @.str, ptr @code_tab_102us, ptr @keycodes, ptr @.str.1, ptr @.str.2, ptr @keys_dev, ptr @extcode_tab_us102, ptr @code_tabs], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_kbd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @code_tab_102us to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keycodes to i32), i32 236, i32 288, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keys_dev to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extcode_tab_us102 to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @code_tabs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_kbd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nvec_kbd_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvec_kbd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @nvec_kbd_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_kbd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clear_leds = alloca [3 x i8], align 1
  %enable_kbd = alloca [2 x i8], align 2
  %cnfg_wake = alloca [4 x i8], align 4
  %cnfg_wake_key_reporting = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %clear_leds) #4
  %4 = call ptr @memcpy(ptr %clear_leds, ptr @__const.nvec_kbd_toggle_led.buf, i32 3)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %enable_kbd) #4
  %5 = ptrtoint ptr %enable_kbd to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1524, ptr %enable_kbd, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnfg_wake) #4
  %6 = ptrtoint ptr %cnfg_wake to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 84082945, ptr %cnfg_wake, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %cnfg_wake_key_reporting) #4
  %7 = call ptr @memcpy(ptr %cnfg_wake_key_reporting, ptr @__const.nvec_kbd_probe.cnfg_wake_key_reporting, i32 3)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %j.079 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [126 x i16], ptr @code_tab_102us, i32 0, i32 %j.079
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv = trunc i16 %9 to i8
  %inc = add nuw nsw i32 %j.079, 1
  %arrayidx1 = getelementptr [236 x i8], ptr @keycodes, i32 0, i32 %j.079
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx1, align 1
  %exitcond.not = icmp eq i32 %inc, 126
  br i1 %exitcond.not, label %for.body.for.body6_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %j.181 = phi i32 [ %inc9, %for.body6.for.body6_crit_edge ], [ 126, %for.body.for.body6_crit_edge ]
  %i.180 = phi i32 [ %inc12, %for.body6.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %arrayidx7 = getelementptr [110 x i16], ptr @extcode_tab_us102, i32 0, i32 %i.180
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx7, align 2
  %conv8 = trunc i16 %12 to i8
  %inc9 = add nuw nsw i32 %j.181, 1
  %arrayidx10 = getelementptr [236 x i8], ptr @keycodes, i32 0, i32 %j.181
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8, ptr %arrayidx10, align 1
  %inc12 = add nuw nsw i32 %i.180, 1
  %exitcond83.not = icmp eq i32 %inc12, 110
  br i1 %exitcond83.not, label %for.end13, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6

for.end13:                                        ; preds = %for.body6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call15 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #4
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %for.end13.cleanup_crit_edge, label %if.end

for.end13.cleanup_crit_edge:                      ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.end13
  %14 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.1, ptr %call15, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 1
  %15 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.2, ptr %phys, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 5
  %16 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1179650, ptr %evbit, align 8
  %ledbit = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 10
  %17 = ptrtoint ptr %ledbit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %ledbit, align 4
  %event = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 34
  %18 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nvec_kbd_event, ptr %event, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 17
  %19 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @keycodes, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 16
  %20 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 15
  %21 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 236, ptr %keycodemax, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call15, i32 0, i32 6
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %if.end
  %i.282 = phi i32 [ 0, %if.end ], [ %inc25, %for.body21.for.body21_crit_edge ]
  %arrayidx22 = getelementptr [236 x i8], ptr @keycodes, i32 0, i32 %i.282
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %23 to i32
  tail call void @_set_bit(i32 noundef %conv23, ptr noundef %keybit) #4
  %inc25 = add nuw nsw i32 %i.282, 1
  %exitcond84.not = icmp eq i32 %inc25, 236
  br i1 %exitcond84.not, label %for.end26, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body21

for.end26:                                        ; preds = %for.body21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %keybit) #4
  %call29 = tail call i32 @input_register_device(ptr noundef nonnull %call15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %for.end26.cleanup_crit_edge

for.end26.cleanup_crit_edge:                      ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %call15, ptr @keys_dev, align 4
  store ptr @nvec_keys_notifier, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 2), align 4
  %call33 = tail call i32 @nvec_register_notifier(ptr noundef %3, ptr noundef getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 1), i32 noundef 0) #4
  %call35 = call i32 @nvec_write_async(ptr noundef %3, ptr noundef nonnull %enable_kbd, i16 noundef signext 2) #4
  %call37 = call i32 @nvec_write_async(ptr noundef %3, ptr noundef nonnull %cnfg_wake, i16 noundef signext 4) #4
  %call39 = call i32 @nvec_write_async(ptr noundef %3, ptr noundef nonnull %cnfg_wake_key_reporting, i16 noundef signext 3) #4
  %call41 = call i32 @nvec_write_async(ptr noundef %3, ptr noundef nonnull %clear_leds, i16 noundef signext 3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %for.end26.cleanup_crit_edge, %for.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -12, %for.end13.cleanup_crit_edge ], [ %call29, %for.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %cnfg_wake_key_reporting) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnfg_wake) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %enable_kbd) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %clear_leds) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_kbd_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %disable_kbd = alloca [2 x i8], align 2
  %uncnfg_wake_key_reporting = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %disable_kbd) #4
  %4 = ptrtoint ptr %disable_kbd to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1525, ptr %disable_kbd, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %uncnfg_wake_key_reporting) #4
  %5 = call ptr @memcpy(ptr %uncnfg_wake_key_reporting, ptr @__const.nvec_kbd_remove.uncnfg_wake_key_reporting, i32 3)
  %call1 = call i32 @nvec_write_async(ptr noundef %3, ptr noundef nonnull %uncnfg_wake_key_reporting, i16 noundef signext 3) #4
  %call3 = call i32 @nvec_write_async(ptr noundef %3, ptr noundef nonnull %disable_kbd, i16 noundef signext 2) #4
  %call4 = call i32 @nvec_unregister_notifier(ptr noundef %3, ptr noundef getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 1)) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %uncnfg_wake_key_reporting) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %disable_kbd) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_kbd_event(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #4
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1517, ptr %buf, align 2
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.then2 [
    i32 20, label %entry.cleanup_crit_edge
    i32 17, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %code)
  %cmp4.not = icmp eq i32 %code, 1
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %conv = zext i1 %tobool to i8
  %arrayidx = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx, align 2
  %call = call i32 @nvec_write_async(ptr noundef %0, ptr noundef nonnull %buf, i16 noundef signext 3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then2 ], [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_keys_notifier(ptr nocapture noundef readnone %nb, i32 noundef %event_type, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %event_type)
  %cmp = icmp eq i32 %event_type, 128
  br i1 %cmp, label %if.then, label %entry.cleanup26_crit_edge

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup26

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = lshr i8 %1, 5
  %3 = and i8 %2, 3
  %4 = zext i8 %3 to i32
  %trunc = trunc i8 %2 to i2
  %5 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.4)
  switch i2 %trunc, label %if.then.if.end7_crit_edge [
    i2 -2, label %if.then.cleanup26_crit_edge
    i2 1, label %if.then6
  ]

if.then.cleanup26_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup26

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge
  %msg.0 = phi ptr [ %incdec.ptr, %if.then6 ], [ %data, %if.then.if.end7_crit_edge ]
  %arrayidx8 = getelementptr i8, ptr %msg.0, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %and10 = and i32 %conv9, 127
  %arrayidx14 = getelementptr [2 x ptr], ptr @code_tabs, i32 0, i32 %4
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr i16, ptr %9, i32 %and10
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 58, i16 %11)
  %cmp17 = icmp ne i16 %11, 58
  %and13 = and i32 %conv9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %cmp17, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end7.if.end20_crit_edge, label %if.then19

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then19:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #4
  %12 = call ptr @memcpy(ptr %buf.i, ptr @__const.nvec_kbd_toggle_led.buf, i32 3)
  %13 = load i8, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 3), align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %14 = xor i8 %13, 1
  store i8 %14, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 3), align 4
  br i1 %tobool.not.i, label %if.then.i, label %if.then19.nvec_kbd_toggle_led.exit_crit_edge

if.then19.nvec_kbd_toggle_led.exit_crit_edge:     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvec_kbd_toggle_led.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 7, ptr %arrayidx.i, align 1
  br label %nvec_kbd_toggle_led.exit

nvec_kbd_toggle_led.exit:                         ; preds = %if.then.i, %if.then19.nvec_kbd_toggle_led.exit_crit_edge
  %16 = load ptr, ptr getelementptr inbounds (%struct.nvec_keys, ptr @keys_dev, i32 0, i32 2), align 4
  %call.i = call i32 @nvec_write_async(ptr noundef %16, ptr noundef nonnull %buf.i, i16 noundef signext 3) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #4
  br label %if.end20

if.end20:                                         ; preds = %nvec_kbd_toggle_led.exit, %if.end7.if.end20_crit_edge
  %17 = load ptr, ptr @keys_dev, align 4
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx15, align 2
  %conv23 = zext i16 %19 to i32
  %and13.lobit.mask.lobit = lshr i32 %conv9, 7
  %20 = xor i32 %and13.lobit.mask.lobit, 1
  call void @input_event(ptr noundef %17, i32 noundef 1, i32 noundef %conv23, i32 noundef %20) #4
  %21 = load ptr, ptr @keys_dev, align 4
  call void @input_event(ptr noundef %21, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %cleanup26

cleanup26:                                        ; preds = %if.end20, %if.then.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.1 = phi i32 [ 32769, %if.then.cleanup26_crit_edge ], [ 32769, %if.end20 ], [ 0, %entry.cleanup26_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_register_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_write_async(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_nvec_kbd__223_185_nvec_kbd_driver_init6, !1, !"__initcall__kmod_nvec_kbd__223_185_nvec_kbd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/nvec/nvec_kbd.c", i32 185, i32 1}
!2 = !{ptr @__exitcall_nvec_kbd_driver_exit, !1, !"__exitcall_nvec_kbd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/staging/nvec/nvec_kbd.c", i32 187, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/staging/nvec/nvec_kbd.c", i32 188, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias226, !8, !"__UNIQUE_ID_alias226", i1 false, i1 false}
!8 = !{!"../drivers/staging/nvec/nvec_kbd.c", i32 189, i32 1}
!9 = !{ptr @__UNIQUE_ID_file227, !10, !"__UNIQUE_ID_file227", i1 false, i1 false}
!10 = !{!"../drivers/staging/nvec/nvec_kbd.c", i32 190, i32 1}
!11 = !{ptr @__UNIQUE_ID_license228, !10, !"__UNIQUE_ID_license228", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/nvec/nvec_kbd.c", i32 181, i32 11}
!14 = !{ptr @nvec_kbd_driver, !15, !"nvec_kbd_driver", i1 false, i1 false}
!15 = !{!"../drivers/staging/nvec/nvec_kbd.c", i32 177, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/nvec/nvec_kbd.c", i32 128, i32 15}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/nvec/nvec_kbd.c", i32 129, i32 15}
!20 = !{ptr @code_tab_102us, !21, !"code_tab_102us", i1 false, i1 false}
!21 = !{!"../drivers/staging/nvec/nvec-keytable.h", i32 11, i32 23}
!22 = !{ptr @keycodes, !23, !"keycodes", i1 false, i1 false}
!23 = !{!"../drivers/staging/nvec/nvec_kbd.c", i32 28, i32 22}
!24 = !{ptr @extcode_tab_us102, !25, !"extcode_tab_us102", i1 false, i1 false}
!25 = !{!"../drivers/staging/nvec/nvec-keytable.h", i32 151, i32 23}
!26 = !{ptr @keys_dev, !27, !"keys_dev", i1 false, i1 false}
!27 = !{!"../drivers/staging/nvec/nvec_kbd.c", i32 38, i32 25}
!28 = !{ptr @code_tabs, !29, !"code_tabs", i1 false, i1 false}
!29 = !{!"../drivers/staging/nvec/nvec-keytable.h", i32 294, i32 24}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i8 0, i8 2}
