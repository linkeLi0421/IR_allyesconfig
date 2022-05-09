; ModuleID = '/llk/IR_all_yes/sound/drivers/opl3/opl3_seq.c_pt.bc'
source_filename = "../sound/drivers/opl3/opl3_seq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.snd_midi_op = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_seq_driver = type { %struct.device_driver, ptr, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_opl3 = type { i32, i32, ptr, ptr, i16, ptr, i16, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.spinlock, ptr, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, [32 x ptr], [18 x %struct.snd_opl3_voice], i32, i16, i8, %struct.spinlock, %struct.timer_list, i32, %struct.spinlock }
%struct.snd_opl3_voice = type { i32, i32, i8, i32, i32, i8, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, i32, i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_seq_port_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_midi_channel_set = type { ptr, i32, i32, i32, ptr, i8, i8, i8, i8 }

@__UNIQUE_ID_author229 = internal constant [53 x i8] c"snd_opl3_synth.author=Uros Bizjak <uros@kss-loka.si>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [54 x i8] c"snd_opl3_synth.file=sound/drivers/opl3/snd-opl3-synth\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [27 x i8] c"snd_opl3_synth.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [57 x i8] c"snd_opl3_synth.description=ALSA driver for OPL3 FM synth\00", section ".modinfo", align 1
@use_internal_drums = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_str_use_internal_drums = internal constant [34 x i8] c"snd_opl3_synth.use_internal_drums\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_use_internal_drums = internal constant %struct.kernel_param { ptr @__param_str_use_internal_drums, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @use_internal_drums } }, section "__param", align 4
@__UNIQUE_ID_use_internal_drumstype233 = internal constant [48 x i8] c"snd_opl3_synth.parmtype=use_internal_drums:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_internal_drums234 = internal constant [69 x i8] c"snd_opl3_synth.parm=use_internal_drums:Enable internal OPL2/3 drums.\00", section ".modinfo", align 1
@opl3_ops = dso_local constant { %struct.snd_midi_op, [36 x i8] } { %struct.snd_midi_op { ptr @snd_opl3_note_on, ptr @snd_opl3_note_off, ptr @snd_opl3_key_press, ptr @snd_opl3_terminate_note, ptr @snd_opl3_control, ptr @snd_opl3_nrpn, ptr @snd_opl3_sysex }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_opl3_synth__235_279_opl3_seq_driver_init6 = internal global ptr @opl3_seq_driver_init, section ".initcall6.init", align 4
@opl3_seq_driver = internal global { %struct.snd_seq_driver, [44 x i8] } { %struct.snd_seq_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @snd_opl3_seq_probe, ptr null, ptr @snd_opl3_seq_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, i32 4 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_opl3_seq_driver_exit = internal global ptr @opl3_seq_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_opl3_synth\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"opl3-synth\00", [21 x i8] zeroinitializer }, align 32
@snd_opl3_seq_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&opl3->voice_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OPL%i FM synth\00", [17 x i8] zeroinitializer }, align 32
@snd_opl3_seq_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&opl3->tlist)\00", [17 x i8] zeroinitializer }, align 32
@snd_opl3_seq_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&opl3->sys_timer_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OPL%i FM Port\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"use_internal_drums\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 21, i32 6 }
@___asan_gen_.12 = private unnamed_addr constant [9 x i8] c"opl3_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 133, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"opl3_seq_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 269, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 271, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 275, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 219, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 225, i32 16 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 240, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 241, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [33 x i8] c"../sound/drivers/opl3/opl3_seq.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 183, i32 16 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__UNIQUE_ID_use_internal_drums234, ptr @__UNIQUE_ID_use_internal_drumstype233, ptr @__exitcall_opl3_seq_driver_exit, ptr @__initcall__kmod_snd_opl3_synth__235_279_opl3_seq_driver_init6, ptr @__param_use_internal_drums, ptr @opl3_seq_driver_exit, ptr @use_internal_drums, ptr @opl3_ops, ptr @opl3_seq_driver, ptr @.str, ptr @.str.1, ptr @snd_opl3_seq_probe.__key, ptr @.str.2, ptr @.str.3, ptr @snd_opl3_seq_probe.__key.4, ptr @.str.5, ptr @snd_opl3_seq_probe.__key.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_internal_drums to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opl3_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opl3_seq_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_seq_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_seq_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_seq_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_opl3_synth_use_inc(ptr nocapture noundef readonly %opl3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 15
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %module = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %3) #5
  %. = select i1 %call, i32 0, i32 -14
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_synth_use_dec(ptr nocapture noundef readonly %opl3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 15
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %module = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_opl3_synth_setup(ptr noundef %opl3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwdep1 = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 13
  %0 = ptrtoint ptr %hwdep1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwdep1, align 4
  %open_mutex = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #5
  %used = getelementptr inbounds %struct.snd_hwdep, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %open_mutex) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %used, align 4
  tail call void @mutex_unlock(ptr noundef %open_mutex) #5
  tail call void @snd_opl3_reset(ptr noundef %opl3) #5
  %arrayidx = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx, align 4
  %time = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 0, i32 1
  %6 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %time, align 4
  %keyon_reg = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 0, i32 5
  %7 = ptrtoint ptr %keyon_reg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %keyon_reg, align 4
  %arrayidx.1 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx.1, align 4
  %time.1 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 1, i32 1
  %9 = ptrtoint ptr %time.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %time.1, align 4
  %keyon_reg.1 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 1, i32 5
  %10 = ptrtoint ptr %keyon_reg.1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %keyon_reg.1, align 4
  %arrayidx.2 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.2, align 4
  %time.2 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 2, i32 1
  %12 = ptrtoint ptr %time.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %time.2, align 4
  %keyon_reg.2 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 2, i32 5
  %13 = ptrtoint ptr %keyon_reg.2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %keyon_reg.2, align 4
  %arrayidx.3 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx.3, align 4
  %time.3 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 3, i32 1
  %15 = ptrtoint ptr %time.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %time.3, align 4
  %keyon_reg.3 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 3, i32 5
  %16 = ptrtoint ptr %keyon_reg.3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %keyon_reg.3, align 4
  %arrayidx.4 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx.4, align 4
  %time.4 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 4, i32 1
  %18 = ptrtoint ptr %time.4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %time.4, align 4
  %keyon_reg.4 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 4, i32 5
  %19 = ptrtoint ptr %keyon_reg.4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %keyon_reg.4, align 4
  %arrayidx.5 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx.5, align 4
  %time.5 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 5, i32 1
  %21 = ptrtoint ptr %time.5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %time.5, align 4
  %keyon_reg.5 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 5, i32 5
  %22 = ptrtoint ptr %keyon_reg.5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %keyon_reg.5, align 4
  %arrayidx.6 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 6
  %23 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx.6, align 4
  %time.6 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 6, i32 1
  %24 = ptrtoint ptr %time.6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %time.6, align 4
  %keyon_reg.6 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 6, i32 5
  %25 = ptrtoint ptr %keyon_reg.6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %keyon_reg.6, align 4
  %arrayidx.7 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 7
  %26 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx.7, align 4
  %time.7 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 7, i32 1
  %27 = ptrtoint ptr %time.7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %time.7, align 4
  %keyon_reg.7 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 7, i32 5
  %28 = ptrtoint ptr %keyon_reg.7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %keyon_reg.7, align 4
  %arrayidx.8 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 8
  %29 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx.8, align 4
  %time.8 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 8, i32 1
  %30 = ptrtoint ptr %time.8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %time.8, align 4
  %keyon_reg.8 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 8, i32 5
  %31 = ptrtoint ptr %keyon_reg.8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %keyon_reg.8, align 4
  %arrayidx.9 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 9
  %32 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx.9, align 4
  %time.9 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 9, i32 1
  %33 = ptrtoint ptr %time.9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %time.9, align 4
  %keyon_reg.9 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 9, i32 5
  %34 = ptrtoint ptr %keyon_reg.9 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %keyon_reg.9, align 4
  %arrayidx.10 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 10
  %35 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx.10, align 4
  %time.10 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 10, i32 1
  %36 = ptrtoint ptr %time.10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %time.10, align 4
  %keyon_reg.10 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 10, i32 5
  %37 = ptrtoint ptr %keyon_reg.10 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %keyon_reg.10, align 4
  %arrayidx.11 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 11
  %38 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx.11, align 4
  %time.11 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 11, i32 1
  %39 = ptrtoint ptr %time.11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %time.11, align 4
  %keyon_reg.11 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 11, i32 5
  %40 = ptrtoint ptr %keyon_reg.11 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %keyon_reg.11, align 4
  %arrayidx.12 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 12
  %41 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx.12, align 4
  %time.12 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 12, i32 1
  %42 = ptrtoint ptr %time.12 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %time.12, align 4
  %keyon_reg.12 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 12, i32 5
  %43 = ptrtoint ptr %keyon_reg.12 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %keyon_reg.12, align 4
  %arrayidx.13 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 13
  %44 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx.13, align 4
  %time.13 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 13, i32 1
  %45 = ptrtoint ptr %time.13 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %time.13, align 4
  %keyon_reg.13 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 13, i32 5
  %46 = ptrtoint ptr %keyon_reg.13 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %keyon_reg.13, align 4
  %arrayidx.14 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 14
  %47 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayidx.14, align 4
  %time.14 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 14, i32 1
  %48 = ptrtoint ptr %time.14 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %time.14, align 4
  %keyon_reg.14 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 14, i32 5
  %49 = ptrtoint ptr %keyon_reg.14 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %keyon_reg.14, align 4
  %arrayidx.15 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 15
  %50 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx.15, align 4
  %time.15 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 15, i32 1
  %51 = ptrtoint ptr %time.15 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %time.15, align 4
  %keyon_reg.15 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 15, i32 5
  %52 = ptrtoint ptr %keyon_reg.15 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %keyon_reg.15, align 4
  %arrayidx.16 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 16
  %53 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx.16, align 4
  %time.16 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 16, i32 1
  %54 = ptrtoint ptr %time.16 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %time.16, align 4
  %keyon_reg.16 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 16, i32 5
  %55 = ptrtoint ptr %keyon_reg.16 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %keyon_reg.16, align 4
  %arrayidx.17 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 17
  %56 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx.17, align 4
  %time.17 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 17, i32 1
  %57 = ptrtoint ptr %time.17 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %time.17, align 4
  %keyon_reg.17 = getelementptr %struct.snd_opl3, ptr %opl3, i32 0, i32 26, i32 17, i32 5
  %58 = ptrtoint ptr %keyon_reg.17 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %keyon_reg.17, align 4
  %use_time = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 27
  %59 = ptrtoint ptr %use_time to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %use_time, align 4
  %connection_reg = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 28
  %60 = ptrtoint ptr %connection_reg to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %connection_reg, align 4
  %hardware = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 4
  %61 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %62)
  %cmp10 = icmp ugt i16 %62, 767
  br i1 %cmp10, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %command = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 5
  %63 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %command, align 4
  tail call void %64(ptr noundef %opl3, i16 noundef zeroext 260, i8 noundef zeroext 0) #5
  %max_voices = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 18
  %65 = ptrtoint ptr %max_voices to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 18, ptr %max_voices, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %if.then12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_synth_cleanup(ptr noundef %opl3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sys_timer_lock = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 33
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sys_timer_lock) #5
  %sys_timer_status = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 32
  %0 = ptrtoint ptr %sys_timer_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sys_timer_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tlist = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 31
  %call5 = tail call i32 @del_timer(ptr noundef %tlist) #5
  %2 = ptrtoint ptr %sys_timer_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sys_timer_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sys_timer_lock, i32 noundef %call2) #5
  tail call void @snd_opl3_reset(ptr noundef %opl3) #5
  %hwdep8 = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 13
  %3 = ptrtoint ptr %hwdep8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwdep8, align 4
  %open_mutex = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #5
  %used = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %used, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %used, align 4
  tail call void @mutex_unlock(ptr noundef %open_mutex) #5
  %open_wait = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_note_on(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_note_off(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_key_press(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_terminate_note(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_control(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_nrpn(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_sysex(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @opl3_seq_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__snd_seq_driver_register(ptr noundef nonnull @opl3_seq_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @opl3_seq_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_seq_driver_unregister(ptr noundef nonnull @opl3_seq_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_seq_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_seq_probe(ptr nocapture noundef readonly %_dev) #0 align 64 {
entry:
  %callbacks.i = alloca %struct.snd_seq_port_callback, align 4
  %name.i = alloca [32 x i8], align 1
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #5
  %add.ptr1 = getelementptr i8, ptr %_dev, i32 928
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr1, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %voice_lock = getelementptr inbounds %struct.snd_opl3, ptr %2, i32 0, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %voice_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_opl3_seq_probe.__key, i16 noundef signext 3) #5
  %seq_client = getelementptr inbounds %struct.snd_opl3, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %seq_client to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %seq_client, align 4
  %hardware = getelementptr inbounds %struct.snd_opl3, ptr %2, i32 0, i32 4
  %4 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hardware, align 4
  %6 = lshr i16 %5, 8
  %7 = zext i16 %6 to i32
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.3, i32 noundef %7)
  %card = getelementptr inbounds %struct.snd_opl3, ptr %2, i32 0, i32 15
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %seq_dev_num = getelementptr inbounds %struct.snd_opl3, ptr %2, i32 0, i32 7
  %10 = ptrtoint ptr %seq_dev_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seq_dev_num, align 4
  %call4 = call i32 (ptr, i32, ptr, ...) @snd_seq_create_kernel_client(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %name) #5
  %12 = ptrtoint ptr %seq_client to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call4, ptr %seq_client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp6 = icmp slt i32 %call4, 0
  br i1 %cmp6, label %do.body.cleanup_crit_edge, label %if.end9

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %callbacks.i) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #5
  %13 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %14 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hardware, align 4
  %call.i = call ptr @snd_midi_channel_alloc_set(i32 noundef 16) #5
  %chset.i = getelementptr inbounds %struct.snd_opl3, ptr %2, i32 0, i32 22
  %16 = ptrtoint ptr %chset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %chset.i, align 4
  %cmp3.i = icmp eq ptr %call.i, null
  br i1 %cmp3.i, label %if.end9.if.then13_crit_edge, label %if.end.i

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.end.i:                                         ; preds = %if.end9
  %17 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callbacks.i, i32 0, i32 7
  %18 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callbacks.i, i32 0, i32 6
  %19 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callbacks.i, i32 0, i32 5
  %20 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callbacks.i, i32 0, i32 4
  %21 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callbacks.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %15)
  %cmp.i = icmp ult i16 %15, 768
  %cond.i = select i1 %cmp.i, i32 9, i32 18
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %2, ptr %call.i, align 4
  %23 = call ptr @memset(ptr %callbacks.i, i32 0, i32 16)
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @snd_opl3_synth_use, ptr %20, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @snd_opl3_synth_unuse, ptr %19, align 4
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @snd_opl3_synth_event_input, ptr %18, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @snd_opl3_synth_free_port, ptr %17, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %2, ptr %21, align 4
  %29 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hardware, align 4
  %31 = lshr i16 %30, 8
  %32 = zext i16 %31 to i32
  %call9.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.8, i32 noundef %32) #5
  %33 = ptrtoint ptr %seq_client to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seq_client, align 4
  %35 = ptrtoint ptr %chset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chset.i, align 4
  %client.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %client.i, align 4
  %38 = load i32, ptr %seq_client, align 4
  %call13.i = call i32 @snd_seq_event_port_attach(i32 noundef %38, ptr noundef nonnull %callbacks.i, i32 noundef 66, i32 noundef 329734, i32 noundef 16, i32 noundef %cond.i, ptr noundef nonnull %name.i) #5
  %39 = ptrtoint ptr %chset.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chset.i, align 4
  %port.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call13.i, ptr %port.i, align 4
  %42 = load ptr, ptr %chset.i, align 4
  %port16.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %port16.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp17.i = icmp slt i32 %44, 0
  br i1 %cmp17.i, label %if.then19.i, label %do.body17

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @snd_midi_channel_free_set(ptr noundef %42) #5
  br label %if.then13

if.then13:                                        ; preds = %if.then19.i, %if.end9.if.then13_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end9.if.then13_crit_edge ], [ %44, %if.then19.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %callbacks.i) #5
  %call14 = call i32 @snd_seq_delete_kernel_client(i32 noundef %call4) #5
  %45 = ptrtoint ptr %seq_client to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %seq_client, align 4
  br label %cleanup

do.body17:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %callbacks.i) #5
  %tlist = getelementptr inbounds %struct.snd_opl3, ptr %2, i32 0, i32 31
  call void @init_timer_key(ptr noundef %tlist, ptr noundef nonnull @snd_opl3_timer_func, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @snd_opl3_seq_probe.__key.4) #5
  %sys_timer_lock = getelementptr inbounds %struct.snd_opl3, ptr %2, i32 0, i32 33
  call void @__raw_spin_lock_init(ptr noundef %sys_timer_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @snd_opl3_seq_probe.__key.6, i16 noundef signext 3) #5
  %sys_timer_status = getelementptr inbounds %struct.snd_opl3, ptr %2, i32 0, i32 32
  %46 = ptrtoint ptr %sys_timer_status to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %sys_timer_status, align 4
  call void @snd_opl3_init_seq_oss(ptr noundef nonnull %2, ptr noundef nonnull %name) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %if.then13, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then13 ], [ 0, %do.body17 ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_seq_remove(ptr nocapture noundef readonly %_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %_dev, i32 928
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @snd_opl3_free_seq_oss(ptr noundef nonnull %1) #5
  %seq_client = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %seq_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq_client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp2 = icmp sgt i32 %3, -1
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @snd_seq_delete_kernel_client(i32 noundef %3) #5
  %4 = ptrtoint ptr %seq_client to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %seq_client, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_create_kernel_client(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_delete_kernel_client(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_timer_func(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_init_seq_oss(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_midi_channel_alloc_set(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_synth_use(ptr noundef %private_data, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_opl3_synth_setup(ptr noundef %private_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @use_internal_drums, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.snd_opl3, ptr %private_data, i32 0, i32 26, i32 8
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.snd_opl3, ptr %private_data, i32 0, i32 26, i32 7
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %arrayidx3, align 4
  %arrayidx6 = getelementptr %struct.snd_opl3, ptr %private_data, i32 0, i32 26, i32 6
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %arrayidx6, align 4
  tail call void @snd_opl3_load_drums(ptr noundef %private_data) #5
  %drum_reg = getelementptr inbounds %struct.snd_opl3, ptr %private_data, i32 0, i32 29
  %4 = ptrtoint ptr %drum_reg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %drum_reg, align 2
  %command = getelementptr inbounds %struct.snd_opl3, ptr %private_data, i32 0, i32 5
  %5 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %command, align 4
  tail call void %6(ptr noundef %private_data, i16 noundef zeroext 189, i8 noundef zeroext 32) #5
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %drum_reg9 = getelementptr inbounds %struct.snd_opl3, ptr %private_data, i32 0, i32 29
  %7 = ptrtoint ptr %drum_reg9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %drum_reg9, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then1
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp11.not = icmp eq i8 %9, 0
  br i1 %cmp11.not, label %if.end10.if.end19_crit_edge, label %if.then13

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then13:                                        ; preds = %if.end10
  %card.i = getelementptr inbounds %struct.snd_opl3, ptr %private_data, i32 0, i32 15
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %module.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %module.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %13) #5
  br i1 %call.i, label %if.then13.if.end19_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end19:                                         ; preds = %if.then13.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %synth_mode = getelementptr inbounds %struct.snd_opl3, ptr %private_data, i32 0, i32 19
  %14 = ptrtoint ptr %synth_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %synth_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call, %entry.cleanup_crit_edge ], [ -14, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_synth_unuse(ptr noundef %private_data, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_opl3_synth_cleanup(ptr noundef %private_data)
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %card.i = getelementptr inbounds %struct.snd_opl3, ptr %private_data, i32 0, i32 15
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %module.i = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_synth_event_input(ptr noundef %ev, i32 noundef %direct, ptr nocapture noundef readonly %private_data, i32 noundef %atomic, i32 noundef %hop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chset = getelementptr inbounds %struct.snd_opl3, ptr %private_data, i32 0, i32 22
  %0 = ptrtoint ptr %chset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chset, align 4
  tail call void @snd_midi_process_event(ptr noundef nonnull @opl3_ops, ptr noundef %ev, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_opl3_synth_free_port(ptr nocapture noundef readonly %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chset = getelementptr inbounds %struct.snd_opl3, ptr %private_data, i32 0, i32 22
  %0 = ptrtoint ptr %chset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chset, align 4
  tail call void @snd_midi_channel_free_set(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_event_port_attach(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_channel_free_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_load_drums(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_process_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_free_seq_oss(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !22, !24, !26, !28, !29, !31, !33, !34, !36, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__UNIQUE_ID_author229, !1, !"__UNIQUE_ID_author229", i1 false, i1 false}
!1 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_file230, !3, !"__UNIQUE_ID_file230", i1 false, i1 false}
!3 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_license231, !3, !"__UNIQUE_ID_license231", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 19, i32 1}
!7 = !{ptr @use_internal_drums, !8, !"use_internal_drums", i1 false, i1 false}
!8 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 21, i32 6}
!9 = !{ptr @__param_use_internal_drums, !10, !"__param_use_internal_drums", i1 false, i1 false}
!10 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 22, i32 1}
!11 = !{ptr @__UNIQUE_ID_use_internal_drumstype233, !10, !"__UNIQUE_ID_use_internal_drumstype233", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_use_internal_drums234, !13, !"__UNIQUE_ID_use_internal_drums234", i1 false, i1 false}
!13 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 23, i32 1}
!14 = !{ptr @opl3_ops, !15, !"opl3_ops", i1 false, i1 false}
!15 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 133, i32 26}
!16 = !{ptr @__initcall__kmod_snd_opl3_synth__235_279_opl3_seq_driver_init6, !17, !"__initcall__kmod_snd_opl3_synth__235_279_opl3_seq_driver_init6", i1 false, i1 false}
!17 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 279, i32 1}
!18 = !{ptr @__exitcall_opl3_seq_driver_exit, !17, !"__exitcall_opl3_seq_driver_exit", i1 false, i1 false}
!19 = !{ptr @__param_str_use_internal_drums, !10, !"__param_str_use_internal_drums", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 271, i32 11}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 275, i32 8}
!24 = !{ptr @opl3_seq_driver, !25, !"opl3_seq_driver", i1 false, i1 false}
!25 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 269, i32 30}
!26 = !{ptr @snd_opl3_seq_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 219, i32 2}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 225, i32 16}
!31 = !{ptr @snd_opl3_seq_probe.__key.4, !32, !"__key", i1 false, i1 false}
!32 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 240, i32 2}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @snd_opl3_seq_probe.__key.6, !35, !"__key", i1 false, i1 false}
!35 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 241, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/drivers/opl3/opl3_seq.c", i32 183, i32 16}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i8 0, i8 2}
