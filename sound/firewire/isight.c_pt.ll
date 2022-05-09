; ModuleID = '/llk/IR_all_yes/sound/firewire/isight.c_pt.bc'
source_filename = "../sound/firewire/isight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fw_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee1394_device_id = type { i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.fw_csr_iterator = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.isight = type { ptr, ptr, ptr, i64, ptr, %struct.mutex, %struct.iso_packets_buffer, %struct.fw_iso_resources, ptr, i8, i8, i8, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.fw_unit = type { %struct.device, ptr, %struct.fw_attribute_group }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.fw_device = type { %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.device, %struct.mutex, %struct.list_head, ptr, i32, i32, i16, ptr, %struct.delayed_work, %struct.fw_attribute_group }
%struct.anon.82 = type { ptr, i32 }
%struct.audio_payload = type { i32, i32, i32, i32, [950 x i16] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.72, [64 x i8] }
%union.anon.72 = type { %struct.anon.75, [40 x i8] }
%struct.anon.75 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.76, [128 x i8] }
%union.anon.76 = type { %union.anon.78 }
%union.anon.78 = type { [64 x i64] }

@__UNIQUE_ID_description240 = internal constant [43 x i8] c"snd_isight.description=iSight audio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [55 x i8] c"snd_isight.author=Clemens Ladisch <clemens@ladisch.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [42 x i8] c"snd_isight.file=sound/firewire/snd-isight\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [26 x i8] c"snd_isight.license=GPL v2\00", section ".modinfo", align 1
@isight_driver = internal global { %struct.fw_driver, [36 x i8] } { %struct.fw_driver { %struct.device_driver { ptr @.str, ptr @fw_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @isight_probe, ptr @isight_bus_reset, ptr @isight_remove, ptr @isight_id_table }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_isight__253_737_alsa_isight_init6 = internal global ptr @alsa_isight_init, section ".initcall6.init", align 4
@__exitcall_alsa_isight_exit = internal global ptr @alsa_isight_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_isight\00", [21 x i8] zeroinitializer }, align 32
@fw_bus_type = external dso_local global %struct.bus_type, align 4
@isight_id_table = internal constant { [2 x %struct.ieee1394_device_id], [48 x i8] } { [2 x %struct.ieee1394_device_id] [%struct.ieee1394_device_id { i32 12, i32 0, i32 0, i32 2599, i32 16, i32 0 }, %struct.ieee1394_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@isight_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&isight->mutex\00", [17 x i8] zeroinitializer }, align 32
@isight_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 632, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"audio unit base not found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"isight_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/firewire/isight.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isight_probe._entry_ptr = internal global ptr @isight_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iSight\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Apple iSight\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Apple iSight (GUID %08x%08x) at %s, S%d\00", [56 x i8] zeroinitializer }, align 32
@isight_create_pcm.ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @isight_open, ptr @isight_close, ptr null, ptr @isight_hw_params, ptr @isight_hw_free, ptr @isight_prepare, ptr @isight_trigger, ptr null, ptr @isight_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@isight_open.hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65811, i64 8, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 4194304, i32 1900, i32 1048576, i32 2, i32 -1, i32 0 }, [32 x i8] zeroinitializer }, align 32
@isight_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"queueing error: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isight_packet\00", [18 x i8] zeroinitializer }, align 32
@isight_packet._entry_ptr = internal global ptr @isight_packet._entry, section ".printk_index", align 4
@audio_packet = internal global { { i16, i8, i8, [0 x i32] }, [28 x i8] } { { i16, i8, i8, [0 x i32] } { i16 1916, i8 -128, i8 4, [0 x i32] zeroinitializer }, [28 x i8] zeroinitializer }, align 32
@isight_create_mixer.gain_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 0, ptr @isight_gain_info, ptr @isight_gain_get, ptr @isight_gain_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@isight_create_mixer.mute_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @isight_mute_get, ptr @isight_mute_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"isight_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 715, i32 25 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 718, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"isight_id_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 704, i32 40 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 627, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 632, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 640, i32 23 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 641, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 643, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 441, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"hardware\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 248, i32 39 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 200, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"audio_packet\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 82, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"gain_control\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 534, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 536, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"mute_control\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 543, i32 39 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [27 x i8] c"../sound/firewire/isight.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 545, i32 11 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_alsa_isight_exit, ptr @__initcall__kmod_snd_isight__253_737_alsa_isight_init6, ptr @alsa_isight_exit, ptr @isight_packet._entry, ptr @isight_packet._entry_ptr, ptr @isight_probe._entry, ptr @isight_probe._entry_ptr, ptr @isight_driver, ptr @.str, ptr @isight_id_table, ptr @isight_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @isight_create_pcm.ops, ptr @isight_open.hardware, ptr @.str.10, ptr @.str.11, ptr @audio_packet, ptr @isight_create_mixer.gain_control, ptr @.str.13, ptr @isight_create_mixer.mute_control, ptr @.str.14], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_create_pcm.ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_open.hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_packet to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_create_mixer.gain_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isight_create_mixer.mute_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_isight_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef nonnull @isight_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_isight_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef nonnull @isight_driver) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_probe(ptr noundef %unit, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %value.i78 = alloca i32, align 4
  %pcm.i = alloca ptr, align 4
  %i.i = alloca %struct.fw_csr_iterator, align 4
  %key.i = alloca i32, align 4
  %value.i = alloca i32, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !62
  %call1 = call i32 @snd_card_new(ptr noundef %unit, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 320, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -24
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %6, align 8
  %mutex = getelementptr inbounds %struct.isight, ptr %6, i32 0, i32 5
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @isight_probe.__key) #10
  %call.i = call ptr @get_device(ptr noundef %unit) #10
  %unit4 = getelementptr inbounds %struct.isight, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %unit4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %unit, ptr %unit4, align 4
  %device5 = getelementptr inbounds %struct.isight, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %device5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i.i, ptr %device5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i.i) #10
  %10 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %i.i, align 4, !annotation !62
  %11 = getelementptr inbounds %struct.fw_csr_iterator, ptr %i.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %11, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key.i) #10
  %13 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %key.i, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #10
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %value.i, align 4, !annotation !62
  %directory.i = getelementptr inbounds %struct.fw_unit, ptr %unit, i32 0, i32 1
  %15 = ptrtoint ptr %directory.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %directory.i, align 8
  call void @fw_csr_iterator_init(ptr noundef nonnull %i.i, ptr noundef %16) #10
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %call.i71 = call i32 @fw_csr_iterator_next(ptr noundef nonnull %i.i, ptr noundef nonnull %key.i, ptr noundef nonnull %value.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i, label %get_unit_base.exit.thread, label %while.body.i

get_unit_base.exit.thread:                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i.i) #10
  %audio_base85 = getelementptr inbounds %struct.isight, ptr %6, i32 0, i32 3
  %17 = ptrtoint ptr %audio_base85 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %audio_base85, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %unit, ptr noundef nonnull @.str.2) #13
  br label %error

while.body.i:                                     ; preds = %while.cond.i
  %18 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key.i, align 4
  %cmp.i = icmp eq i32 %19, 64
  br i1 %cmp.i, label %get_unit_base.exit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

get_unit_base.exit:                               ; preds = %while.body.i
  %20 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value.i, align 4
  %mul.i = shl i32 %21, 2
  %conv.i = sext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, 281474708275200
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i.i) #10
  %audio_base = getelementptr inbounds %struct.isight, ptr %6, i32 0, i32 3
  %22 = ptrtoint ptr %audio_base to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add.i, ptr %audio_base, align 8
  %resources = getelementptr inbounds %struct.isight, ptr %6, i32 0, i32 7
  %call14 = call i32 @fw_iso_resources_init(ptr noundef %resources, ptr noundef %unit) #10
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @isight_card_free, ptr %private_free, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %driver, ptr @.str.7, i32 7)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %shortname, ptr @.str.8, i32 13)
  %longname = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 4
  %config_rom = getelementptr i8, ptr %1, i32 1028
  %28 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config_rom, align 4
  %arrayidx = getelementptr i32, ptr %29, i32 3
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %arrayidx20 = getelementptr i32, ptr %29, i32 4
  %32 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx20, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 3
  %34 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i72 = icmp eq ptr %35, null
  br i1 %tobool.not.i72, label %if.end.i, label %get_unit_base.exit.dev_name.exit_crit_edge

get_unit_base.exit.dev_name.exit_crit_edge:       ; preds = %get_unit_base.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %get_unit_base.exit
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %unit, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %get_unit_base.exit.dev_name.exit_crit_edge
  %retval.0.i73 = phi ptr [ %37, %if.end.i ], [ %35, %get_unit_base.exit.dev_name.exit_crit_edge ]
  %max_speed = getelementptr i8, ptr %1, i32 -8
  %38 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_speed, align 8
  %shl = shl i32 100, %39
  %call23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.9, i32 noundef %31, i32 noundef %33, ptr noundef %retval.0.i73, i32 noundef %shl)
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %mixername = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 6
  %42 = call ptr @memcpy(ptr %mixername, ptr @.str.7, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #10
  %43 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !62
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %6, align 8
  %call.i74 = call i32 @snd_pcm_new(ptr noundef %45, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp.i75 = icmp slt i32 %call.i74, 0
  br i1 %cmp.i75, label %isight_create_pcm.exit.thread, label %if.end29

isight_create_pcm.exit.thread:                    ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  br label %error

if.end29:                                         ; preds = %dev_name.exit
  %46 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcm.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %6, ptr %private_data.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %47, i32 0, i32 7
  %49 = call ptr @memcpy(ptr %name.i, ptr @.str.7, i32 7)
  %substream.i = getelementptr %struct.snd_pcm, ptr %47, i32 0, i32 8, i32 1, i32 4
  %50 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %substream.i, align 8
  %pcm2.i = getelementptr inbounds %struct.isight, ptr %6, i32 0, i32 4
  %52 = ptrtoint ptr %pcm2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %pcm2.i, align 8
  %ops.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %51, i32 0, i32 10
  %53 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @isight_create_pcm.ops, ptr %ops.i, align 4
  %call4.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %47, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i78) #10
  %54 = ptrtoint ptr %value.i78 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %value.i78, align 4, !annotation !62
  %55 = ptrtoint ptr %unit4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %unit4, align 4
  %57 = ptrtoint ptr %audio_base to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %audio_base, align 8
  %add.i.i = add i64 %58, 528
  %call.i.i = call i32 @snd_fw_transaction(ptr noundef %56, i32 noundef 4, i64 noundef %add.i.i, ptr noundef nonnull %value.i78, i32 noundef 4, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i79 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i79, label %if.end29.isight_create_mixer.exit.thread_crit_edge, label %if.end.i80

if.end29.isight_create_mixer.exit.thread_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_create_mixer.exit.thread

if.end.i80:                                       ; preds = %if.end29
  %59 = ptrtoint ptr %value.i78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %value.i78, align 4
  %gain_min.i = getelementptr inbounds %struct.isight, ptr %6, i32 0, i32 16
  %61 = ptrtoint ptr %gain_min.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %gain_min.i, align 8
  %62 = ptrtoint ptr %unit4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %unit4, align 4
  %64 = ptrtoint ptr %audio_base to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %audio_base, align 8
  %add.i65.i = add i64 %65, 532
  %call.i66.i = call i32 @snd_fw_transaction(ptr noundef %63, i32 noundef 4, i64 noundef %add.i65.i, ptr noundef nonnull %value.i78, i32 noundef 4, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %cmp2.i = icmp slt i32 %call.i66.i, 0
  br i1 %cmp2.i, label %if.end.i80.isight_create_mixer.exit.thread_crit_edge, label %if.end4.i

if.end.i80.isight_create_mixer.exit.thread_crit_edge: ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_create_mixer.exit.thread

if.end4.i:                                        ; preds = %if.end.i80
  %66 = ptrtoint ptr %value.i78 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %value.i78, align 4
  %gain_max.i = getelementptr inbounds %struct.isight, ptr %6, i32 0, i32 17
  %68 = ptrtoint ptr %gain_max.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %gain_max.i, align 4
  %gain_tlv.i = getelementptr inbounds %struct.isight, ptr %6, i32 0, i32 18
  %69 = ptrtoint ptr %gain_tlv.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 4, ptr %gain_tlv.i, align 8
  %arrayidx6.i = getelementptr %struct.isight, ptr %6, i32 0, i32 18, i32 1
  %70 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 8, ptr %arrayidx6.i, align 4
  %71 = ptrtoint ptr %unit4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %unit4, align 4
  %73 = ptrtoint ptr %audio_base to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %audio_base, align 8
  %add.i69.i = add i64 %74, 536
  %call.i70.i = call i32 @snd_fw_transaction(ptr noundef %72, i32 noundef 4, i64 noundef %add.i69.i, ptr noundef nonnull %value.i78, i32 noundef 4, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %cmp8.i = icmp slt i32 %call.i70.i, 0
  br i1 %cmp8.i, label %if.end4.i.isight_create_mixer.exit.thread_crit_edge, label %if.end10.i

if.end4.i.isight_create_mixer.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_create_mixer.exit.thread

if.end10.i:                                       ; preds = %if.end4.i
  %75 = ptrtoint ptr %value.i78 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %value.i78, align 4
  %mul.i81 = mul i32 %76, 100
  %arrayidx12.i = getelementptr %struct.isight, ptr %6, i32 0, i32 18, i32 2
  %77 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul.i81, ptr %arrayidx12.i, align 8
  %78 = ptrtoint ptr %unit4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %unit4, align 4
  %80 = ptrtoint ptr %audio_base to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %audio_base, align 8
  %add.i73.i = add i64 %81, 540
  %call.i74.i = call i32 @snd_fw_transaction(ptr noundef %79, i32 noundef 4, i64 noundef %add.i73.i, ptr noundef nonnull %value.i78, i32 noundef 4, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %cmp14.i = icmp slt i32 %call.i74.i, 0
  br i1 %cmp14.i, label %if.end10.i.isight_create_mixer.exit.thread_crit_edge, label %if.end16.i

if.end10.i.isight_create_mixer.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_create_mixer.exit.thread

if.end16.i:                                       ; preds = %if.end10.i
  %82 = ptrtoint ptr %value.i78 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %value.i78, align 4
  %mul17.i = mul i32 %83, 100
  %arrayidx19.i = getelementptr %struct.isight, ptr %6, i32 0, i32 18, i32 3
  %84 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %mul17.i, ptr %arrayidx19.i, align 4
  %call20.i = call ptr @snd_ctl_new1(ptr noundef nonnull @isight_create_mixer.gain_control, ptr noundef %6) #10
  %tobool.not.i82 = icmp eq ptr %call20.i, null
  br i1 %tobool.not.i82, label %if.end16.i.if.end23.i_crit_edge, label %if.then21.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %tlv.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call20.i, i32 0, i32 6
  %85 = ptrtoint ptr %tlv.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %gain_tlv.i, ptr %tlv.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end16.i.if.end23.i_crit_edge
  %86 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %6, align 8
  %call24.i = call i32 @snd_ctl_add(ptr noundef %87, ptr noundef %call20.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end23.i.isight_create_mixer.exit.thread_crit_edge, label %isight_create_mixer.exit

if.end23.i.isight_create_mixer.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_create_mixer.exit.thread

isight_create_mixer.exit.thread:                  ; preds = %if.end23.i.isight_create_mixer.exit.thread_crit_edge, %if.end10.i.isight_create_mixer.exit.thread_crit_edge, %if.end4.i.isight_create_mixer.exit.thread_crit_edge, %if.end.i80.isight_create_mixer.exit.thread_crit_edge, %if.end29.isight_create_mixer.exit.thread_crit_edge
  %retval.0.i83.ph = phi i32 [ %call24.i, %if.end23.i.isight_create_mixer.exit.thread_crit_edge ], [ %call.i74.i, %if.end10.i.isight_create_mixer.exit.thread_crit_edge ], [ %call.i70.i, %if.end4.i.isight_create_mixer.exit.thread_crit_edge ], [ %call.i66.i, %if.end.i80.isight_create_mixer.exit.thread_crit_edge ], [ %call.i.i, %if.end29.isight_create_mixer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i78) #10
  br label %error

isight_create_mixer.exit:                         ; preds = %if.end23.i
  %88 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %6, align 8
  %call29.i = call ptr @snd_ctl_new1(ptr noundef nonnull @isight_create_mixer.mute_control, ptr noundef %6) #10
  %call30.i = call i32 @snd_ctl_add(ptr noundef %89, ptr noundef %call29.i) #10
  %90 = call i32 @llvm.smin.i32(i32 %call30.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i78) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31 = icmp slt i32 %call30.i, 0
  br i1 %cmp31, label %isight_create_mixer.exit.error_crit_edge, label %if.end33

isight_create_mixer.exit.error_crit_edge:         ; preds = %isight_create_mixer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end33:                                         ; preds = %isight_create_mixer.exit
  %91 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %card, align 4
  %call34 = call i32 @snd_card_register(ptr noundef %92) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.error_crit_edge, label %if.end37

if.end33.error_crit_edge:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %93 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %6, ptr %driver_data.i, align 4
  br label %cleanup

error:                                            ; preds = %if.end33.error_crit_edge, %isight_create_mixer.exit.error_crit_edge, %isight_create_mixer.exit.thread, %isight_create_pcm.exit.thread, %get_unit_base.exit.thread
  %err.0 = phi i32 [ %90, %isight_create_mixer.exit.error_crit_edge ], [ %call34, %if.end33.error_crit_edge ], [ -6, %get_unit_base.exit.thread ], [ %call.i74, %isight_create_pcm.exit.thread ], [ %retval.0.i83.ph, %isight_create_mixer.exit.thread ]
  %94 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %card, align 4
  %call39 = call i32 @snd_card_free(ptr noundef %95) #10
  call void @mutex_destroy(ptr noundef %mutex) #10
  %96 = ptrtoint ptr %unit4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %unit4, align 4
  call void @put_device(ptr noundef %97) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end37 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isight_bus_reset(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %resources = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @fw_iso_resources_update(ptr noundef %resources) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %pcm_active.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pcm_active.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %pcm_active.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.isight_pcm_abort.exit_crit_edge, label %if.then.i

if.then.isight_pcm_abort.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_pcm_abort.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pcm.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm.i, align 8
  %call.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef %5) #10
  br label %isight_pcm_abort.exit

isight_pcm_abort.exit:                            ; preds = %if.then.i, %if.then.isight_pcm_abort.exit_crit_edge
  %mutex = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #10
  %context.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context.i, align 8
  %tobool.not.i7 = icmp eq ptr %7, null
  br i1 %tobool.not.i7, label %isight_pcm_abort.exit.isight_stop_streaming.exit_crit_edge, label %if.end.i

isight_pcm_abort.exit.isight_stop_streaming.exit_crit_edge: ; preds = %isight_pcm_abort.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_stop_streaming.exit

if.end.i:                                         ; preds = %isight_pcm_abort.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i8 = tail call i32 @fw_iso_context_stop(ptr noundef nonnull %7) #10
  %8 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context.i, align 8
  tail call void @fw_iso_context_destroy(ptr noundef %9) #10
  %10 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %context.i, align 8
  tail call void @fw_iso_resources_free(ptr noundef %resources) #10
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %value.i, align 4
  %unit.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unit.i, align 4
  %audio_base.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %audio_base.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %audio_base.i, align 8
  %call4.i = call i32 @snd_fw_transaction(ptr noundef %13, i32 noundef 0, i64 noundef %15, ptr noundef nonnull %value.i, i32 noundef 4, i32 noundef 512) #10
  br label %isight_stop_streaming.exit

isight_stop_streaming.exit:                       ; preds = %if.end.i, %isight_pcm_abort.exit.isight_stop_streaming.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  br label %if.end

if.end:                                           ; preds = %isight_stop_streaming.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isight_remove(ptr nocapture noundef readonly %unit) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pcm_active.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pcm_active.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %pcm_active.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.isight_pcm_abort.exit_crit_edge, label %if.then.i

entry.isight_pcm_abort.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_pcm_abort.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pcm.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm.i, align 8
  %call.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef %5) #10
  br label %isight_pcm_abort.exit

isight_pcm_abort.exit:                            ; preds = %if.then.i, %entry.isight_pcm_abort.exit_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @snd_card_disconnect(ptr noundef %7) #10
  %mutex = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #10
  %context.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context.i, align 8
  %tobool.not.i14 = icmp eq ptr %9, null
  br i1 %tobool.not.i14, label %isight_pcm_abort.exit.isight_stop_streaming.exit_crit_edge, label %if.end.i

isight_pcm_abort.exit.isight_stop_streaming.exit_crit_edge: ; preds = %isight_pcm_abort.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_stop_streaming.exit

if.end.i:                                         ; preds = %isight_pcm_abort.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i15 = tail call i32 @fw_iso_context_stop(ptr noundef nonnull %9) #10
  %10 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context.i, align 8
  tail call void @fw_iso_context_destroy(ptr noundef %11) #10
  %12 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %context.i, align 8
  %resources.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 7
  tail call void @fw_iso_resources_free(ptr noundef %resources.i) #10
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %value.i, align 4
  %unit.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unit.i, align 4
  %audio_base.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %audio_base.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %audio_base.i, align 8
  %call4.i = call i32 @snd_fw_transaction(ptr noundef %15, i32 noundef 0, i64 noundef %17, ptr noundef nonnull %value.i, i32 noundef 4, i32 noundef 512) #10
  br label %isight_stop_streaming.exit

isight_stop_streaming.exit:                       ; preds = %if.end.i, %isight_pcm_abort.exit.isight_stop_streaming.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call4 = call i32 @snd_card_free(ptr noundef %19) #10
  call void @mutex_destroy(ptr noundef %mutex) #10
  %unit6 = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %unit6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unit6, align 4
  call void @put_device(ptr noundef %21) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isight_card_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %resources = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 7
  tail call void @fw_iso_resources_destroy(ptr noundef %resources) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_csr_iterator_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_iterator_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_open(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw, ptr @isight_open.hardware, i32 64)
  %buffer = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 6
  %unit = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unit, align 4
  %call = tail call i32 @iso_packets_buffer_init(ptr noundef %buffer, ptr noundef %6, i32 noundef 20, i32 noundef 1916, i32 noundef 2) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buffer = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 6
  %unit = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  tail call void @iso_packets_buffer_destroy(ptr noundef %buffer, ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %hw_params) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pcm_active = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pcm_active to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 1, ptr %pcm_active, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pcm_active = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pcm_active to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 0, ptr %pcm_active, align 4
  %mutex = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #10
  %context.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.isight_stop_streaming.exit_crit_edge, label %if.end.i

entry.isight_stop_streaming.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_stop_streaming.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @fw_iso_context_stop(ptr noundef nonnull %4) #10
  %5 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context.i, align 8
  tail call void @fw_iso_context_destroy(ptr noundef %6) #10
  %7 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %context.i, align 8
  %resources.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 7
  tail call void @fw_iso_resources_free(ptr noundef %resources.i) #10
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %value.i, align 4
  %unit.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unit.i, align 4
  %audio_base.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %audio_base.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %audio_base.i, align 8
  %call4.i = call i32 @snd_fw_transaction(ptr noundef %10, i32 noundef 0, i64 noundef %12, ptr noundef nonnull %value.i, i32 noundef 4, i32 noundef 512) #10
  br label %isight_stop_streaming.exit

isight_stop_streaming.exit:                       ; preds = %if.end.i, %entry.isight_stop_streaming.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #10
  call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %value.addr.i87.i = alloca i32, align 4
  %value.addr.i82.i = alloca i32, align 4
  %value.i75.i = alloca i32, align 4
  %value.addr.i.i = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buffer_pointer = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %buffer_pointer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buffer_pointer, align 8
  %period_counter = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %period_counter to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %period_counter, align 4
  %mutex = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %context.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end2.i_crit_edge, label %if.then.i

entry.if.end2.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2.i

if.then.i:                                        ; preds = %entry
  %packet_index.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %packet_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %packet_index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  br i1 %cmp.i, label %isight_stop_streaming.exit.i, label %if.then.i.isight_start_streaming.exit_crit_edge

if.then.i.isight_start_streaming.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_start_streaming.exit

isight_stop_streaming.exit.i:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #10
  %call.i.i = tail call i32 @fw_iso_context_stop(ptr noundef nonnull %5) #10
  %8 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context.i, align 8
  tail call void @fw_iso_context_destroy(ptr noundef %9) #10
  %10 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %context.i, align 8
  %resources.i.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 7
  tail call void @fw_iso_resources_free(ptr noundef %resources.i.i) #10
  %11 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %value.i.i, align 4
  %unit.i.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %unit.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unit.i.i, align 4
  %audio_base.i.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %audio_base.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %audio_base.i.i, align 8
  %call4.i.i = call i32 @snd_fw_transaction(ptr noundef %13, i32 noundef 0, i64 noundef %15, ptr noundef nonnull %value.i.i, i32 noundef 4, i32 noundef 512) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #10
  br label %if.end2.i

if.end2.i:                                        ; preds = %isight_stop_streaming.exit.i, %entry.if.end2.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i.i) #10
  %16 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -2147483648, ptr %value.addr.i.i, align 4
  %unit.i72.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %unit.i72.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unit.i72.i, align 4
  %audio_base.i73.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %audio_base.i73.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %audio_base.i73.i, align 8
  %add.i.i = add i64 %20, 1024
  %call.i74.i = call i32 @snd_fw_transaction(ptr noundef %18, i32 noundef 0, i64 noundef %add.i.i, ptr noundef nonnull %value.addr.i.i, i32 noundef 4, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %cmp3.i = icmp slt i32 %call.i74.i, 0
  br i1 %cmp3.i, label %if.end2.i.isight_start_streaming.exit_crit_edge, label %if.end5.i

if.end2.i.isight_start_streaming.exit_crit_edge:  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_start_streaming.exit

if.end5.i:                                        ; preds = %if.end2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i75.i) #10
  %resources.i76.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 7
  %device.i.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device.i.i, align 8
  %max_speed29.i.i = getelementptr inbounds %struct.fw_device, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %max_speed29.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_speed29.i.i, align 8
  %call30.i.i = call i32 @fw_iso_resources_allocate(ptr noundef %resources.i76.i, i32 noundef 1916, i32 noundef %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %cmp31.i.i = icmp slt i32 %call30.i.i, 0
  br i1 %cmp31.i.i, label %if.end5.i.isight_connect.exit.thread.i_crit_edge, label %if.end.lr.ph.i.i

if.end5.i.isight_connect.exit.thread.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_connect.exit.thread.i

if.end.lr.ph.i.i:                                 ; preds = %if.end5.i
  %generation.i.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 7, i32 6
  br label %if.end.i80.i

if.end.i80.i:                                     ; preds = %if.then7.i.i.if.end.i80.i_crit_edge, %if.end.lr.ph.i.i
  %call32.i.i = phi i32 [ %call30.i.i, %if.end.lr.ph.i.i ], [ %call.i81.i, %if.then7.i.i.if.end.i80.i_crit_edge ]
  %25 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device.i.i, align 8
  %max_speed2.i.i = getelementptr inbounds %struct.fw_device, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %max_speed2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_speed2.i.i, align 8
  %shl.i.i = shl i32 %28, 16
  %or.i.i = or i32 %shl.i.i, %call32.i.i
  %29 = ptrtoint ptr %value.i75.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i.i, ptr %value.i75.i, align 4
  %30 = ptrtoint ptr %unit.i72.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unit.i72.i, align 4
  %32 = ptrtoint ptr %audio_base.i73.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %audio_base.i73.i, align 8
  %add.i79.i = add i64 %33, 768
  %34 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %generation.i.i, align 4
  %or4.i.i = or i32 %35, 256
  %call5.i.i = call i32 @snd_fw_transaction(ptr noundef %31, i32 noundef 0, i64 noundef %add.i79.i, ptr noundef nonnull %value.i75.i, i32 noundef 4, i32 noundef %or4.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call5.i.i)
  %cmp6.i.i = icmp eq i32 %call5.i.i, -11
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.else.i.i

if.then7.i.i:                                     ; preds = %if.end.i80.i
  call void @fw_iso_resources_free(ptr noundef %resources.i76.i) #10
  %36 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device.i.i, align 8
  %max_speed.i.i = getelementptr inbounds %struct.fw_device, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_speed.i.i, align 8
  %call.i81.i = call i32 @fw_iso_resources_allocate(ptr noundef %resources.i76.i, i32 noundef 1916, i32 noundef %39) #10
  %cmp.i.i = icmp slt i32 %call.i81.i, 0
  br i1 %cmp.i.i, label %if.then7.i.i.isight_connect.exit.thread.i_crit_edge, label %if.then7.i.i.if.end.i80.i_crit_edge

if.then7.i.i.if.end.i80.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i80.i

if.then7.i.i.isight_connect.exit.thread.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_connect.exit.thread.i

if.else.i.i:                                      ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp9.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp9.i.i, label %err_resources.i.i, label %if.end9.i

err_resources.i.i:                                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @fw_iso_resources_free(ptr noundef %resources.i76.i) #10
  br label %isight_connect.exit.thread.i

isight_connect.exit.thread.i:                     ; preds = %err_resources.i.i, %if.then7.i.i.isight_connect.exit.thread.i_crit_edge, %if.end5.i.isight_connect.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call30.i.i, %if.end5.i.isight_connect.exit.thread.i_crit_edge ], [ %call5.i.i, %err_resources.i.i ], [ %call.i81.i, %if.then7.i.i.isight_connect.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i75.i) #10
  br label %isight_start_streaming.exit

if.end9.i:                                        ; preds = %if.else.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i75.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i82.i) #10
  %40 = ptrtoint ptr %value.addr.i82.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -2147483648, ptr %value.addr.i82.i, align 4
  %41 = ptrtoint ptr %unit.i72.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %unit.i72.i, align 4
  %43 = ptrtoint ptr %audio_base.i73.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %audio_base.i73.i, align 8
  %call.i85.i = call i32 @snd_fw_transaction(ptr noundef %42, i32 noundef 0, i64 noundef %44, ptr noundef nonnull %value.addr.i82.i, i32 noundef 4, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i82.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %cmp11.i = icmp slt i32 %call.i85.i, 0
  br i1 %cmp11.i, label %if.end9.i.err_resources.i_crit_edge, label %if.end13.i

if.end9.i.err_resources.i_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_resources.i

if.end13.i:                                       ; preds = %if.end9.i
  %45 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device.i.i, align 8
  %card.i = getelementptr inbounds %struct.fw_device, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card.i, align 4
  %channel.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 7, i32 3
  %49 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel.i, align 8
  %max_speed.i = getelementptr inbounds %struct.fw_device, ptr %46, i32 0, i32 4
  %51 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_speed.i, align 8
  %call15.i = call ptr @fw_iso_context_create(ptr noundef %48, i32 noundef 1, i32 noundef %50, i32 noundef %52, i32 noundef 4, ptr noundef nonnull @isight_packet, ptr noundef %1) #10
  %53 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call15.i, ptr %context.i, align 8
  %cmp.i86.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86.i, label %if.then19.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end13.i
  %buffer.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 6
  %packets.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 6, i32 1
  br label %for.body.i

if.then19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %call15.i to i32
  br label %err_resources.sink.split.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.094.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.094.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %context.i, align 8
  %57 = ptrtoint ptr %packets.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %packets.i, align 8
  %offset.i = getelementptr %struct.anon.82, ptr %58, i32 %i.094.i, i32 1
  %59 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset.i, align 4
  %call27.i = call i32 @fw_iso_context_queue(ptr noundef %56, ptr noundef nonnull @audio_packet, ptr noundef %buffer.i, i32 noundef %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %for.body.i.err_context.i_crit_edge, label %for.cond.i

for.body.i.err_context.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_context.i

for.end.i:                                        ; preds = %for.cond.i
  %first_packet.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 11
  %61 = ptrtoint ptr %first_packet.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %first_packet.i, align 2
  %packet_index31.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 12
  %62 = ptrtoint ptr %packet_index31.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %packet_index31.i, align 8
  %63 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %context.i, align 8
  %call33.i = call i32 @fw_iso_context_start(ptr noundef %64, i32 noundef -1, i32 noundef 0, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %for.end.i.err_context.i_crit_edge, label %for.end.i.isight_start_streaming.exit_crit_edge

for.end.i.isight_start_streaming.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_start_streaming.exit

for.end.i.err_context.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_context.i

err_context.i:                                    ; preds = %for.end.i.err_context.i_crit_edge, %for.body.i.err_context.i_crit_edge
  %err.0.i = phi i32 [ %call33.i, %for.end.i.err_context.i_crit_edge ], [ %call27.i, %for.body.i.err_context.i_crit_edge ]
  %65 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %context.i, align 8
  call void @fw_iso_context_destroy(ptr noundef %66) #10
  br label %err_resources.sink.split.i

err_resources.sink.split.i:                       ; preds = %err_context.i, %if.then19.i
  %err.1.ph.i = phi i32 [ %err.0.i, %err_context.i ], [ %54, %if.then19.i ]
  %67 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %context.i, align 8
  br label %err_resources.i

err_resources.i:                                  ; preds = %err_resources.sink.split.i, %if.end9.i.err_resources.i_crit_edge
  %err.1.i = phi i32 [ %call.i85.i, %if.end9.i.err_resources.i_crit_edge ], [ %err.1.ph.i, %err_resources.sink.split.i ]
  call void @fw_iso_resources_free(ptr noundef %resources.i76.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i87.i) #10
  %68 = ptrtoint ptr %value.addr.i87.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %value.addr.i87.i, align 4
  %69 = ptrtoint ptr %unit.i72.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %unit.i72.i, align 4
  %71 = ptrtoint ptr %audio_base.i73.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %audio_base.i73.i, align 8
  %call.i90.i = call i32 @snd_fw_transaction(ptr noundef %70, i32 noundef 0, i64 noundef %72, ptr noundef nonnull %value.addr.i87.i, i32 noundef 4, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i87.i) #10
  br label %isight_start_streaming.exit

isight_start_streaming.exit:                      ; preds = %err_resources.i, %for.end.i.isight_start_streaming.exit_crit_edge, %isight_connect.exit.thread.i, %if.end2.i.isight_start_streaming.exit_crit_edge, %if.then.i.isight_start_streaming.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i.isight_start_streaming.exit_crit_edge ], [ 0, %for.end.i.isight_start_streaming.exit_crit_edge ], [ %call.i74.i, %if.end2.i.isight_start_streaming.exit_crit_edge ], [ %err.1.i, %err_resources.i ], [ %retval.0.i.ph.i, %isight_connect.exit.thread.i ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 0, label %do.body12
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body12, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 0, %do.body12 ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  %pcm_running = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %pcm_running to i32
  call void @__asan_store1_noabort(i32 %3)
  store volatile i8 %.sink, ptr %pcm_running, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isight_pointer(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buffer_pointer = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %buffer_pointer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %buffer_pointer, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iso_packets_buffer_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iso_packets_buffer_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_context_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fw_iso_context_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isight_packet(ptr nocapture noundef readnone %context, i32 noundef %cycle, i32 noundef %header_length, ptr nocapture noundef readonly %header, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %packet_index = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %packet_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %packet_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 6
  %packets = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %packets, align 8
  %arrayidx = getelementptr %struct.anon.82, ptr %3, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %header, align 4
  %shr = lshr i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %7)
  %cmp3 = icmp ugt i32 %7, 1048575
  br i1 %cmp3, label %land.rhs, label %if.end.if.end31_crit_edge, !prof !64

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.rhs:                                         ; preds = %if.end
  %signature = getelementptr inbounds %struct.audio_payload, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %signature to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signature, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1936156788, i32 %9)
  %cmp4 = icmp eq i32 %9, 1936156788
  br i1 %cmp4, label %if.then6, label %land.rhs.if.end31_crit_edge, !prof !64

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then6:                                         ; preds = %land.rhs
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %sub = add nsw i32 %shr, -16
  %div84 = lshr i32 %sub, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div84)
  %cmp7.not = icmp ugt i32 %11, %div84
  br i1 %cmp7.not, label %if.then6.if.end31_crit_edge, label %if.then14, !prof !65

if.then6.if.end31_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then14:                                        ; preds = %if.then6
  %sample_total = getelementptr inbounds %struct.audio_payload, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %sample_total to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sample_total, align 4
  %total_samples = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 13
  %14 = ptrtoint ptr %total_samples to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_samples, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp15.not = icmp eq i32 %13, %15
  br i1 %cmp15.not, label %if.then14.if.end28_crit_edge, label %if.then22, !prof !64

if.then14.if.end28_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then22:                                        ; preds = %if.then14
  %first_packet = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 11
  %16 = ptrtoint ptr %first_packet to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %first_packet, align 2, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool23.not = icmp eq i8 %17, 0
  br i1 %tobool23.not, label %if.then24, label %if.then22.if.end25_crit_edge

if.then22.if.end25_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @isight_dropped_samples(ptr noundef %data, i32 noundef %13)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then22.if.end25_crit_edge
  %18 = ptrtoint ptr %first_packet to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %first_packet, align 2
  %19 = ptrtoint ptr %total_samples to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %13, ptr %total_samples, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end25, %if.then14.if.end28_crit_edge
  %samples = getelementptr inbounds %struct.audio_payload, ptr %5, i32 0, i32 4
  %pcm_running.i = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 10
  %20 = ptrtoint ptr %pcm_running.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %pcm_running.i, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end28.isight_samples.exit_crit_edge, label %if.end.i

if.end28.isight_samples.exit_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_samples.exit

if.end.i:                                         ; preds = %if.end28
  %pcm.i = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcm.i, align 8
  %runtime2.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %runtime2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime2.i, align 4
  %buffer_pointer.i = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 14
  %26 = ptrtoint ptr %buffer_pointer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_pointer.i, align 8
  %add.i = add i32 %27, %11
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 18
  %28 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %29)
  %cmp.not.i = icmp ugt i32 %add.i, %29
  br i1 %cmp.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 50
  %30 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_area.i, align 4
  %mul.i = shl i32 %27, 2
  %add.ptr.i = getelementptr i8, ptr %31, i32 %mul.i
  %mul5.i = shl i32 %11, 2
  %32 = call ptr @memcpy(ptr %add.ptr.i, ptr %samples, i32 %mul5.i)
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %29, %27
  %dma_area8.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 50
  %33 = ptrtoint ptr %dma_area8.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_area8.i, align 4
  %mul10.i = shl i32 %27, 2
  %add.ptr11.i = getelementptr i8, ptr %34, i32 %mul10.i
  %mul12.i = shl i32 %sub.i, 2
  %35 = call ptr @memcpy(ptr %add.ptr11.i, ptr %samples, i32 %mul12.i)
  %mul13.i = shl i32 %sub.i, 1
  %add.ptr14.i = getelementptr i16, ptr %samples, i32 %mul13.i
  %36 = load ptr, ptr %dma_area8.i, align 4
  %sub16.i = sub i32 %11, %sub.i
  %mul17.i = shl i32 %sub16.i, 2
  %37 = call ptr @memcpy(ptr %36, ptr %add.ptr14.i, i32 %mul17.i)
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then3.i
  %38 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcm.i, align 8
  %runtime1.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %runtime1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %runtime1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  %42 = ptrtoint ptr %buffer_pointer.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buffer_pointer.i, align 8
  %add.i.i = add i32 %43, %11
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 18
  %44 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buffer_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %45)
  %cmp.not.i.i = icmp ult i32 %add.i.i, %45
  %sub.i.i = select i1 %cmp.not.i.i, i32 0, i32 %45
  %spec.select.i.i = sub i32 %add.i.i, %sub.i.i
  %46 = ptrtoint ptr %buffer_pointer.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %spec.select.i.i, ptr %buffer_pointer.i, align 8
  %period_counter.i.i = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 15
  %47 = ptrtoint ptr %period_counter.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %period_counter.i.i, align 4
  %add16.i.i = add i32 %48, %11
  store i32 %add16.i.i, ptr %period_counter.i.i, align 4
  %period_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 16
  %49 = ptrtoint ptr %period_size.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %period_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add16.i.i, i32 %50)
  %cmp18.not.i.i = icmp ult i32 %add16.i.i, %50
  br i1 %cmp18.not.i.i, label %if.end18.i.isight_samples.exit_crit_edge, label %if.then19.i.i

if.end18.i.isight_samples.exit_crit_edge:         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %isight_samples.exit

if.then19.i.i:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub22.i.i = sub i32 %add16.i.i, %50
  %51 = ptrtoint ptr %period_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub22.i.i, ptr %period_counter.i.i, align 4
  %52 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcm.i, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %53) #10
  br label %isight_samples.exit

isight_samples.exit:                              ; preds = %if.then19.i.i, %if.end18.i.isight_samples.exit_crit_edge, %if.end28.isight_samples.exit_crit_edge
  %54 = ptrtoint ptr %total_samples to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %total_samples, align 4
  %add = add i32 %55, %11
  store i32 %add, ptr %total_samples, align 4
  br label %if.end31

if.end31:                                         ; preds = %isight_samples.exit, %if.then6.if.end31_crit_edge, %land.rhs.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %context32 = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 8
  %56 = ptrtoint ptr %context32 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %context32, align 8
  %58 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %packets, align 8
  %offset = getelementptr %struct.anon.82, ptr %59, i32 %1, i32 1
  %60 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset, align 4
  %call37 = tail call i32 @fw_iso_context_queue(ptr noundef %57, ptr noundef nonnull @audio_packet, ptr noundef %buffer, i32 noundef %61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end, label %if.end41

do.end:                                           ; preds = %if.end31
  %unit = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 1
  %62 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %unit, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.10, i32 noundef %call37) #13
  %pcm_active.i = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 9
  %64 = ptrtoint ptr %pcm_active.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load volatile i8, ptr %pcm_active.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i85 = icmp eq i8 %65, 0
  br i1 %tobool.not.i85, label %do.end.cleanup.sink.split_crit_edge, label %if.then.i

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %pcm.i86 = getelementptr inbounds %struct.isight, ptr %data, i32 0, i32 4
  %66 = ptrtoint ptr %pcm.i86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcm.i86, align 8
  %call.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef %67) #10
  br label %cleanup.sink.split

if.end41:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %context32 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %context32, align 8
  tail call void @fw_iso_context_queue_flush(ptr noundef %69) #10
  %inc = add nuw i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %1)
  %cmp43 = icmp ugt i32 %1, 18
  %spec.store.select = select i1 %cmp43, i32 0, i32 %inc
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end41, %if.then.i, %do.end.cleanup.sink.split_crit_edge
  %spec.store.select.sink = phi i32 [ %spec.store.select, %if.end41 ], [ -1, %do.end.cleanup.sink.split_crit_edge ], [ -1, %if.then.i ]
  %70 = ptrtoint ptr %packet_index to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.store.select.sink, ptr %packet_index, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_allocate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @isight_dropped_samples(ptr noundef %isight, i32 noundef %total) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_running = getelementptr inbounds %struct.isight, ptr %isight, i32 0, i32 10
  %0 = ptrtoint ptr %pcm_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %pcm_running, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcm = getelementptr inbounds %struct.isight, ptr %isight, i32 0, i32 4
  %2 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcm, align 8
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %total_samples = getelementptr inbounds %struct.isight, ptr %isight, i32 0, i32 13
  %6 = ptrtoint ptr %total_samples to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_samples, align 4
  %sub = sub i32 %total, %7
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp = icmp ult i32 %sub, %9
  br i1 %cmp, label %if.then3, label %if.else21

if.then3:                                         ; preds = %if.end
  %buffer_pointer = getelementptr inbounds %struct.isight, ptr %isight, i32 0, i32 14
  %10 = ptrtoint ptr %buffer_pointer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_pointer, align 8
  %add = add i32 %11, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp5.not = icmp ugt i32 %add, %9
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %12 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_area, align 4
  %mul = shl i32 %11, 2
  %add.ptr = getelementptr i8, ptr %13, i32 %mul
  br label %if.end20

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %sub11 = sub i32 %9, %11
  %dma_area12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %14 = ptrtoint ptr %dma_area12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_area12, align 4
  %mul14 = shl i32 %11, 2
  %add.ptr15 = getelementptr i8, ptr %15, i32 %mul14
  %mul16 = shl i32 %sub11, 2
  %16 = call ptr @memset(ptr %add.ptr15, i32 0, i32 %mul16)
  %17 = load ptr, ptr %dma_area12, align 4
  %sub18 = sub i32 %sub, %sub11
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then6
  %sub18.sink = phi i32 [ %sub18, %if.else ], [ %sub, %if.then6 ]
  %.sink = phi ptr [ %17, %if.else ], [ %add.ptr, %if.then6 ]
  %mul19 = shl i32 %sub18.sink, 2
  %18 = call ptr @memset(ptr %.sink, i32 0, i32 %mul19)
  %19 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcm, align 8
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  %23 = ptrtoint ptr %buffer_pointer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buffer_pointer, align 8
  %add.i = add i32 %24, %sub
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 18
  %25 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %26)
  %cmp.not.i = icmp ult i32 %add.i, %26
  %sub.i = select i1 %cmp.not.i, i32 0, i32 %26
  %spec.select.i = sub i32 %add.i, %sub.i
  %27 = ptrtoint ptr %buffer_pointer to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %spec.select.i, ptr %buffer_pointer, align 8
  %period_counter.i = getelementptr inbounds %struct.isight, ptr %isight, i32 0, i32 15
  %28 = ptrtoint ptr %period_counter.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %period_counter.i, align 4
  %add16.i = add i32 %29, %sub
  store i32 %add16.i, ptr %period_counter.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 16
  %30 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %period_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add16.i, i32 %31)
  %cmp18.not.i = icmp ult i32 %add16.i, %31
  br i1 %cmp18.not.i, label %if.end20.cleanup_crit_edge, label %if.then19.i

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19.i:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %sub22.i = sub i32 %add16.i, %31
  %32 = ptrtoint ptr %period_counter.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub22.i, ptr %period_counter.i, align 4
  %33 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcm, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %34) #10
  br label %cleanup

if.else21:                                        ; preds = %if.end
  %pcm_active.i = getelementptr inbounds %struct.isight, ptr %isight, i32 0, i32 9
  %35 = ptrtoint ptr %pcm_active.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %pcm_active.i, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %if.else21.cleanup_crit_edge, label %if.then.i

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.else21.cleanup_crit_edge, %if.then19.i, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_context_queue_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isight_gain_info(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %count, align 8
  %gain_min = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %gain_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gain_min, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %gain_max = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %gain_max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gain_max, align 4
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_gain_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  %gain = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gain) #10
  %2 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %gain, align 4, !annotation !62
  %unit.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit.i, align 4
  %audio_base.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %audio_base.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %audio_base.i, align 8
  %add.i = add i64 %6, 1280
  %call.i = call i32 @snd_fw_transaction(ptr noundef %4, i32 noundef 4, i64 noundef %add.i, ptr noundef nonnull %gain, i32 noundef 4, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gain, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %9 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gain) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_gain_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  %value.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  %gain_min = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %gain_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gain_min, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %gain_max = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %gain_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gain_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp4 = icmp sgt i32 %3, %7
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i)
  %8 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %value.addr.i, align 4
  %unit.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unit.i, align 4
  %audio_base.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %audio_base.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %audio_base.i, align 8
  %add.i = add i64 %12, 1280
  %call.i = call i32 @snd_fw_transaction(ptr noundef %10, i32 noundef 0, i64 noundef %add.i, ptr noundef nonnull %value.addr.i, i32 noundef 4, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_mute_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  %mute = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mute) #10
  %2 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mute, align 4, !annotation !62
  %unit.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit.i, align 4
  %audio_base.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %audio_base.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %audio_base.i, align 8
  %add.i = add i64 %6, 1284
  %call.i = call i32 @snd_fw_transaction(ptr noundef %4, i32 noundef 4, i64 noundef %add.i, ptr noundef nonnull %mute, i32 noundef 4, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %9 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %lnot.ext, ptr %value1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mute) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isight_mute_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  %value.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i)
  %4 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lnot.ext, ptr %value.addr.i, align 4
  %unit.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unit.i, align 4
  %audio_base.i = getelementptr inbounds %struct.isight, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %audio_base.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %audio_base.i, align 8
  %add.i = add i64 %8, 1284
  %call.i = call i32 @snd_fw_transaction(ptr noundef %6, i32 noundef 0, i64 noundef %add.i, ptr noundef nonnull %value.addr.i, i32 noundef 4, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i)
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_description240, !1, !"__UNIQUE_ID_description240", i1 false, i1 false}
!1 = !{!"../sound/firewire/isight.c", i32 78, i32 1}
!2 = !{ptr @__UNIQUE_ID_author241, !3, !"__UNIQUE_ID_author241", i1 false, i1 false}
!3 = !{!"../sound/firewire/isight.c", i32 79, i32 1}
!4 = !{ptr @__UNIQUE_ID_file242, !5, !"__UNIQUE_ID_file242", i1 false, i1 false}
!5 = !{!"../sound/firewire/isight.c", i32 80, i32 1}
!6 = !{ptr @__UNIQUE_ID_license243, !5, !"__UNIQUE_ID_license243", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_snd_isight__253_737_alsa_isight_init6, !8, !"__initcall__kmod_snd_isight__253_737_alsa_isight_init6", i1 false, i1 false}
!8 = !{!"../sound/firewire/isight.c", i32 737, i32 1}
!9 = !{ptr @__exitcall_alsa_isight_exit, !10, !"__exitcall_alsa_isight_exit", i1 false, i1 false}
!10 = !{!"../sound/firewire/isight.c", i32 738, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/firewire/isight.c", i32 718, i32 11}
!13 = !{ptr @isight_driver, !14, !"isight_driver", i1 false, i1 false}
!14 = !{!"../sound/firewire/isight.c", i32 715, i32 25}
!15 = !{ptr @isight_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../sound/firewire/isight.c", i32 627, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/firewire/isight.c", i32 632, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @isight_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @isight_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/firewire/isight.c", i32 640, i32 23}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/firewire/isight.c", i32 641, i32 26}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/firewire/isight.c", i32 643, i32 4}
!32 = !{ptr @isight_create_pcm.ops, !33, !"ops", i1 false, i1 false}
!33 = !{!"../sound/firewire/isight.c", i32 441, i32 34}
!34 = !{ptr @isight_open.hardware, !35, !"hardware", i1 false, i1 false}
!35 = !{!"../sound/firewire/isight.c", i32 248, i32 39}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/firewire/isight.c", i32 200, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @isight_packet._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @isight_packet._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @audio_packet, !42, !"audio_packet", i1 false, i1 false}
!42 = !{!"../sound/firewire/isight.c", i32 82, i32 29}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/firewire/isight.c", i32 536, i32 11}
!45 = !{ptr @isight_create_mixer.gain_control, !46, !"gain_control", i1 false, i1 false}
!46 = !{!"../sound/firewire/isight.c", i32 534, i32 39}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/firewire/isight.c", i32 545, i32 11}
!49 = !{ptr @isight_create_mixer.mute_control, !50, !"mute_control", i1 false, i1 false}
!50 = !{!"../sound/firewire/isight.c", i32 543, i32 39}
!51 = !{ptr @isight_id_table, !52, !"isight_id_table", i1 false, i1 false}
!52 = !{!"../sound/firewire/isight.c", i32 704, i32 40}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{i8 0, i8 2}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2154378739}
