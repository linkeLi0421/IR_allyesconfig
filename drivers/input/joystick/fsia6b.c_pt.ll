; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/fsia6b.c_pt.bc'
source_filename = "../drivers/input/joystick/fsia6b.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.fsia6b = type { ptr, %struct.ibus_packet, [32 x i8] }
%struct.ibus_packet = type { i32, i32, i16, [14 x i16] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [50 x i8] c"fsia6b.author=Markus Koch <markus@notsyncing.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [44 x i8] c"fsia6b.description=FS-iA6B iBus RC receiver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [42 x i8] c"fsia6b.file=drivers/input/joystick/fsia6b\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [19 x i8] c"fsia6b.license=GPL\00", section ".modinfo", align 1
@__param_str_switch_config = internal constant [21 x i8] c"fsia6b.switch_config\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@switch_config = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_switch_config = internal constant %struct.kernel_param { ptr @__param_str_switch_config, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @switch_config } }, section "__param", align 4
@__UNIQUE_ID_switch_configtype231 = internal constant [36 x i8] c"fsia6b.parmtype=switch_config:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_switch_config232 = internal constant [86 x i8] c"fsia6b.parm=switch_config:Amount of switch positions per channel (14 characters, 0-3)\00", section ".modinfo", align 1
@__initcall__kmod_fsia6b__233_231_fsia6b_serio_drv_init6 = internal global ptr @fsia6b_serio_drv_init, section ".initcall6.init", align 4
@fsia6b_serio_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.2, ptr @fsia6b_serio_ids, i8 0, ptr null, ptr @fsia6b_serio_irq, ptr @fsia6b_serio_connect, ptr null, ptr null, ptr @fsia6b_serio_disconnect, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_fsia6b_serio_drv_exit = internal global ptr @fsia6b_serio_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"00000022320000\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fsia6b\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FS-iA6B iBus RC receiver\00", [39 x i8] zeroinitializer }, align 32
@fsia6b_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 66 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@fsia6b_axes = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23], [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@fsia6b_serio_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 170, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid switch configuration supplied for fsia6b.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsia6b_serio_connect\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/joystick/fsia6b.c\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsia6b_serio_connect._entry_ptr = internal global ptr @fsia6b_serio_connect._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 49, i64 50, i64 51]
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"switch_config\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 30, i32 14 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"fsia6b_serio_drv\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 220, i32 28 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 30, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 231, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 224, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"fsia6b_serio_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 208, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"fsia6b_axes\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 35, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 152, i32 47 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [35 x i8] c"../drivers/input/joystick/fsia6b.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 169, i32 4 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__UNIQUE_ID_switch_config232, ptr @__UNIQUE_ID_switch_configtype231, ptr @__exitcall_fsia6b_serio_drv_exit, ptr @__initcall__kmod_fsia6b__233_231_fsia6b_serio_drv_init6, ptr @__param_switch_config, ptr @fsia6b_serio_connect._entry, ptr @fsia6b_serio_connect._entry_ptr, ptr @fsia6b_serio_drv_exit, ptr @switch_config, ptr @fsia6b_serio_drv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fsia6b_serio_ids, ptr @fsia6b_axes, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsia6b_serio_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsia6b_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsia6b_axes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsia6b_serio_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsia6b_serio_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @fsia6b_serio_drv, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsia6b_serio_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @serio_unregister_driver(ptr noundef nonnull @fsia6b_serio_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsia6b_serio_irq(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i8 %data to i16
  %packet = getelementptr inbounds %struct.fsia6b, ptr %1, i32 0, i32 1
  %ibuf = getelementptr inbounds %struct.fsia6b, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ibuf to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ibuf, align 4
  %or = tail call i16 @llvm.fshl.i16(i16 %conv, i16 %3, i16 8)
  %4 = ptrtoint ptr %ibuf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %or, ptr %ibuf, align 4
  %5 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %packet, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.sw.epilog77_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb15
  ]

entry.sw.epilog77_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog77

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 16416, i16 %or)
  %cmp = icmp eq i16 %or, 16416
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog77_crit_edge

sw.bb.sw.epilog77_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog77

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %packet, align 4
  br label %sw.epilog77

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %packet, align 4
  br label %sw.epilog77

sw.bb15:                                          ; preds = %entry
  %offset = getelementptr inbounds %struct.fsia6b, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %arrayidx = getelementptr %struct.fsia6b, ptr %1, i32 0, i32 1, i32 3, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %or, ptr %arrayidx, align 2
  %13 = load i32, ptr %offset, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %inc)
  %cmp24 = icmp eq i32 %inc, 14
  br i1 %cmp24, label %if.then26, label %if.else73

if.then26:                                        ; preds = %sw.bb15
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %offset, align 4
  %15 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %packet, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then26
  %sw_id.0114 = phi i32 [ 256, %if.then26 ], [ %sw_id.3, %for.inc.for.body_crit_edge ]
  %i.0113 = phi i32 [ 0, %if.then26 ], [ %inc71, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %arrayidx33 = getelementptr [14 x i32], ptr @fsia6b_axes, i32 0, i32 %i.0113
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx33, align 4
  %arrayidx36 = getelementptr %struct.fsia6b, ptr %1, i32 0, i32 1, i32 3, i32 %i.0113
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %21 to i32
  tail call void @input_event(ptr noundef %17, i32 noundef 3, i32 noundef %19, i32 noundef %conv37) #7
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx36, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1900, i16 %23)
  %cmp42 = icmp ugt i16 %23, 1900
  call void @__sanitizer_cov_trace_const_cmp2(i16 1100, i16 %23)
  %cmp49 = icmp ult i16 %23, 1100
  %24 = load ptr, ptr @switch_config, align 4
  %arrayidx54 = getelementptr i8, ptr %24, i32 %i.0113
  %25 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx54, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %26, label %for.body.for.inc_crit_edge [
    i8 51, label %sw.bb56
    i8 50, label %for.body.sw.bb61_crit_edge
    i8 49, label %for.body.sw.bb66_crit_edge
  ]

for.body.sw.bb66_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66

for.body.sw.bb61_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb61

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb56:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %28 = xor i1 %cmp49, %cmp42
  %narrow = xor i1 %28, true
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %inc58 = add i32 %sw_id.0114, 1
  %lnot.ext.i = zext i1 %narrow to i32
  tail call void @input_event(ptr noundef %30, i32 noundef 1, i32 noundef %sw_id.0114, i32 noundef %lnot.ext.i) #7
  br label %sw.bb61

sw.bb61:                                          ; preds = %sw.bb56, %for.body.sw.bb61_crit_edge
  %sw_id.1 = phi i32 [ %sw_id.0114, %for.body.sw.bb61_crit_edge ], [ %inc58, %sw.bb56 ]
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %inc63 = add i32 %sw_id.1, 1
  %lnot.ext.i110 = zext i1 %cmp42 to i32
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef %sw_id.1, i32 noundef %lnot.ext.i110) #7
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb61, %for.body.sw.bb66_crit_edge
  %sw_id.2 = phi i32 [ %sw_id.0114, %for.body.sw.bb66_crit_edge ], [ %inc63, %sw.bb61 ]
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %inc68 = add i32 %sw_id.2, 1
  %lnot.ext.i112 = zext i1 %cmp49 to i32
  tail call void @input_event(ptr noundef %34, i32 noundef 1, i32 noundef %sw_id.2, i32 noundef %lnot.ext.i112) #7
  br label %for.inc

for.inc:                                          ; preds = %sw.bb66, %for.body.for.inc_crit_edge
  %sw_id.3 = phi i32 [ %sw_id.0114, %for.body.for.inc_crit_edge ], [ %inc68, %sw.bb66 ]
  %inc71 = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc71, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %36, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %sw.epilog77

if.else73:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %packet, align 4
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %if.else73, %for.end, %sw.bb12, %if.then, %sw.bb.sw.epilog77_crit_edge, %entry.sw.epilog77_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsia6b_serio_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %packet = getelementptr inbounds %struct.fsia6b, ptr %call7.i.i, i32 0, i32 1
  %ibuf = getelementptr inbounds %struct.fsia6b, ptr %call7.i.i, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %ibuf to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %ibuf, align 4
  %offset = getelementptr inbounds %struct.fsia6b, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %offset, align 8
  %3 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %packet, align 4
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @input_allocate_device() #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.fail1_crit_edge, label %if.end6

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %call7.i.i, align 8
  %phys = getelementptr inbounds %struct.fsia6b, ptr %call7.i.i, i32 0, i32 2
  %phys7 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %phys7)
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.2, ptr %call3, align 8
  %phys12 = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %phys12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %phys, ptr %phys12, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 19, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 66, ptr %vendor, align 2
  %id15 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %id15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id15, align 1
  %conv = zext i8 %11 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %version, align 2
  %dev18 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 40, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev18, ptr %parent, align 8
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 0, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 1, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 2, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 3, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 4, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 5, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 16, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 17, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 18, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 19, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 20, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 21, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 22, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 23, i32 noundef 1000, i32 noundef 2000, i32 noundef 2, i32 noundef 2) #7
  br label %for.body24

for.body24:                                       ; preds = %for.inc47.for.body24_crit_edge, %if.end6
  %sw_id.0111 = phi i32 [ %sw_id.1.lcssa, %for.inc47.for.body24_crit_edge ], [ 0, %if.end6 ]
  %i.1109 = phi i32 [ %inc48, %for.inc47.for.body24_crit_edge ], [ 0, %if.end6 ]
  %15 = load ptr, ptr @switch_config, align 4
  %arrayidx25 = getelementptr i8, ptr %15, i32 %i.1109
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx25, align 1
  %18 = add i8 %17, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %18)
  %19 = icmp ult i8 %18, -4
  br i1 %19, label %do.end, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.body24
  %20 = load ptr, ptr @switch_config, align 4
  %arrayidx38104 = getelementptr i8, ptr %20, i32 %i.1109
  %21 = ptrtoint ptr %arrayidx38104 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx38104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %22)
  %cmp40.not106 = icmp ult i8 %22, 49
  br i1 %cmp40.not106, label %for.cond37.preheader.for.inc47_crit_edge, label %for.cond37.preheader.for.body42_crit_edge

for.cond37.preheader.for.body42_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body42

for.cond37.preheader.for.inc47_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

do.end:                                           ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  %dev35 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.4) #11
  br label %fail2

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.cond37.preheader.for.body42_crit_edge
  %sw_id.1108 = phi i32 [ %inc43, %for.body42.for.body42_crit_edge ], [ %sw_id.0111, %for.cond37.preheader.for.body42_crit_edge ]
  %j.0107 = phi i32 [ %inc45, %for.body42.for.body42_crit_edge ], [ 49, %for.cond37.preheader.for.body42_crit_edge ]
  %add = add i32 %sw_id.1108, 256
  tail call void @input_set_capability(ptr noundef nonnull %call3, i32 noundef 1, i32 noundef %add) #7
  %inc43 = add i32 %sw_id.1108, 1
  %inc45 = add nuw nsw i32 %j.0107, 1
  %25 = load ptr, ptr @switch_config, align 4
  %arrayidx38 = getelementptr i8, ptr %25, i32 %i.1109
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %27 to i32
  %cmp40.not.not = icmp ult i32 %j.0107, %conv39
  br i1 %cmp40.not.not, label %for.body42.for.body42_crit_edge, label %for.body42.for.inc47_crit_edge

for.body42.for.inc47_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42

for.inc47:                                        ; preds = %for.body42.for.inc47_crit_edge, %for.cond37.preheader.for.inc47_crit_edge
  %sw_id.1.lcssa = phi i32 [ %sw_id.0111, %for.cond37.preheader.for.inc47_crit_edge ], [ %inc43, %for.body42.for.inc47_crit_edge ]
  %inc48 = add nuw nsw i32 %i.1109, 1
  %exitcond.not = icmp eq i32 %inc48, 14
  br i1 %exitcond.not, label %for.end49, label %for.inc47.for.body24_crit_edge

for.inc47.for.body24_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.end49:                                        ; preds = %for.inc47
  %call50 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %for.end49.fail2_crit_edge

for.end49.fail2_crit_edge:                        ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

if.end53:                                         ; preds = %for.end49
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i, align 8
  %call55 = tail call i32 @input_register_device(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end53.cleanup_crit_edge, label %fail3

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail3:                                            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @serio_close(ptr noundef %serio) #7
  br label %fail2

fail2:                                            ; preds = %fail3, %for.end49.fail2_crit_edge, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ %call50, %for.end49.fail2_crit_edge ], [ %call55, %fail3 ]
  tail call void @input_free_device(ptr noundef nonnull %call3) #7
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %if.end.fail1_crit_edge ]
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end53.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsia6b_serio_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @serio_close(ptr noundef %serio) #7
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %4) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/fsia6b.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/fsia6b.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/fsia6b.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__param_switch_config, !8, !"__param_switch_config", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/fsia6b.c", i32 31, i32 1}
!9 = !{ptr @__UNIQUE_ID_switch_configtype231, !8, !"__UNIQUE_ID_switch_configtype231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_switch_config232, !11, !"__UNIQUE_ID_switch_config232", i1 false, i1 false}
!11 = !{!"../drivers/input/joystick/fsia6b.c", i32 32, i32 1}
!12 = !{ptr @__initcall__kmod_fsia6b__233_231_fsia6b_serio_drv_init6, !13, !"__initcall__kmod_fsia6b__233_231_fsia6b_serio_drv_init6", i1 false, i1 false}
!13 = !{!"../drivers/input/joystick/fsia6b.c", i32 231, i32 1}
!14 = !{ptr @__exitcall_fsia6b_serio_drv_exit, !13, !"__exitcall_fsia6b_serio_drv_exit", i1 false, i1 false}
!15 = !{ptr @__param_str_switch_config, !8, !"__param_str_switch_config", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/joystick/fsia6b.c", i32 30, i32 30}
!18 = !{ptr @switch_config, !19, !"switch_config", i1 false, i1 false}
!19 = !{!"../drivers/input/joystick/fsia6b.c", i32 30, i32 14}
!20 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/fsia6b.c", i32 224, i32 17}
!23 = !{ptr @fsia6b_serio_drv, !24, !"fsia6b_serio_drv", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/fsia6b.c", i32 220, i32 28}
!25 = !{ptr @fsia6b_serio_ids, !26, !"fsia6b_serio_ids", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/fsia6b.c", i32 208, i32 37}
!27 = !{ptr @fsia6b_axes, !28, !"fsia6b_axes", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/fsia6b.c", i32 35, i32 12}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/joystick/fsia6b.c", i32 152, i32 47}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/fsia6b.c", i32 169, i32 4}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @fsia6b_serio_connect._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @fsia6b_serio_connect._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
