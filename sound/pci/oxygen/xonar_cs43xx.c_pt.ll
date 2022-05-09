; ModuleID = '/llk/IR_all_yes/sound/pci/oxygen/xonar_cs43xx.c_pt.bc'
source_filename = "../sound/pci/oxygen/xonar_cs43xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.oxygen_model = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.oxygen = type { i32, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, i32, ptr, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i32, [6 x ptr], [6 x ptr], %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %union.anon.84, [2 x [64 x i16]], i32, [32 x i8], %struct.oxygen_model }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.84 = type { [64 x i32] }
%struct.xonar_generic = type { i32, i16, i8, i8, i8, i8 }
%struct.xonar_cs43xx = type { %struct.xonar_generic, [8 x i8], [15 x i8] }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }

@model_xonar_d1 = internal constant { %struct.oxygen_model, [56 x i8] } { %struct.oxygen_model { ptr null, ptr @.str.2, ptr @.str.3, ptr @xonar_d1_init, ptr null, ptr @xonar_d1_mixer_init, ptr @xonar_d1_cleanup, ptr @xonar_d1_suspend, ptr @xonar_d1_resume, ptr null, ptr @set_cs43xx_params, ptr @xonar_set_cs53x1_params, ptr @update_cs43xx_volume, ptr @update_cs43xx_mute, ptr @update_cs43xx_center_lfe_mix, ptr null, ptr null, ptr null, ptr @xonar_d1_line_mic_ac97_switch, ptr @dump_d1_registers, ptr @cs4362a_db_scale, i32 36, i32 16549, i8 8, i8 8, i8 67, i8 127, i8 0, i8 64, i8 1, i8 1, i16 8, i16 8 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Xonar D1\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Xonar DX\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Asus Virtuoso 100\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AV200\00", [26 x i8] zeroinitializer }, align 32
@cs4362a_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6000, i32 100], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS4398\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CS4362A\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS5361\00", [25 x i8] zeroinitializer }, align 32
@front_panel_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @xonar_gpio_bit_switch_get, ptr @xonar_gpio_bit_switch_put, %union.anon.85 zeroinitializer, i32 2 }, [48 x i8] zeroinitializer }, align 32
@rolloff_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr @rolloff_info, ptr @rolloff_get, ptr @rolloff_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Front Panel Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DAC Filter Playback Enum\00", [39 x i8] zeroinitializer }, align 32
@rolloff_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.9, ptr @.str.10], [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Fast Roll-off\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Slow Roll-off\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0ACS4398: 7?\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0ACS4362A:\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 33397, i64 33575, i64 33615]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"model_xonar_d1\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 390, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 429, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 434, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 391, i32 14 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 392, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"cs4362a_db_scale\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 351, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 170, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 171, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 172, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"front_panel_switch\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 274, i32 38 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"rolloff_control\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 331, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 276, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 333, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 286, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 287, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 287, i32 20 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 383, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 385, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 386, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [35 x i8] c"../sound/pci/oxygen/xonar_cs43xx.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 371, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @model_xonar_d1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cs4362a_db_scale, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @front_panel_switch, ptr @rolloff_control, ptr @.str.7, ptr @.str.8, ptr @rolloff_info.names, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_xonar_d1 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs4362a_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @front_panel_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rolloff_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rolloff_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @get_xonar_cs43xx_model(ptr nocapture noundef writeonly %chip, ptr nocapture noundef readonly %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subdevice, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 33615, label %sw.bb
    i32 33397, label %entry.sw.bb2_crit_edge
    i32 33575, label %entry.sw.bb2_crit_edge11
  ]

entry.sw.bb2_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %model = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %3 = call ptr @memcpy(ptr %model, ptr @model_xonar_d1, i32 104)
  %4 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %model, align 4
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge11
  %model3 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28
  %5 = call ptr @memcpy(ptr %model3, ptr @model_xonar_d1, i32 104)
  %6 = ptrtoint ptr %model3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %model3, align 4
  %init = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 3
  %7 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xonar_dx_init, ptr %init, align 4
  br label %return

return:                                           ; preds = %sw.bb2, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_dx_init(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %ext_power_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ext_power_reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -92, ptr %ext_power_reg, align 2
  %ext_power_int_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %ext_power_int_reg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -91, ptr %ext_power_int_reg, align 1
  %ext_power_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ext_power_bit to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %ext_power_bit, align 4
  tail call void @xonar_init_ext_power(ptr noundef %chip) #5
  tail call void @xonar_d1_init(ptr noundef %chip)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_d1_init(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 800, ptr %1, align 4
  %output_enable_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %output_enable_bit to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %output_enable_bit, align 4
  %arrayidx = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 2
  %arrayidx3 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -102, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 120, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 120, ptr %arrayidx7, align 2
  %arrayidx9 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 7
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -16, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 36, ptr %arrayidx12, align 2
  %arrayidx14 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -68, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -68, ptr %arrayidx16, align 4
  %arrayidx20 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 9
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 36, ptr %arrayidx20, align 1
  %arrayidx22 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 10
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -68, ptr %arrayidx22, align 2
  %arrayidx24 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 11
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -68, ptr %arrayidx24, align 1
  %arrayidx28 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 12
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 36, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 13
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -68, ptr %arrayidx30, align 1
  %arrayidx32 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 14
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -68, ptr %arrayidx32, align 2
  tail call void @oxygen_write16(ptr noundef %chip, i32 noundef 148, i16 noundef zeroext 320) #5
  tail call fastcc void @cs43xx_registers_init(ptr noundef %chip)
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 450, i16 noundef zeroext 450) #5
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 258) #5
  tail call void @xonar_init_cs53x1(ptr noundef %chip) #5
  tail call void @xonar_enable_output(ptr noundef %chip) #5
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %call = tail call i32 @snd_component_add(ptr noundef %20, ptr noundef nonnull @.str.4) #5
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  %call34 = tail call i32 @snd_component_add(ptr noundef %22, ptr noundef nonnull @.str.5) #5
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %call36 = tail call i32 @snd_component_add(ptr noundef %24, ptr noundef nonnull @.str.6) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xonar_d1_mixer_init(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @front_panel_switch, ptr noundef %chip) #5
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call3 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @rolloff_control, ptr noundef %chip) #5
  %call4 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call3) #5
  %4 = tail call i32 @llvm.smin.i32(i32 %call4, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_d1_cleanup(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_disable_output(ptr noundef %chip) #5
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 1, i8 noundef zeroext -127) #5
  %arrayidx.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -127, ptr %arrayidx.i, align 1
  tail call void @oxygen_write8_masked(ptr noundef %chip, i32 noundef 80, i8 noundef zeroext 0, i8 noundef zeroext 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_d1_suspend(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xonar_disable_output(ptr noundef %chip) #5
  %model_data.i.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i.i, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 1, i8 noundef zeroext -127) #5
  %arrayidx.i.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -127, ptr %arrayidx.i.i, align 1
  tail call void @oxygen_write8_masked(ptr noundef %chip, i32 noundef 80, i8 noundef zeroext 0, i8 noundef zeroext 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_d1_resume(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @oxygen_write8_masked(ptr noundef %chip, i32 noundef 80, i8 noundef zeroext 2, i8 noundef zeroext 2) #5
  tail call void @msleep(i32 noundef 1) #5
  tail call fastcc void @cs43xx_registers_init(ptr noundef %chip)
  tail call void @xonar_enable_output(ptr noundef %chip) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_cs43xx_params(ptr noundef %chip, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50001, i32 %3)
  %cmp = icmp ult i32 %3, 50001
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %3)
  %cmp2 = icmp ult i32 %3, 100001
  %. = select i1 %cmp2, i8 1, i8 2
  %cs4362a_fm.0 = select i1 %cmp, i8 0, i8 %.
  %arrayidx.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %cs4362a_fm.0)
  %cmp.not.i = icmp eq i8 %5, %cs4362a_fm.0
  br i1 %cmp.not.i, label %entry.cs4398_write_cached.exit_crit_edge, label %if.then.i

entry.cs4398_write_cached.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4398_write_cached.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 2, i8 noundef zeroext %cs4362a_fm.0) #5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cs4362a_fm.0, ptr %arrayidx.i, align 1
  br label %cs4398_write_cached.exit

cs4398_write_cached.exit:                         ; preds = %if.then.i, %entry.cs4398_write_cached.exit_crit_edge
  %arrayidx = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 2
  %9 = and i8 %8, -4
  %or933 = or i8 %9, %cs4362a_fm.0
  %10 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %model_data, align 4
  %arrayidx.i37 = getelementptr %struct.xonar_cs43xx, ptr %11, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i37, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %or933)
  %cmp.not.i38 = icmp eq i8 %13, %or933
  br i1 %cmp.not.i38, label %cs4398_write_cached.exit.cs4362a_write_cached.exit_crit_edge, label %if.then.i39

cs4398_write_cached.exit.cs4362a_write_cached.exit_crit_edge: ; preds = %cs4398_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4362a_write_cached.exit

if.then.i39:                                      ; preds = %cs4398_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 6, i8 noundef zeroext %or933) #5
  %14 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or933, ptr %arrayidx.i37, align 1
  br label %cs4362a_write_cached.exit

cs4362a_write_cached.exit:                        ; preds = %if.then.i39, %cs4398_write_cached.exit.cs4362a_write_cached.exit_crit_edge
  %15 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %model_data, align 4
  %arrayidx.i41 = getelementptr %struct.xonar_cs43xx, ptr %16, i32 0, i32 2, i32 12
  %17 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i41, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %or933)
  %cmp.not.i42 = icmp eq i8 %18, %or933
  br i1 %cmp.not.i42, label %cs4362a_write_cached.exit.cs4362a_write_cached.exit44_crit_edge, label %if.then.i43

cs4362a_write_cached.exit.cs4362a_write_cached.exit44_crit_edge: ; preds = %cs4362a_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4362a_write_cached.exit44

if.then.i43:                                      ; preds = %cs4362a_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 12, i8 noundef zeroext %or933) #5
  %19 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or933, ptr %arrayidx.i41, align 1
  br label %cs4362a_write_cached.exit44

cs4362a_write_cached.exit44:                      ; preds = %if.then.i43, %cs4362a_write_cached.exit.cs4362a_write_cached.exit44_crit_edge
  %arrayidx15 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 9
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx15, align 1
  %22 = and i8 %21, -4
  %or1934 = or i8 %22, %cs4362a_fm.0
  %23 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %model_data, align 4
  %arrayidx.i46 = getelementptr %struct.xonar_cs43xx, ptr %24, i32 0, i32 2, i32 9
  %25 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i46, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %or1934)
  %cmp.not.i47 = icmp eq i8 %26, %or1934
  br i1 %cmp.not.i47, label %cs4362a_write_cached.exit44.cs4362a_write_cached.exit49_crit_edge, label %if.then.i48

cs4362a_write_cached.exit44.cs4362a_write_cached.exit49_crit_edge: ; preds = %cs4362a_write_cached.exit44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4362a_write_cached.exit49

if.then.i48:                                      ; preds = %cs4362a_write_cached.exit44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 9, i8 noundef zeroext %or1934) #5
  %27 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or1934, ptr %arrayidx.i46, align 1
  br label %cs4362a_write_cached.exit49

cs4362a_write_cached.exit49:                      ; preds = %if.then.i48, %cs4362a_write_cached.exit44.cs4362a_write_cached.exit49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_set_cs53x1_params(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_cs43xx_volume(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dac_volume = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 9
  %0 = ptrtoint ptr %dac_volume to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dac_volume, align 4
  %.neg = mul i8 %1, -2
  %mul = add i8 %.neg, -2
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %2 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i = getelementptr %struct.xonar_cs43xx, ptr %3, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %mul)
  %cmp.not.i = icmp eq i8 %5, %mul
  br i1 %cmp.not.i, label %entry.cs4398_write_cached.exit_crit_edge, label %if.then.i

entry.cs4398_write_cached.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4398_write_cached.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 5, i8 noundef zeroext %mul) #5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %mul, ptr %arrayidx.i, align 1
  br label %cs4398_write_cached.exit

cs4398_write_cached.exit:                         ; preds = %if.then.i, %entry.cs4398_write_cached.exit_crit_edge
  %arrayidx3 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %.neg12 = mul i8 %8, -2
  %mul6 = add i8 %.neg12, -2
  %9 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i14 = getelementptr %struct.xonar_cs43xx, ptr %10, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %mul6)
  %cmp.not.i15 = icmp eq i8 %12, %mul6
  br i1 %cmp.not.i15, label %cs4398_write_cached.exit.cs4398_write_cached.exit17_crit_edge, label %if.then.i16

cs4398_write_cached.exit.cs4398_write_cached.exit17_crit_edge: ; preds = %cs4398_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4398_write_cached.exit17

if.then.i16:                                      ; preds = %cs4398_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 6, i8 noundef zeroext %mul6) #5
  %13 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %mul6, ptr %arrayidx.i14, align 1
  br label %cs4398_write_cached.exit17

cs4398_write_cached.exit17:                       ; preds = %if.then.i16, %cs4398_write_cached.exit.cs4398_write_cached.exit17_crit_edge
  tail call fastcc void @update_cs4362a_volumes(ptr noundef %chip)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_cs43xx_mute(ptr noundef %chip) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dac_mute = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %dac_mute to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dac_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i8 -126, i8 -102
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %2 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i = getelementptr %struct.xonar_cs43xx, ptr %3, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %spec.select)
  %cmp.not.i = icmp eq i8 %5, %spec.select
  br i1 %cmp.not.i, label %entry.cs4398_write_cached.exit_crit_edge, label %if.then.i

entry.cs4398_write_cached.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4398_write_cached.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 4, i8 noundef zeroext %spec.select) #5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select, ptr %arrayidx.i, align 1
  br label %cs4398_write_cached.exit

cs4398_write_cached.exit:                         ; preds = %if.then.i, %entry.cs4398_write_cached.exit_crit_edge
  tail call fastcc void @update_cs4362a_volumes(ptr noundef %chip)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_cs43xx_center_lfe_mix(ptr noundef %chip, i1 noundef zeroext %mixed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %arrayidx = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, -125
  %reg.0.v = select i1 %mixed, i8 60, i8 36
  %reg.0 = or i8 %4, %reg.0.v
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %reg.0)
  %cmp.not.i = icmp eq i8 %3, %reg.0
  br i1 %cmp.not.i, label %entry.cs4362a_write_cached.exit_crit_edge, label %if.then.i

entry.cs4362a_write_cached.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4362a_write_cached.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 9, i8 noundef zeroext %reg.0) #5
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %reg.0, ptr %arrayidx, align 1
  br label %cs4362a_write_cached.exit

cs4362a_write_cached.exit:                        ; preds = %if.then.i, %entry.cs4362a_write_cached.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_d1_line_mic_ac97_switch(ptr noundef %chip, i32 noundef %reg, i32 noundef %mute) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %reg)
  %cmp = icmp eq i32 %reg, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %conv = select i1 %tobool.not, i16 0, i16 256
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext %conv, i16 noundef zeroext 256) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dump_d1_registers(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.11) #5
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %conv) #5
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %arrayidx.1 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef %conv.1) #5
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %arrayidx.2 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %conv.2) #5
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %arrayidx.3 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.12, i32 noundef %conv.3) #5
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %arrayidx.4 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.12, i32 noundef %conv.4) #5
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %arrayidx.5 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 7
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.12, i32 noundef %conv.5) #5
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.13) #5
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.14) #5
  %32 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer, align 4
  %arrayidx.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef nonnull @.str.12, i32 noundef %conv.i) #5
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  %arrayidx.1.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.12, i32 noundef %conv.1.i) #5
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %arrayidx.2.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.12, i32 noundef %conv.2.i) #5
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  %arrayidx.3.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 4
  %46 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %47 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.12, i32 noundef %conv.3.i) #5
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  %arrayidx.4.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 5
  %50 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %51 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.12, i32 noundef %conv.4.i) #5
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer, align 4
  %arrayidx.5.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 6
  %54 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %55 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.12, i32 noundef %conv.5.i) #5
  %56 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer, align 4
  %arrayidx.6.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 7
  %58 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.6.i, align 1
  %conv.6.i = zext i8 %59 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef nonnull @.str.12, i32 noundef %conv.6.i) #5
  %60 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer, align 4
  %arrayidx.7.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 8
  %62 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.7.i, align 1
  %conv.7.i = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %61, ptr noundef nonnull @.str.12, i32 noundef %conv.7.i) #5
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  %arrayidx.8.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 9
  %66 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.8.i, align 1
  %conv.8.i = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull @.str.12, i32 noundef %conv.8.i) #5
  %68 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buffer, align 4
  %arrayidx.9.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 10
  %70 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.9.i, align 1
  %conv.9.i = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.12, i32 noundef %conv.9.i) #5
  %72 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buffer, align 4
  %arrayidx.10.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 11
  %74 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.10.i, align 1
  %conv.10.i = zext i8 %75 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %73, ptr noundef nonnull @.str.12, i32 noundef %conv.10.i) #5
  %76 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buffer, align 4
  %arrayidx.11.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 12
  %78 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.11.i, align 1
  %conv.11.i = zext i8 %79 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %77, ptr noundef nonnull @.str.12, i32 noundef %conv.11.i) #5
  %80 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buffer, align 4
  %arrayidx.12.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 13
  %82 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.12.i, align 1
  %conv.12.i = zext i8 %83 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %81, ptr noundef nonnull @.str.12, i32 noundef %conv.12.i) #5
  %84 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buffer, align 4
  %arrayidx.13.i = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 14
  %86 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.13.i, align 1
  %conv.13.i = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef nonnull @.str.12, i32 noundef %conv.13.i) #5
  %88 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %89, ptr noundef nonnull @.str.13) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cs43xx_registers_init(ptr noundef %chip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 8, i8 noundef zeroext -64) #5
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 1, i8 noundef zeroext -127) #5
  %arrayidx.i = getelementptr %struct.xonar_cs43xx, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -127, ptr %arrayidx.i, align 1
  %arrayidx = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 2
  %7 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 2, i8 noundef zeroext %6) #5
  %arrayidx.i38 = getelementptr %struct.xonar_cs43xx, ptr %8, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %arrayidx.i38, align 1
  %10 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 3, i8 noundef zeroext 9) #5
  %arrayidx.i40 = getelementptr %struct.xonar_cs43xx, ptr %11, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %arrayidx.i40, align 1
  %arrayidx2 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2, align 4
  %15 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 4, i8 noundef zeroext %14) #5
  %arrayidx.i42 = getelementptr %struct.xonar_cs43xx, ptr %16, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %arrayidx.i42, align 1
  %arrayidx4 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx4, align 1
  %20 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 5, i8 noundef zeroext %19) #5
  %arrayidx.i44 = getelementptr %struct.xonar_cs43xx, ptr %21, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %19, ptr %arrayidx.i44, align 1
  %arrayidx6 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx6, align 2
  %25 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 6, i8 noundef zeroext %24) #5
  %arrayidx.i46 = getelementptr %struct.xonar_cs43xx, ptr %26, i32 0, i32 1, i32 6
  %27 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %arrayidx.i46, align 1
  %arrayidx8 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 1, i32 7
  %28 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx8, align 1
  %30 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 7, i8 noundef zeroext %29) #5
  %arrayidx.i48 = getelementptr %struct.xonar_cs43xx, ptr %31, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %29, ptr %arrayidx.i48, align 1
  %33 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 2, i8 noundef zeroext 0) #5
  %arrayidx.i50 = getelementptr %struct.xonar_cs43xx, ptr %34, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx.i50, align 1
  %36 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 3, i8 noundef zeroext -44) #5
  %arrayidx.i52 = getelementptr %struct.xonar_cs43xx, ptr %37, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -44, ptr %arrayidx.i52, align 1
  %arrayidx9 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx9, align 4
  %41 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 4, i8 noundef zeroext %40) #5
  %arrayidx.i54 = getelementptr %struct.xonar_cs43xx, ptr %42, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %40, ptr %arrayidx.i54, align 1
  %44 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 5, i8 noundef zeroext 0) #5
  %arrayidx.i56 = getelementptr %struct.xonar_cs43xx, ptr %45, i32 0, i32 2, i32 5
  %46 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx.i56, align 1
  %arrayidx11 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 6
  %47 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx11, align 1
  %49 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 6, i8 noundef zeroext %48) #5
  %arrayidx.i58 = getelementptr %struct.xonar_cs43xx, ptr %50, i32 0, i32 2, i32 6
  %51 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %48, ptr %arrayidx.i58, align 1
  %arrayidx11.1 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 7
  %52 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx11.1, align 1
  %54 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 7, i8 noundef zeroext %53) #5
  %arrayidx.i58.1 = getelementptr %struct.xonar_cs43xx, ptr %55, i32 0, i32 2, i32 7
  %56 = ptrtoint ptr %arrayidx.i58.1 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %53, ptr %arrayidx.i58.1, align 1
  %arrayidx11.2 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 8
  %57 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx11.2, align 1
  %59 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 8, i8 noundef zeroext %58) #5
  %arrayidx.i58.2 = getelementptr %struct.xonar_cs43xx, ptr %60, i32 0, i32 2, i32 8
  %61 = ptrtoint ptr %arrayidx.i58.2 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %58, ptr %arrayidx.i58.2, align 1
  %arrayidx11.3 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 9
  %62 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx11.3, align 1
  %64 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 9, i8 noundef zeroext %63) #5
  %arrayidx.i58.3 = getelementptr %struct.xonar_cs43xx, ptr %65, i32 0, i32 2, i32 9
  %66 = ptrtoint ptr %arrayidx.i58.3 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %63, ptr %arrayidx.i58.3, align 1
  %arrayidx11.4 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 10
  %67 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx11.4, align 1
  %69 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 10, i8 noundef zeroext %68) #5
  %arrayidx.i58.4 = getelementptr %struct.xonar_cs43xx, ptr %70, i32 0, i32 2, i32 10
  %71 = ptrtoint ptr %arrayidx.i58.4 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %68, ptr %arrayidx.i58.4, align 1
  %arrayidx11.5 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 11
  %72 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx11.5, align 1
  %74 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 11, i8 noundef zeroext %73) #5
  %arrayidx.i58.5 = getelementptr %struct.xonar_cs43xx, ptr %75, i32 0, i32 2, i32 11
  %76 = ptrtoint ptr %arrayidx.i58.5 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %73, ptr %arrayidx.i58.5, align 1
  %arrayidx11.6 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 12
  %77 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx11.6, align 1
  %79 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 12, i8 noundef zeroext %78) #5
  %arrayidx.i58.6 = getelementptr %struct.xonar_cs43xx, ptr %80, i32 0, i32 2, i32 12
  %81 = ptrtoint ptr %arrayidx.i58.6 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %78, ptr %arrayidx.i58.6, align 1
  %arrayidx11.7 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 13
  %82 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx11.7, align 1
  %84 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 13, i8 noundef zeroext %83) #5
  %arrayidx.i58.7 = getelementptr %struct.xonar_cs43xx, ptr %85, i32 0, i32 2, i32 13
  %86 = ptrtoint ptr %arrayidx.i58.7 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %83, ptr %arrayidx.i58.7, align 1
  %arrayidx11.8 = getelementptr %struct.xonar_cs43xx, ptr %1, i32 0, i32 2, i32 14
  %87 = ptrtoint ptr %arrayidx11.8 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx11.8, align 1
  %89 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 14, i8 noundef zeroext %88) #5
  %arrayidx.i58.8 = getelementptr %struct.xonar_cs43xx, ptr %90, i32 0, i32 2, i32 14
  %91 = ptrtoint ptr %arrayidx.i58.8 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %88, ptr %arrayidx.i58.8, align 1
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext -98, i8 noundef zeroext 8, i8 noundef zeroext 64) #5
  %92 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 1, i8 noundef zeroext -128) #5
  %arrayidx.i61 = getelementptr %struct.xonar_cs43xx, ptr %93, i32 0, i32 2, i32 1
  %94 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -128, ptr %arrayidx.i61, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_init_cs53x1(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_enable_output(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write_i2c(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16_masked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xonar_gpio_bit_switch_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xonar_gpio_bit_switch_put(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rolloff_info(ptr nocapture noundef readnone %ctl, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @rolloff_info.names) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rolloff_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %arrayidx = getelementptr %struct.xonar_cs43xx, ptr %3, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = lshr i8 %5, 2
  %.lobit = and i8 %6, 1
  %7 = zext i8 %.lobit to i32
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rolloff_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model_data = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model_data, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %arrayidx = getelementptr %struct.xonar_cs43xx, ptr %3, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %8 = and i8 %5, -5
  %masksel = select i1 %tobool.not, i8 0, i8 4
  %reg.0 = or i8 %masksel, %8
  call void @__sanitizer_cov_trace_cmp1(i8 %reg.0, i8 %5)
  %cmp = icmp ne i8 %reg.0, %5
  br i1 %cmp, label %if.then12, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext -98, i8 noundef zeroext 7, i8 noundef zeroext %reg.0) #5
  %arrayidx.i = getelementptr %struct.xonar_cs43xx, ptr %10, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %reg.0, ptr %arrayidx.i, align 1
  %arrayidx23 = getelementptr %struct.xonar_cs43xx, ptr %3, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx23, align 4
  %14 = and i8 %13, -17
  %masksel45 = select i1 %tobool.not, i8 0, i8 16
  %reg.1 = or i8 %14, %masksel45
  %15 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %model_data, align 4
  tail call void @oxygen_write_i2c(ptr noundef %1, i8 noundef zeroext 48, i8 noundef zeroext 4, i8 noundef zeroext %reg.1) #5
  %arrayidx.i44 = getelementptr %struct.xonar_cs43xx, ptr %16, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %reg.1, ptr %arrayidx.i44, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then12, %entry.if.end28_crit_edge
  %conv10 = zext i1 %cmp to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %conv10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_disable_output(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write8_masked(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_cs4362a_volumes(ptr noundef %chip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dac_mute = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %dac_mute to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dac_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv1 = select i1 %tobool.not, i8 0, i8 -128
  %model_data.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %arrayidx = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %sub = sub i8 127, %3
  %or = or i8 %sub, %conv1
  %4 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i = getelementptr %struct.xonar_cs43xx, ptr %5, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %or)
  %cmp.not.i = icmp eq i8 %7, %or
  br i1 %cmp.not.i, label %entry.cs4362a_write_cached.exit_crit_edge, label %if.then.i

entry.cs4362a_write_cached.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4362a_write_cached.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 7, i8 noundef zeroext %or) #5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or, ptr %arrayidx.i, align 1
  br label %cs4362a_write_cached.exit

cs4362a_write_cached.exit:                        ; preds = %if.then.i, %entry.cs4362a_write_cached.exit_crit_edge
  %arrayidx.1 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1, align 1
  %sub.1 = sub i8 127, %10
  %or.1 = or i8 %sub.1, %conv1
  %11 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i.1 = getelementptr %struct.xonar_cs43xx, ptr %12, i32 0, i32 2, i32 8
  %13 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %or.1)
  %cmp.not.i.1 = icmp eq i8 %14, %or.1
  br i1 %cmp.not.i.1, label %cs4362a_write_cached.exit.cs4362a_write_cached.exit.1_crit_edge, label %if.then.i.1

cs4362a_write_cached.exit.cs4362a_write_cached.exit.1_crit_edge: ; preds = %cs4362a_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4362a_write_cached.exit.1

if.then.i.1:                                      ; preds = %cs4362a_write_cached.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 8, i8 noundef zeroext %or.1) #5
  %15 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or.1, ptr %arrayidx.i.1, align 1
  br label %cs4362a_write_cached.exit.1

cs4362a_write_cached.exit.1:                      ; preds = %if.then.i.1, %cs4362a_write_cached.exit.cs4362a_write_cached.exit.1_crit_edge
  %arrayidx.2 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2, align 1
  %sub.2 = sub i8 127, %17
  %or.2 = or i8 %sub.2, %conv1
  %18 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i.2 = getelementptr %struct.xonar_cs43xx, ptr %19, i32 0, i32 2, i32 10
  %20 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %or.2)
  %cmp.not.i.2 = icmp eq i8 %21, %or.2
  br i1 %cmp.not.i.2, label %cs4362a_write_cached.exit.1.cs4362a_write_cached.exit.2_crit_edge, label %if.then.i.2

cs4362a_write_cached.exit.1.cs4362a_write_cached.exit.2_crit_edge: ; preds = %cs4362a_write_cached.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4362a_write_cached.exit.2

if.then.i.2:                                      ; preds = %cs4362a_write_cached.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 10, i8 noundef zeroext %or.2) #5
  %22 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or.2, ptr %arrayidx.i.2, align 1
  br label %cs4362a_write_cached.exit.2

cs4362a_write_cached.exit.2:                      ; preds = %if.then.i.2, %cs4362a_write_cached.exit.1.cs4362a_write_cached.exit.2_crit_edge
  %arrayidx.3 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 5
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3, align 1
  %sub.3 = sub i8 127, %24
  %or.3 = or i8 %sub.3, %conv1
  %25 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i.3 = getelementptr %struct.xonar_cs43xx, ptr %26, i32 0, i32 2, i32 11
  %27 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %or.3)
  %cmp.not.i.3 = icmp eq i8 %28, %or.3
  br i1 %cmp.not.i.3, label %cs4362a_write_cached.exit.2.cs4362a_write_cached.exit.3_crit_edge, label %if.then.i.3

cs4362a_write_cached.exit.2.cs4362a_write_cached.exit.3_crit_edge: ; preds = %cs4362a_write_cached.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4362a_write_cached.exit.3

if.then.i.3:                                      ; preds = %cs4362a_write_cached.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 11, i8 noundef zeroext %or.3) #5
  %29 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or.3, ptr %arrayidx.i.3, align 1
  br label %cs4362a_write_cached.exit.3

cs4362a_write_cached.exit.3:                      ; preds = %if.then.i.3, %cs4362a_write_cached.exit.2.cs4362a_write_cached.exit.3_crit_edge
  %arrayidx.4 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 6
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.4, align 1
  %sub.4 = sub i8 127, %31
  %or.4 = or i8 %sub.4, %conv1
  %32 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i.4 = getelementptr %struct.xonar_cs43xx, ptr %33, i32 0, i32 2, i32 13
  %34 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %or.4)
  %cmp.not.i.4 = icmp eq i8 %35, %or.4
  br i1 %cmp.not.i.4, label %cs4362a_write_cached.exit.3.cs4362a_write_cached.exit.4_crit_edge, label %if.then.i.4

cs4362a_write_cached.exit.3.cs4362a_write_cached.exit.4_crit_edge: ; preds = %cs4362a_write_cached.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4362a_write_cached.exit.4

if.then.i.4:                                      ; preds = %cs4362a_write_cached.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 13, i8 noundef zeroext %or.4) #5
  %36 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %or.4, ptr %arrayidx.i.4, align 1
  br label %cs4362a_write_cached.exit.4

cs4362a_write_cached.exit.4:                      ; preds = %if.then.i.4, %cs4362a_write_cached.exit.3.cs4362a_write_cached.exit.4_crit_edge
  %arrayidx.5 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 9, i32 7
  %37 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.5, align 1
  %sub.5 = sub i8 127, %38
  %or.5 = or i8 %sub.5, %conv1
  %39 = ptrtoint ptr %model_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %model_data.i, align 4
  %arrayidx.i.5 = getelementptr %struct.xonar_cs43xx, ptr %40, i32 0, i32 2, i32 14
  %41 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %or.5)
  %cmp.not.i.5 = icmp eq i8 %42, %or.5
  br i1 %cmp.not.i.5, label %cs4362a_write_cached.exit.4.cs4362a_write_cached.exit.5_crit_edge, label %if.then.i.5

cs4362a_write_cached.exit.4.cs4362a_write_cached.exit.5_crit_edge: ; preds = %cs4362a_write_cached.exit.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cs4362a_write_cached.exit.5

if.then.i.5:                                      ; preds = %cs4362a_write_cached.exit.4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write_i2c(ptr noundef %chip, i8 noundef zeroext 48, i8 noundef zeroext 14, i8 noundef zeroext %or.5) #5
  %43 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %or.5, ptr %arrayidx.i.5, align 1
  br label %cs4362a_write_cached.exit.5

cs4362a_write_cached.exit.5:                      ; preds = %if.then.i.5, %cs4362a_write_cached.exit.4.cs4362a_write_cached.exit.5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xonar_init_ext_power(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 429, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 434, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 391, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 392, i32 10}
!8 = !{ptr @model_xonar_d1, !9, !"model_xonar_d1", i1 false, i1 false}
!9 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 390, i32 34}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 170, i32 32}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 171, i32 32}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 172, i32 32}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 276, i32 10}
!18 = !{ptr @front_panel_switch, !19, !"front_panel_switch", i1 false, i1 false}
!19 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 274, i32 38}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 333, i32 10}
!22 = !{ptr @rolloff_control, !23, !"rolloff_control", i1 false, i1 false}
!23 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 331, i32 38}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 287, i32 3}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 287, i32 20}
!28 = !{ptr @rolloff_info.names, !29, !"names", i1 false, i1 false}
!29 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 286, i32 27}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 383, i32 2}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 385, i32 3}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 386, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 371, i32 2}
!38 = !{ptr @cs4362a_db_scale, !39, !"cs4362a_db_scale", i1 false, i1 false}
!39 = !{!"../sound/pci/oxygen/xonar_cs43xx.c", i32 351, i32 14}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
