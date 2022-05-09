; ModuleID = '/llk/IR_all_yes/sound/firewire/oxfw/oxfw-spkr.c_pt.bc'
source_filename = "../sound/firewire/oxfw/oxfw-spkr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_oxfw = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, i8, i8, [10 x ptr], [10 x ptr], i8, %struct.cmp_connection, %struct.cmp_connection, %struct.amdtp_stream, %struct.amdtp_stream, i32, i32, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.fw_spkr = type { i8, [6 x i16], i16, i16, i32, i8, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.91, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.91 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.86, [128 x i8] }
%union.anon.86 = type { %union.anon.88 }
%union.anon.88 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.82, [64 x i8] }
%union.anon.82 = type { %struct.anon.85, [40 x i8] }
%struct.anon.85 = type { i32, i32, [64 x i8], i64, i32 }

@snd_oxfw_add_spkr.controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @spkr_mute_get, ptr @spkr_mute_put, %union.anon.94 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 0, i32 0, ptr @spkr_volume_info, ptr @spkr_volume_get, ptr @spkr_volume_put, %union.anon.94 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@channel_map = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\01\04\05\02\03", [26 x i8] zeroinitializer }, align 32
@avc_audio_feature_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"short FCP response\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"avc_audio_feature_volume\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/firewire/oxfw/oxfw-spkr.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@avc_audio_feature_volume._entry_ptr = internal global ptr @avc_audio_feature_volume._entry, section ".printk_index", align 4
@avc_audio_feature_volume._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 130, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"volume command failed\0A\00", [41 x i8] zeroinitializer }, align 32
@avc_audio_feature_volume._entry_ptr.9 = internal global ptr @avc_audio_feature_volume._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@avc_audio_feature_mute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.10, ptr @.str.4, i32 64, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"avc_audio_feature_mute\00", [41 x i8] zeroinitializer }, align 32
@avc_audio_feature_mute._entry_ptr = internal global ptr @avc_audio_feature_mute._entry, section ".printk_index", align 4
@avc_audio_feature_mute._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 69, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mute command failed\0A\00", [43 x i8] zeroinitializer }, align 32
@avc_audio_feature_mute._entry_ptr.13 = internal global ptr @avc_audio_feature_mute._entry.11, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"controls\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 253, i32 39 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 256, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 263, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"channel_map\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 192, i32 17 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 125, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 130, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 64, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [35 x i8] c"../sound/firewire/oxfw/oxfw-spkr.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 69, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @avc_audio_feature_mute._entry, ptr @avc_audio_feature_mute._entry.11, ptr @avc_audio_feature_mute._entry_ptr, ptr @avc_audio_feature_mute._entry_ptr.13, ptr @avc_audio_feature_volume._entry, ptr @avc_audio_feature_volume._entry.7, ptr @avc_audio_feature_volume._entry_ptr, ptr @avc_audio_feature_volume._entry_ptr.9, ptr @snd_oxfw_add_spkr.controls, ptr @.str, ptr @.str.1, ptr @channel_map, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_add_spkr.controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_map to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_audio_feature_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_audio_feature_volume._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_audio_feature_mute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_audio_feature_mute._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_oxfw_add_spkr(ptr noundef %oxfw, i1 noundef zeroext %is_lacie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oxfw, align 8
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 28
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %card_dev, i32 noundef 28, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 20
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %spec, align 8
  %spec.select = select i1 %is_lacie, i32 1, i32 6
  %spec.select96 = select i1 %is_lacie, i8 1, i8 2
  %3 = getelementptr inbounds %struct.fw_spkr, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fw_spkr, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fw_spkr, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select96, ptr %7, align 1
  %unit = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %9 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unit, align 4
  %volume_min = getelementptr inbounds %struct.fw_spkr, ptr %call.i, i32 0, i32 2
  %call8 = tail call fastcc i32 @avc_audio_feature_volume(ptr noundef %10, i8 noundef zeroext %spec.select96, ptr noundef %volume_min, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %11 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unit, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %7, align 1
  %volume_max = getelementptr inbounds %struct.fw_spkr, ptr %call.i, i32 0, i32 3
  %call13 = tail call fastcc i32 @avc_audio_feature_volume(ptr noundef %12, i8 noundef zeroext %14, ptr noundef %volume_max, i32 noundef 0, i32 noundef 3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %15 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unit, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %5, align 4
  %call19 = tail call fastcc i32 @avc_audio_feature_mute(ptr noundef %16, i8 noundef zeroext %18, ptr noundef nonnull %call.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp24 = icmp ne i32 %20, 1
  %cond = zext i1 %cmp24 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp2689.not = icmp eq i32 %20, 0
  br i1 %cmp2689.not, label %if.end22.for.cond33.preheader_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

if.end22.for.cond33.preheader_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond33.preheader

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.090, 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  %cmp26 = icmp ult i32 %inc, %22
  br i1 %cmp26, label %for.cond.for.body_crit_edge, label %for.cond.for.cond33.preheader_crit_edge

for.cond.for.cond33.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond33.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond33.preheader:                             ; preds = %for.cond.for.cond33.preheader_crit_edge, %if.end22.for.cond33.preheader_crit_edge
  %23 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %oxfw, align 8
  %call38 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_oxfw_add_spkr.controls, ptr noundef %oxfw) #8
  %call39 = tail call i32 @snd_ctl_add(ptr noundef %24, ptr noundef %call38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %for.cond33.preheader.cleanup_crit_edge, label %for.cond33

for.cond33.preheader.cleanup_crit_edge:           ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end22.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end22.for.body_crit_edge ]
  %25 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %unit, align 4
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %7, align 1
  %arrayidx = getelementptr %struct.fw_spkr, ptr %call.i, i32 0, i32 1, i32 %i.090
  %add = add nuw i32 %i.090, %cond
  %call29 = tail call fastcc i32 @avc_audio_feature_volume(ptr noundef %26, i8 noundef zeroext %28, ptr noundef %arrayidx, i32 noundef %add, i32 noundef 16, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond33:                                       ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %oxfw, align 8
  %call38.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @snd_oxfw_add_spkr.controls, i32 0, i32 1), ptr noundef %oxfw) #8
  %call39.1 = tail call i32 @snd_ctl_add(ptr noundef %30, ptr noundef %call38.1) #8
  %31 = call i32 @llvm.smin.i32(i32 %call39.1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond33, %for.body.cleanup_crit_edge, %for.cond33.preheader.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ %call13, %if.end10.cleanup_crit_edge ], [ %call19, %if.end16.cleanup_crit_edge ], [ %call39, %for.cond33.preheader.cleanup_crit_edge ], [ %31, %for.cond33 ], [ %call29, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @spkr_mute_get(ptr nocapture noundef readonly %control, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %control, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !37
  %6 = xor i8 %5, 1
  %7 = zext i8 %6 to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spkr_mute_put(ptr nocapture noundef readonly %control, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  %mute = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %control, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mute) #8
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %frombool = zext i1 %tobool.not to i8
  %6 = ptrtoint ptr %mute to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %mute, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 4, !range !37
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %frombool)
  %cmp = icmp eq i8 %8, %frombool
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %unit = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unit, align 4
  %mute_fb_id = getelementptr inbounds %struct.fw_spkr, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %mute_fb_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mute_fb_id, align 4
  %call = call fastcc i32 @avc_audio_feature_mute(ptr noundef %10, i8 noundef zeroext %12, ptr noundef nonnull %mute, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %mute to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mute, align 1, !range !37
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mute) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @spkr_volume_info(ptr nocapture noundef readonly %control, ptr nocapture noundef writeonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %control, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec, align 8
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 8
  %mixer_channels = getelementptr inbounds %struct.fw_spkr, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %mixer_channels to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mixer_channels, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %count, align 8
  %volume_min = getelementptr inbounds %struct.fw_spkr, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %volume_min to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %volume_min, align 2
  %conv = sext i16 %9 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %value, align 8
  %volume_max = getelementptr inbounds %struct.fw_spkr, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %volume_max to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %volume_max, align 4
  %conv1 = sext i16 %12 to i32
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spkr_volume_get(ptr nocapture noundef readonly %control, ptr nocapture noundef writeonly %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %control, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec, align 8
  %mixer_channels = getelementptr inbounds %struct.fw_spkr, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mixer_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mixer_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not = icmp eq i32 %5, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fw_spkr, ptr %3, i32 0, i32 1, i32 %i.09
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %7 to i32
  %arrayidx2 = getelementptr [6 x i8], ptr @channel_map, i32 0, i32 %i.09
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx3 = getelementptr [128 x i32], ptr %value1, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %arrayidx3, align 4
  %inc = add nuw i32 %i.09, 1
  %11 = ptrtoint ptr %mixer_channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mixer_channels, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spkr_volume_put(ptr nocapture noundef readonly %control, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  %volume = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %control, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %volume) #8
  %mixer_channels = getelementptr inbounds %struct.fw_spkr, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mixer_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mixer_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp117.not = icmp eq i32 %5, 0
  br i1 %cmp117.not, label %entry.for.end34.thread_crit_edge, label %for.body.lr.ph

entry.for.end34.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34.thread

for.body.lr.ph:                                   ; preds = %entry
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %volume_min = getelementptr inbounds %struct.fw_spkr, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %volume_min to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %volume_min, align 2
  %conv = sext i16 %7 to i32
  %volume_max = getelementptr inbounds %struct.fw_spkr, ptr %3, i32 0, i32 3
  br label %for.body

for.cond17.preheader:                             ; preds = %if.end
  br i1 %cmp117.not, label %for.cond17.preheader.for.end34_crit_edge, label %for.body21.lr.ph

for.cond17.preheader.for.end34_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.body21.lr.ph:                                 ; preds = %for.cond17.preheader
  %value22 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  br label %for.body21

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %equal_values.0.off0119 = phi i1 [ true, %for.body.lr.ph ], [ %spec.select, %if.end.for.body_crit_edge ]
  %i.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value1, i32 0, i32 %i.0118
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp2 = icmp slt i32 %9, %conv
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %10 = ptrtoint ptr %volume_max to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %volume_max, align 4
  %conv6 = sext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv6)
  %cmp7 = icmp sgt i32 %9, %conv6
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp13.not = icmp eq i32 %9, %13
  %spec.select = select i1 %cmp13.not, i1 %equal_values.0.off0119, i1 false
  %inc = add nuw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond17.preheader, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.body21.lr.ph
  %changed_channels.0123 = phi i32 [ 0, %for.body21.lr.ph ], [ %changed_channels.1, %for.body21.for.body21_crit_edge ]
  %i.1122 = phi i32 [ 0, %for.body21.lr.ph ], [ %add, %for.body21.for.body21_crit_edge ]
  %arrayidx23 = getelementptr [6 x i8], ptr @channel_map, i32 0, i32 %i.1122
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx23, align 1
  %idxprom = zext i8 %15 to i32
  %arrayidx24 = getelementptr [128 x i32], ptr %value22, i32 0, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx24, align 4
  %arrayidx26 = getelementptr %struct.fw_spkr, ptr %3, i32 0, i32 1, i32 %i.1122
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx26, align 2
  %conv27 = sext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv27)
  %cmp28.not = icmp eq i32 %17, %conv27
  %add = add nuw i32 %i.1122, 1
  %shl = shl i32 2, %i.1122
  %or = select i1 %cmp28.not, i32 0, i32 %shl
  %changed_channels.1 = or i32 %or, %changed_channels.0123
  %exitcond128.not = icmp eq i32 %add, %5
  br i1 %exitcond128.not, label %for.body21.for.end34_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

for.body21.for.end34_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.end34:                                        ; preds = %for.body21.for.end34_crit_edge, %for.cond17.preheader.for.end34_crit_edge
  %changed_channels.0.lcssa = phi i32 [ 0, %for.cond17.preheader.for.end34_crit_edge ], [ %changed_channels.1, %for.body21.for.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed_channels.0.lcssa)
  %cmp36.not = icmp ne i32 %changed_channels.0.lcssa, 0
  %spec.store.select = zext i1 %cmp36.not to i32
  br i1 %spec.select, label %for.end34.for.end34.thread_crit_edge, label %for.end34._crit_edge

for.end34._crit_edge:                             ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %20

for.end34.for.end34.thread_crit_edge:             ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34.thread

for.end34.thread:                                 ; preds = %for.end34.for.end34.thread_crit_edge, %entry.for.end34.thread_crit_edge
  %spec.store.select135 = phi i32 [ %spec.store.select, %for.end34.for.end34.thread_crit_edge ], [ 0, %entry.for.end34.thread_crit_edge ]
  br label %20

20:                                               ; preds = %for.end34.thread, %for.end34._crit_edge
  %21 = phi i32 [ %spec.store.select135, %for.end34.thread ], [ %changed_channels.0.lcssa, %for.end34._crit_edge ]
  %value45 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %unit = getelementptr inbounds %struct.snd_oxfw, ptr %1, i32 0, i32 1
  %volume_fb_id = getelementptr inbounds %struct.fw_spkr, ptr %3, i32 0, i32 6
  br label %for.body44

for.body44:                                       ; preds = %for.inc66.for.body44_crit_edge, %20
  %i.2125 = phi i32 [ 0, %20 ], [ %inc67, %for.inc66.for.body44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2125)
  %tobool46.not = icmp eq i32 %i.2125, 0
  %sub = add i32 %i.2125, -1
  %spec.select112 = select i1 %tobool46.not, i32 0, i32 %sub
  %arrayidx47 = getelementptr [6 x i8], ptr @channel_map, i32 0, i32 %spec.select112
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx47, align 1
  %idxprom48 = zext i8 %23 to i32
  %arrayidx49 = getelementptr [128 x i32], ptr %value45, i32 0, i32 %idxprom48
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx49, align 4
  %conv50 = trunc i32 %25 to i16
  %26 = ptrtoint ptr %volume to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv50, ptr %volume, align 2
  %shl51 = shl nuw i32 1, %i.2125
  %and = and i32 %shl51, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %for.body44.if.end58_crit_edge, label %if.then53

for.body44.if.end58_crit_edge:                    ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then53:                                        ; preds = %for.body44
  %27 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %unit, align 4
  %29 = ptrtoint ptr %volume_fb_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %volume_fb_id, align 1
  %call = call fastcc i32 @avc_audio_feature_volume(ptr noundef %28, i8 noundef zeroext %30, ptr noundef nonnull %volume, i32 noundef %i.2125, i32 noundef 16, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp54 = icmp slt i32 %call, 0
  br i1 %cmp54, label %if.then53.cleanup_crit_edge, label %if.then53.if.end58_crit_edge

if.then53.if.end58_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %if.then53.if.end58_crit_edge, %for.body44.if.end58_crit_edge
  br i1 %tobool46.not, label %if.end58.for.inc66_crit_edge, label %if.then61

if.end58.for.inc66_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc66

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %volume to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %volume, align 2
  %arrayidx64 = getelementptr %struct.fw_spkr, ptr %3, i32 0, i32 1, i32 %sub
  %33 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx64, align 2
  br label %for.inc66

for.inc66:                                        ; preds = %if.then61, %if.end58.for.inc66_crit_edge
  %inc67 = add i32 %i.2125, 1
  %34 = ptrtoint ptr %mixer_channels to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mixer_channels, align 4
  %cmp42.not = icmp ugt i32 %inc67, %35
  br i1 %cmp42.not, label %for.end68, label %for.inc66.for.body44_crit_edge

for.inc66.for.body44_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44

for.end68:                                        ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp69 = icmp ne i32 %21, 0
  %conv70 = zext i1 %cmp69 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end68, %if.then53.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv70, %for.end68 ], [ %call, %if.then53.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %volume) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @avc_audio_feature_volume(ptr noundef %unit, i8 noundef zeroext %fb_id, ptr nocapture noundef %value, i32 noundef %channel, i32 noundef %attribute, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  %. = zext i1 %cmp to i8
  %.86 = select i1 %cmp, i32 12, i32 9
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %., ptr %call7.i, align 8
  %arrayidx4 = getelementptr i8, ptr %call7.i, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %call7.i, i32 2
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -72, ptr %arrayidx5, align 2
  %arrayidx6 = getelementptr i8, ptr %call7.i, i32 3
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -127, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %call7.i, i32 4
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %fb_id, ptr %arrayidx7, align 4
  %conv = trunc i32 %attribute to i8
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 5
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %call7.i, i32 6
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %arrayidx9, align 2
  %conv10 = trunc i32 %channel to i8
  %arrayidx11 = getelementptr i8, ptr %call7.i, i32 7
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv10, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr i8, ptr %call7.i, i32 8
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %arrayidx12, align 8
  %arrayidx13 = getelementptr i8, ptr %call7.i, i32 9
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %arrayidx13, align 1
  br i1 %cmp, label %if.end.if.end25_crit_edge, label %if.else19

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.else19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %value, align 2
  %13 = lshr i16 %12, 8
  %conv21 = trunc i16 %13 to i8
  %conv23 = trunc i16 %12 to i8
  br label %if.end25

if.end25:                                         ; preds = %if.else19, %if.end.if.end25_crit_edge
  %conv21.sink = phi i8 [ %conv21, %if.else19 ], [ -1, %if.end.if.end25_crit_edge ]
  %conv23.sink = phi i8 [ %conv23, %if.else19 ], [ -1, %if.end.if.end25_crit_edge ]
  %14 = getelementptr i8, ptr %call7.i, i32 10
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv21.sink, ptr %14, align 2
  %16 = getelementptr i8, ptr %call7.i, i32 11
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv23.sink, ptr %16, align 1
  %call26 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i, i32 noundef 12, ptr noundef nonnull %call7.i, i32 noundef 12, i32 noundef 1022) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end25.error_crit_edge, label %if.end30

if.end25.error_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call26)
  %cmp31 = icmp ult i32 %call26, 12
  br i1 %cmp31, label %do.end, label %if.end34

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %unit, ptr noundef nonnull @.str.2) #12
  br label %error

if.end34:                                         ; preds = %if.end30
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call7.i, align 8
  %conv36 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.86, i32 %conv36)
  %cmp38.not = icmp eq i32 %.86, %conv36
  br i1 %cmp38.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %unit, ptr noundef nonnull @.str.8) #12
  br label %error

if.end45:                                         ; preds = %if.end34
  br i1 %cmp, label %if.then48, label %if.end45.error_crit_edge

if.end45.error_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %14, align 2
  %conv50 = zext i8 %21 to i16
  %shl = shl nuw i16 %conv50, 8
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %16, align 1
  %conv52 = zext i8 %23 to i16
  %or = or i16 %shl, %conv52
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or, ptr %value, align 2
  br label %error

error:                                            ; preds = %if.then48, %if.end45.error_crit_edge, %do.end43, %do.end, %if.end25.error_crit_edge
  %err.0 = phi i32 [ %call26, %if.end25.error_crit_edge ], [ -5, %do.end ], [ -5, %do.end43 ], [ 0, %if.then48 ], [ 0, %if.end45.error_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @avc_audio_feature_mute(ptr noundef %unit, i8 noundef zeroext %fb_id, ptr nocapture noundef %value, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 11) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action)
  %cmp = icmp eq i32 %action, 0
  %. = zext i1 %cmp to i8
  %.75 = select i1 %cmp, i32 12, i32 9
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %., ptr %call7.i, align 8
  %arrayidx4 = getelementptr i8, ptr %call7.i, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %call7.i, i32 2
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -72, ptr %arrayidx5, align 2
  %arrayidx6 = getelementptr i8, ptr %call7.i, i32 3
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -127, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %call7.i, i32 4
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %fb_id, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 5
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %call7.i, i32 6
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %arrayidx9, align 2
  %arrayidx10 = getelementptr i8, ptr %call7.i, i32 7
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %call7.i, i32 8
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx11, align 8
  %arrayidx12 = getelementptr i8, ptr %call7.i, i32 9
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx12, align 1
  br i1 %cmp, label %if.end.if.end19_crit_edge, label %if.else16

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  %conv = select i1 %tobool17.not, i8 96, i8 112
  br label %if.end19

if.end19:                                         ; preds = %if.else16, %if.end.if.end19_crit_edge
  %conv.sink = phi i8 [ %conv, %if.else16 ], [ -1, %if.end.if.end19_crit_edge ]
  %13 = getelementptr i8, ptr %call7.i, i32 10
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.sink, ptr %13, align 2
  %call20 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i, i32 noundef 11, ptr noundef nonnull %call7.i, i32 noundef 11, i32 noundef 1022) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.error_crit_edge, label %if.end24

if.end19.error_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call20)
  %cmp25 = icmp ult i32 %call20, 11
  br i1 %cmp25, label %do.end, label %if.end28

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %unit, ptr noundef nonnull @.str.2) #12
  br label %error

if.end28:                                         ; preds = %if.end24
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call7.i, align 8
  %conv30 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.75, i32 %conv30)
  %cmp32.not = icmp eq i32 %.75, %conv30
  br i1 %cmp32.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %unit, ptr noundef nonnull @.str.12) #12
  br label %error

if.end39:                                         ; preds = %if.end28
  br i1 %cmp, label %if.then42, label %if.end39.error_crit_edge

if.end39.error_crit_edge:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %18)
  %cmp45 = icmp eq i8 %18, 112
  %frombool = zext i1 %cmp45 to i8
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %value, align 1
  br label %error

error:                                            ; preds = %if.then42, %if.end39.error_crit_edge, %do.end37, %do.end, %if.end19.error_crit_edge
  %err.0 = phi i32 [ %call20, %if.end19.error_crit_edge ], [ -5, %do.end ], [ -5, %do.end37 ], [ 0, %if.then42 ], [ 0, %if.end39.error_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fcp_avc_transaction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/oxfw/oxfw-spkr.c", i32 256, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/oxfw/oxfw-spkr.c", i32 263, i32 12}
!4 = !{ptr @snd_oxfw_add_spkr.controls, !5, !"controls", i1 false, i1 false}
!5 = !{!"../sound/firewire/oxfw/oxfw-spkr.c", i32 253, i32 39}
!6 = !{ptr @channel_map, !7, !"channel_map", i1 false, i1 false}
!7 = !{!"../sound/firewire/oxfw/oxfw-spkr.c", i32 192, i32 17}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/oxfw/oxfw-spkr.c", i32 125, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @avc_audio_feature_volume._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @avc_audio_feature_volume._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/firewire/oxfw/oxfw-spkr.c", i32 130, i32 3}
!18 = !{ptr @avc_audio_feature_volume._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @avc_audio_feature_volume._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/firewire/oxfw/oxfw-spkr.c", i32 64, i32 3}
!22 = !{ptr @avc_audio_feature_mute._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @avc_audio_feature_mute._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/firewire/oxfw/oxfw-spkr.c", i32 69, i32 3}
!26 = !{ptr @avc_audio_feature_mute._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @avc_audio_feature_mute._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
