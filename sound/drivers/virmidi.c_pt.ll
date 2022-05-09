; ModuleID = '/llk/IR_all_yes/sound/drivers/virmidi.c_pt.bc'
source_filename = "../sound/drivers/virmidi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_card_virmidi = type { ptr, [4 x ptr] }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }

@__UNIQUE_ID_author189 = internal constant [48 x i8] c"snd_virmidi.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [68 x i8] c"snd_virmidi.description=Dummy soundcard for virtual rawmidi devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [43 x i8] c"snd_virmidi.file=sound/drivers/snd-virmidi\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [24 x i8] c"snd_virmidi.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_virmidi.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype193 = internal constant [40 x i8] c"snd_virmidi.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index194 = internal constant [58 x i8] c"snd_virmidi.parm=index:Index value for virmidi soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_virmidi.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype195 = internal constant [39 x i8] c"snd_virmidi.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id196 = internal constant [53 x i8] c"snd_virmidi.parm=id:ID string for virmidi soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_virmidi.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype197 = internal constant [42 x i8] c"snd_virmidi.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable198 = internal constant [47 x i8] c"snd_virmidi.parm=enable:Enable this soundcard.\00", section ".modinfo", align 1
@__param_str_midi_devs = internal constant [22 x i8] c"snd_virmidi.midi_devs\00", align 1
@__param_arr_midi_devs = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @midi_devs }, align 4
@__param_midi_devs = internal constant %struct.kernel_param { ptr @__param_str_midi_devs, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @__param_arr_midi_devs } }, section "__param", align 4
@__UNIQUE_ID_midi_devstype199 = internal constant [44 x i8] c"snd_virmidi.parmtype=midi_devs:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_midi_devs200 = internal constant [48 x i8] c"snd_virmidi.parm=midi_devs:MIDI devices # (1-4)\00", section ".modinfo", align 1
@__initcall__kmod_snd_virmidi__201_171_alsa_card_virmidi_init6 = internal global ptr @alsa_card_virmidi_init, section ".initcall6.init", align 4
@__exitcall_alsa_card_virmidi_exit = internal global ptr @alsa_card_virmidi_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { <{ i8, [31 x i8] }>, [32 x i8] } { <{ i8, [31 x i8] }> <{ i8 1, [31 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@midi_devs = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@devices = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@snd_virmidi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snd_virmidi_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_virmidi\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/drivers/virmidi.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014too much midi devices for virmidi %d: force to use %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Virtual Raw MIDI\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Virtual MIDI Card %i\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 49, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 50, i32 14 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 51, i32 13 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"midi_devs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 52, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 68, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"snd_virmidi_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 115, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 118, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 86, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 98, i32 23 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [27 x i8] c"../sound/drivers/virmidi.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 103, i32 26 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_enable198, ptr @__UNIQUE_ID_enabletype197, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_id196, ptr @__UNIQUE_ID_idtype195, ptr @__UNIQUE_ID_index194, ptr @__UNIQUE_ID_indextype193, ptr @__UNIQUE_ID_license192, ptr @__UNIQUE_ID_midi_devs200, ptr @__UNIQUE_ID_midi_devstype199, ptr @__exitcall_alsa_card_virmidi_exit, ptr @__initcall__kmod_snd_virmidi__201_171_alsa_card_virmidi_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_midi_devs, ptr @alsa_card_virmidi_exit, ptr @index, ptr @id, ptr @enable, ptr @midi_devs, ptr @devices, ptr @snd_virmidi_driver, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midi_devs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_virmidi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_card_virmidi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @snd_virmidi_unregister_all()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_virmidi_unregister_all() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @devices, i32 0, i32 %i.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #5
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_virmidi_driver) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_card_virmidi_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_virmidi_driver, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup17_crit_edge, label %for.cond.preheader

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup17

for.cond.preheader:                               ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %cards.031 = phi i32 [ 0, %for.cond.preheader ], [ %cards.1, %cleanup.for.body_crit_edge ]
  %i.029 = phi i32 [ 0, %for.cond.preheader ], [ %inc13, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %i.029
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end3

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %3 = call ptr @memset(ptr %0, i32 255, i32 48)
  %4 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %5 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fwnode.i.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %0, align 8
  %7 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name2.i.i, align 4
  %8 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.029, ptr %id3.i.i, align 8
  %9 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %dma_mask.i.i, align 8
  %10 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %properties.i.i, align 8
  %11 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void @platform_device_unregister(ptr noundef %call.i.i) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12 = getelementptr [32 x ptr], ptr @devices, i32 0, i32 %i.029
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %arrayidx12, align 4
  %inc = add i32 %cards.031, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10, %if.end3.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %cards.1 = phi i32 [ %inc, %if.end11 ], [ %cards.031, %if.then10 ], [ %cards.031, %for.body.cleanup_crit_edge ], [ %cards.031, %if.end3.cleanup_crit_edge ]
  %inc13 = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc13, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cards.1)
  %tobool14.not = icmp eq i32 %cards.1, 0
  br i1 %tobool14.not, label %if.then15, label %for.end.cleanup17_crit_edge

for.end.cleanup17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup17

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @snd_virmidi_unregister_all()
  br label %cleanup17

cleanup17:                                        ; preds = %if.then15, %for.end.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.0 = phi i32 [ -19, %if.then15 ], [ %call, %entry.cleanup17_crit_edge ], [ 0, %for.end.cleanup17_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_probe(ptr noundef %devptr) #1 align 64 {
entry:
  %card = alloca ptr, align 4
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #5
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !72
  %id = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 3
  %arrayidx = getelementptr [32 x i32], ptr @index, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev1, i32 noundef %4, ptr noundef %6, ptr noundef null, i32 noundef 20, ptr noundef nonnull %card) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %10, align 4
  %arrayidx4 = getelementptr [32 x i32], ptr @midi_devs, i32 0, i32 %2
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp5 = icmp sgt i32 %13, 4
  br i1 %cmp5, label %if.end8.thread, label %if.end8

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 88, ptr noundef nonnull @.str.3, i32 noundef %2, i32 noundef 4) #5
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %arrayidx4, align 4
  br label %for.body.preheader

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1049 = icmp sgt i32 %13, 0
  br i1 %cmp1049, label %if.end8.for.body.preheader_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end8.for.body.preheader_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end8.for.body.preheader_crit_edge, %if.end8.thread
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %idx.050 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #5
  %15 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !72
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %call11 = call i32 @snd_virmidi_new(ptr noundef %17, i32 noundef %idx.050, ptr noundef nonnull %rmidi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #5
  br label %cleanup26

for.inc:                                          ; preds = %for.body
  %18 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmidi, align 4
  %arrayidx15 = getelementptr %struct.snd_card_virmidi, ptr %10, i32 0, i32 1, i32 %idx.050
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx15, align 4
  %21 = load ptr, ptr %rmidi, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %21, i32 0, i32 5
  %22 = call ptr @memcpy(ptr %name, ptr @.str.4, i32 17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #5
  %inc = add nuw nsw i32 %idx.050, 1
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4, align 4
  %cmp10 = icmp slt i32 %inc, %24
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 6226633636083681536, ptr %driver, align 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 3
  %28 = ptrtoint ptr %shortname to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 6226633636083681536, ptr %shortname, align 1
  %longname = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 4
  %add = add i32 %2, 1
  %call22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.6, i32 noundef %add)
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %call23 = call i32 @snd_card_register(ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.end25, label %for.end.cleanup26_crit_edge

for.end.cleanup26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.end25:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %driver_data.i.i, align 4
  br label %cleanup26

cleanup26:                                        ; preds = %if.end25, %for.end.cleanup26_crit_edge, %cleanup.thread, %entry.cleanup26_crit_edge
  %retval.2 = phi i32 [ 0, %if.end25 ], [ %call, %entry.cleanup26_crit_edge ], [ %call23, %for.end.cleanup26_crit_edge ], [ %call11, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #5
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_virmidi_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__UNIQUE_ID_author189, !1, !"__UNIQUE_ID_author189", i1 false, i1 false}
!1 = !{!"../sound/drivers/virmidi.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_description190, !3, !"__UNIQUE_ID_description190", i1 false, i1 false}
!3 = !{!"../sound/drivers/virmidi.c", i32 44, i32 1}
!4 = !{ptr @__UNIQUE_ID_file191, !5, !"__UNIQUE_ID_file191", i1 false, i1 false}
!5 = !{!"../sound/drivers/virmidi.c", i32 45, i32 1}
!6 = !{ptr @__UNIQUE_ID_license192, !5, !"__UNIQUE_ID_license192", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/drivers/virmidi.c", i32 54, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype193, !8, !"__UNIQUE_ID_indextype193", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index194, !11, !"__UNIQUE_ID_index194", i1 false, i1 false}
!11 = !{!"../sound/drivers/virmidi.c", i32 55, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/drivers/virmidi.c", i32 56, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype195, !13, !"__UNIQUE_ID_idtype195", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id196, !16, !"__UNIQUE_ID_id196", i1 false, i1 false}
!16 = !{!"../sound/drivers/virmidi.c", i32 57, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/drivers/virmidi.c", i32 58, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype197, !18, !"__UNIQUE_ID_enabletype197", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable198, !21, !"__UNIQUE_ID_enable198", i1 false, i1 false}
!21 = !{!"../sound/drivers/virmidi.c", i32 59, i32 1}
!22 = !{ptr @__param_midi_devs, !23, !"__param_midi_devs", i1 false, i1 false}
!23 = !{!"../sound/drivers/virmidi.c", i32 60, i32 1}
!24 = !{ptr @__UNIQUE_ID_midi_devstype199, !23, !"__UNIQUE_ID_midi_devstype199", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_midi_devs200, !26, !"__UNIQUE_ID_midi_devs200", i1 false, i1 false}
!26 = !{!"../sound/drivers/virmidi.c", i32 61, i32 1}
!27 = !{ptr @__initcall__kmod_snd_virmidi__201_171_alsa_card_virmidi_init6, !28, !"__initcall__kmod_snd_virmidi__201_171_alsa_card_virmidi_init6", i1 false, i1 false}
!28 = !{!"../sound/drivers/virmidi.c", i32 171, i32 1}
!29 = !{ptr @__exitcall_alsa_card_virmidi_exit, !30, !"__exitcall_alsa_card_virmidi_exit", i1 false, i1 false}
!30 = !{!"../sound/drivers/virmidi.c", i32 172, i32 1}
!31 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!32 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!33 = !{ptr @index, !34, !"index", i1 false, i1 false}
!34 = !{!"../sound/drivers/virmidi.c", i32 49, i32 12}
!35 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!36 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!37 = !{ptr @id, !38, !"id", i1 false, i1 false}
!38 = !{!"../sound/drivers/virmidi.c", i32 50, i32 14}
!39 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!40 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!41 = !{ptr @enable, !42, !"enable", i1 false, i1 false}
!42 = !{!"../sound/drivers/virmidi.c", i32 51, i32 13}
!43 = !{ptr @__param_str_midi_devs, !23, !"__param_str_midi_devs", i1 false, i1 false}
!44 = !{ptr @__param_arr_midi_devs, !23, !"__param_arr_midi_devs", i1 false, i1 false}
!45 = !{ptr @midi_devs, !46, !"midi_devs", i1 false, i1 false}
!46 = !{!"../sound/drivers/virmidi.c", i32 52, i32 12}
!47 = !{ptr @devices, !48, !"devices", i1 false, i1 false}
!48 = !{!"../sound/drivers/virmidi.c", i32 68, i32 32}
!49 = !{ptr @.str, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/drivers/virmidi.c", i32 118, i32 11}
!51 = !{ptr @snd_virmidi_driver, !52, !"snd_virmidi_driver", i1 false, i1 false}
!52 = !{!"../sound/drivers/virmidi.c", i32 115, i32 31}
!53 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/drivers/virmidi.c", i32 86, i32 3}
!55 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.4, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/drivers/virmidi.c", i32 98, i32 23}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/drivers/virmidi.c", i32 101, i32 23}
!60 = !{ptr @.str.6, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/drivers/virmidi.c", i32 103, i32 26}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i8 0, i8 2}
!72 = !{!"auto-init"}
