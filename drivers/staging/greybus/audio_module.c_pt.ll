; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/audio_module.c_pt.bc'
source_filename = "../drivers/staging/greybus/audio_module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.greybus_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.greybus_bundle_id = type { i16, i32, i32, i8, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gb_audio_manager_module_descriptor = type { [64 x i8], i32, i32, i32, i32, i32 }
%struct.gb_bundle = type { %struct.device, ptr, i8, i8, i8, i8, i32, ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.gbaudio_module_info = type { ptr, i32, i32, i32, i32, i32, [32 x i8], [32 x i8], %struct.list_head, i32, [32 x i8], i32, i32, [32 x i8], [32 x i8], i32, i32, i32, i32, %struct.gbaudio_jack, %struct.gbaudio_jack, ptr, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.gbaudio_jack = type { %struct.snd_soc_jack, %struct.list_head }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gbaudio_data_connection = type { i32, i16, ptr, %struct.list_head, [2 x i32] }
%struct.gb_interface = type { %struct.device, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_operation_msg_hdr = type { i16, i16, i8, i8, [2 x i8] }
%struct.gb_audio_streaming_event_request = type <{ i16, i8 }>
%struct.gb_audio_jack_event_request = type { i8, i8, i8 }
%struct.gb_audio_button_event_request = type { i8, i8, i8 }

@__initcall__kmod_gb_audio_module__241_474_gb_audio_driver_init6 = internal global ptr @gb_audio_driver_init, section ".initcall6.init", align 4
@gb_audio_driver = internal global { %struct.greybus_driver, [36 x i8] } { %struct.greybus_driver { ptr @.str.1, ptr @gb_audio_probe, ptr @gb_audio_disconnect, ptr @gb_audio_id_table, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gb_audio_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gb_audio_driver_exit = internal global ptr @gb_audio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [56 x i8] c"gb_audio_module.description=Greybus Audio module driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [68 x i8] c"gb_audio_module.author=Vaibhav Agarwal <vaibhav.agarwal@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [61 x i8] c"gb_audio_module.file=drivers/staging/greybus/gb-audio-module\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [31 x i8] c"gb_audio_module.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias246 = internal constant [46 x i8] c"gb_audio_module.alias=platform:gbaudio-module\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gb_audio_module\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gb-audio\00", [23 x i8] zeroinitializer }, align 32
@gb_audio_id_table = internal constant { [2 x %struct.greybus_bundle_id], [56 x i8] } { [2 x %struct.greybus_bundle_id] [%struct.greybus_bundle_id { i16 4, i32 0, i32 0, i8 18, i32 0 }, %struct.greybus_bundle_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@gb_audio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gb_audio_suspend, ptr @gb_audio_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%s\00", [26 x i8] zeroinitializer }, align 32
@gb_audio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 286, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported protocol: 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gb_audio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/greybus/audio_module.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_audio_probe._entry_ptr = internal global ptr @gb_audio_probe._entry, section ".printk_index", align 4
@gb_audio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 295, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Missing management connection\0A\00", [33 x i8] zeroinitializer }, align 32
@gb_audio_probe._entry_ptr.10 = internal global ptr @gb_audio_probe._entry.8, section ".printk_index", align 4
@gb_audio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 302, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d: Error while enabling mgmt connection\0A\00", [54 x i8] zeroinitializer }, align 32
@gb_audio_probe._entry_ptr.13 = internal global ptr @gb_audio_probe._entry.11, section ".printk_index", align 4
@gb_audio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 313, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d:Error while fetching topology\0A\00", [62 x i8] zeroinitializer }, align 32
@gb_audio_probe._entry_ptr.16 = internal global ptr @gb_audio_probe._entry.14, section ".printk_index", align 4
@gb_audio_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 321, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%d:Error while parsing topology data\0A\00", [58 x i8] zeroinitializer }, align 32
@gb_audio_probe._entry_ptr.19 = internal global ptr @gb_audio_probe._entry.17, section ".printk_index", align 4
@gb_audio_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d:Error while enabling %d:data connection\0A\00", [52 x i8] zeroinitializer }, align 32
@gb_audio_probe._entry_ptr.22 = internal global ptr @gb_audio_probe._entry.20, section ".printk_index", align 4
@gb_audio_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.23, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Inform set_event:%d to above layer\0A\00", [60 x i8] zeroinitializer }, align 32
@gb_audio_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.24, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Add GB Audio device:%s\0A\00", [40 x i8] zeroinitializer }, align 32
@gb_audio_add_mgmt_connection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 186, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Can't have multiple Management connections\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gb_audio_add_mgmt_connection\00", [35 x i8] zeroinitializer }, align 32
@gb_audio_add_mgmt_connection._entry_ptr = internal global ptr @gb_audio_add_mgmt_connection._entry, section ".printk_index", align 4
@gbaudio_codec_request_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.gbaudio_codec_request_handler = private unnamed_addr constant [30 x i8] c"gbaudio_codec_request_handler\00", align 1
@gbaudio_codec_request_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.gbaudio_codec_request_handler, ptr @.str.5, i32 170, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid Audio Event received\0A\00", [34 x i8] zeroinitializer }, align 32
@gbaudio_codec_request_handler._entry_ptr = internal global ptr @gbaudio_codec_request_handler._entry, section ".printk_index", align 4
@gbaudio_request_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 136, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Audio Event received: cport: %u, event: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gbaudio_request_stream\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gbaudio_request_stream._entry_ptr = internal global ptr @gbaudio_request_stream._entry, section ".printk_index", align 4
@gbaudio_request_jack._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.gbaudio_request_jack = private unnamed_addr constant [21 x i8] c"gbaudio_request_jack\00", align 1
@gbaudio_request_jack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.gbaudio_request_jack, ptr @.str.5, i32 30, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid jack event received:type: %u, event: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@gbaudio_request_jack._entry_ptr = internal global ptr @gbaudio_request_jack._entry, section ".printk_index", align 4
@gbaudio_request_jack._rs.33 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_request_jack._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.gbaudio_request_jack, ptr @.str.5, i32 36, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Jack Event received: type: %u, event: %u\0A\00", [54 x i8] zeroinitializer }, align 32
@gbaudio_request_jack._entry_ptr.36 = internal global ptr @gbaudio_request_jack._entry.34, section ".printk_index", align 4
@gbaudio_request_jack._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_request_jack._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.gbaudio_request_jack, ptr @.str.5, i32 54, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gbaudio_request_jack._entry_ptr.39 = internal global ptr @gbaudio_request_jack._entry.38, section ".printk_index", align 4
@gbaudio_request_jack._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_request_jack._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @__func__.gbaudio_request_jack, ptr @.str.5, i32 61, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Modifying jack from %d to %d\0A\00", [34 x i8] zeroinitializer }, align 32
@gbaudio_request_jack._entry_ptr.43 = internal global ptr @gbaudio_request_jack._entry.41, section ".printk_index", align 4
@gbaudio_request_button._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.gbaudio_request_button = private unnamed_addr constant [23 x i8] c"gbaudio_request_button\00", align 1
@gbaudio_request_button._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.gbaudio_request_button, ptr @.str.5, i32 78, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid button event received:type: %u, event: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@gbaudio_request_button._entry_ptr = internal global ptr @gbaudio_request_button._entry, section ".printk_index", align 4
@gbaudio_request_button._rs.45 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_request_button._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @__func__.gbaudio_request_button, ptr @.str.5, i32 84, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Button Event received: id: %u, event: %u\0A\00", [54 x i8] zeroinitializer }, align 32
@gbaudio_request_button._entry_ptr.48 = internal global ptr @gbaudio_request_button._entry.46, section ".printk_index", align 4
@gbaudio_request_button._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_request_button._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @__func__.gbaudio_request_button, ptr @.str.5, i32 89, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Jack not present. Bogus event!!\0A\00", [63 x i8] zeroinitializer }, align 32
@gbaudio_request_button._entry_ptr.52 = internal global ptr @gbaudio_request_button._entry.50, section ".printk_index", align 4
@gbaudio_request_button._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_request_button._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @__func__.gbaudio_request_button, ptr @.str.5, i32 116, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid button request received\0A\00", [63 x i8] zeroinitializer }, align 32
@gbaudio_request_button._entry_ptr.56 = internal global ptr @gbaudio_request_button._entry.54, section ".printk_index", align 4
@gb_pm_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.59, i32 54, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_pm_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/greybus/bundle.h\00", [33 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry_ptr = internal global ptr @gb_pm_runtime_get_sync._entry, section ".printk_index", align 4
@gb_audio_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 445, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d:Error while enabling mgmt connection\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gb_audio_resume\00", [16 x i8] zeroinitializer }, align 32
@gb_audio_resume._entry_ptr = internal global ptr @gb_audio_resume._entry, section ".printk_index", align 4
@gb_audio_resume._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.61, ptr @.str.5, i32 454, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gb_audio_resume._entry_ptr.63 = internal global ptr @gb_audio_resume._entry.62, section ".printk_index", align 4
@switch.table.gbaudio_codec_request_handler = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16384, i32 8192, i32 4096, i32 2048], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 18, i64 19]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 8, i64 18, i64 19, i64 20]
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"gb_audio_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 467, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 474, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 468, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"gb_audio_id_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 415, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"gb_audio_pm_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 463, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 263, i32 51 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 285, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 295, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 302, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 313, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 320, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 330, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 343, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 353, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 185, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 169, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 135, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 28, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 34, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 52, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 59, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 76, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 82, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 88, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 115, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [34 x i8] c"../include/linux/greybus/bundle.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 53, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 445, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.261 = private constant [42 x i8] c"../drivers/staging/greybus/audio_module.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 452, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant [43 x i8] c"switch.table.gbaudio_codec_request_handler\00", align 1
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_gb_audio_driver_exit, ptr @__initcall__kmod_gb_audio_module__241_474_gb_audio_driver_init6, ptr @gb_audio_add_mgmt_connection._entry, ptr @gb_audio_add_mgmt_connection._entry_ptr, ptr @gb_audio_driver_exit, ptr @gb_audio_probe._entry, ptr @gb_audio_probe._entry.11, ptr @gb_audio_probe._entry.14, ptr @gb_audio_probe._entry.17, ptr @gb_audio_probe._entry.20, ptr @gb_audio_probe._entry.8, ptr @gb_audio_probe._entry_ptr, ptr @gb_audio_probe._entry_ptr.10, ptr @gb_audio_probe._entry_ptr.13, ptr @gb_audio_probe._entry_ptr.16, ptr @gb_audio_probe._entry_ptr.19, ptr @gb_audio_probe._entry_ptr.22, ptr @gb_audio_resume._entry, ptr @gb_audio_resume._entry.62, ptr @gb_audio_resume._entry_ptr, ptr @gb_audio_resume._entry_ptr.63, ptr @gb_pm_runtime_get_sync._entry, ptr @gb_pm_runtime_get_sync._entry_ptr, ptr @gbaudio_codec_request_handler._entry, ptr @gbaudio_codec_request_handler._entry_ptr, ptr @gbaudio_request_button._entry, ptr @gbaudio_request_button._entry.46, ptr @gbaudio_request_button._entry.50, ptr @gbaudio_request_button._entry.54, ptr @gbaudio_request_button._entry_ptr, ptr @gbaudio_request_button._entry_ptr.48, ptr @gbaudio_request_button._entry_ptr.52, ptr @gbaudio_request_button._entry_ptr.56, ptr @gbaudio_request_jack._entry, ptr @gbaudio_request_jack._entry.34, ptr @gbaudio_request_jack._entry.38, ptr @gbaudio_request_jack._entry.41, ptr @gbaudio_request_jack._entry_ptr, ptr @gbaudio_request_jack._entry_ptr.36, ptr @gbaudio_request_jack._entry_ptr.39, ptr @gbaudio_request_jack._entry_ptr.43, ptr @gbaudio_request_stream._entry, ptr @gbaudio_request_stream._entry_ptr, ptr @gb_audio_driver, ptr @.str, ptr @.str.1, ptr @gb_audio_id_table, ptr @gb_audio_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @gbaudio_codec_request_handler._rs, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @gbaudio_request_jack._rs, ptr @.str.32, ptr @gbaudio_request_jack._rs.33, ptr @.str.35, ptr @gbaudio_request_jack._rs.37, ptr @gbaudio_request_jack._rs.40, ptr @.str.42, ptr @gbaudio_request_button._rs, ptr @.str.44, ptr @gbaudio_request_button._rs.45, ptr @.str.47, ptr @gbaudio_request_button._rs.49, ptr @.str.51, ptr @gbaudio_request_button._rs.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @switch.table.gbaudio_codec_request_handler], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_id_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_add_mgmt_connection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_codec_request_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_codec_request_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_jack._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_jack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_jack._rs.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_jack._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_jack._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_jack._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_jack._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_jack._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_button._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_button._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_button._rs.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_button._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_button._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_button._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_button._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_request_button._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pm_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_audio_resume._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gbaudio_codec_request_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_audio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @greybus_register_driver(ptr noundef nonnull @gb_audio_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gb_audio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @greybus_deregister_driver(ptr noundef nonnull @gb_audio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @greybus_deregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @greybus_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_audio_probe(ptr noundef %bundle, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %desc = alloca %struct.gb_audio_manager_module_descriptor, align 4
  %topology = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %desc) #8
  %0 = call ptr @memset(ptr %desc, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %topology) #8
  %1 = ptrtoint ptr %topology to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %topology, align 4, !annotation !139
  %num_cports = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 6
  %2 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %bundle, i32 noundef 776, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cports, align 8
  %sub = add i32 %5, -1
  %num_data_connections = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 22
  %6 = ptrtoint ptr %num_data_connections to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %num_data_connections, align 4
  %data_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 23
  %7 = ptrtoint ptr %data_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %data_list, ptr %data_list, align 4
  %prev.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 23, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data_list, ptr %prev.i, align 4
  %widget_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 36
  %9 = ptrtoint ptr %widget_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %widget_list, ptr %widget_list, align 4
  %prev.i283 = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 36, i32 1
  %10 = ptrtoint ptr %prev.i283 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %widget_list, ptr %prev.i283, align 4
  %ctl_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 37
  %11 = ptrtoint ptr %ctl_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %ctl_list, ptr %ctl_list, align 4
  %prev.i284 = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 37, i32 1
  %12 = ptrtoint ptr %prev.i284 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ctl_list, ptr %prev.i284, align 4
  %widget_ctl_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 38
  %13 = ptrtoint ptr %widget_ctl_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %widget_ctl_list, ptr %widget_ctl_list, align 4
  %prev.i285 = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 38, i32 1
  %14 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %widget_ctl_list, ptr %prev.i285, align 4
  %jack_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 39
  %15 = ptrtoint ptr %jack_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %jack_list, ptr %jack_list, align 4
  %prev.i286 = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 39, i32 1
  %16 = ptrtoint ptr %prev.i286 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %jack_list, ptr %prev.i286, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bundle, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 10
  %driver = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 6
  %18 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.dev_name.exit_crit_edge

if.end3.dev_name.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bundle, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end3.dev_name.exit_crit_edge
  %retval.0.i287 = phi ptr [ %25, %if.end.i ], [ %23, %if.end3.dev_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %21, ptr noundef %retval.0.i287)
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_cports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp10319.not = icmp eq i32 %28, 0
  br i1 %cmp10319.not, label %dev_name.exit.for.end_crit_edge, label %for.body.lr.ph

dev_name.exit.for.end_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %dev_name.exit
  %cport_desc11 = getelementptr inbounds %struct.gb_bundle, ptr %bundle, i32 0, i32 7
  %mgmt_connection.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0320 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %29 = ptrtoint ptr %cport_desc11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cport_desc11, align 4
  %arrayidx = getelementptr %struct.greybus_descriptor_cport, ptr %30, i32 %i.0320
  %protocol_id = getelementptr %struct.greybus_descriptor_cport, ptr %30, i32 %i.0320, i32 2
  %31 = ptrtoint ptr %protocol_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %protocol_id, align 1
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i8 %32, label %do.end [
    i8 18, label %sw.bb
    i8 19, label %sw.bb16
  ]

sw.bb:                                            ; preds = %for.body
  %34 = ptrtoint ptr %mgmt_connection.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mgmt_connection.i, align 4
  %tobool.not.i288 = icmp eq ptr %35, null
  br i1 %tobool.not.i288, label %if.end.i290, label %gb_audio_add_mgmt_connection.exit.thread303

gb_audio_add_mgmt_connection.exit.thread303:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.25) #11
  br label %destroy_connections

if.end.i290:                                      ; preds = %sw.bb
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %arrayidx, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #8
  %call.i289 = tail call ptr @gb_connection_create(ptr noundef %bundle, i16 noundef zeroext %38, ptr noundef nonnull @gbaudio_codec_request_handler) #8
  %cmp.i.i = icmp ugt ptr %call.i289, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %gb_audio_add_mgmt_connection.exit, label %gb_audio_add_mgmt_connection.exit.thread

gb_audio_add_mgmt_connection.exit.thread:         ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %40 = ptrtoint ptr %mgmt_connection.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i289, ptr %mgmt_connection.i, align 4
  br label %for.inc

gb_audio_add_mgmt_connection.exit:                ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %call.i289 to i32
  br label %destroy_connections

sw.bb16:                                          ; preds = %for.body
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef 28, i32 noundef 3520) #8
  %tobool.not.i292 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i292, label %sw.bb16.destroy_connections_crit_edge, label %if.end.i294

sw.bb16.destroy_connections_crit_edge:            ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %destroy_connections

if.end.i294:                                      ; preds = %sw.bb16
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %arrayidx, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #8
  %call1.i = tail call ptr @gb_connection_create_offloaded(ptr noundef %bundle, i16 noundef zeroext %46, i32 noundef 1) #8
  %cmp.i.i293 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i293, label %gb_audio_add_data_connection.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i294
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %48 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %call.i.i, align 4
  %intf_cport_id.i = getelementptr inbounds %struct.gb_connection, ptr %call1.i, i32 0, i32 5
  %49 = ptrtoint ptr %intf_cport_id.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %intf_cport_id.i, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #8
  %data_cport.i = getelementptr inbounds %struct.gbaudio_data_connection, ptr %call.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %data_cport.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %data_cport.i, align 4
  %connection8.i = getelementptr inbounds %struct.gbaudio_data_connection, ptr %call.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %connection8.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call1.i, ptr %connection8.i, align 4
  %list.i = getelementptr inbounds %struct.gbaudio_data_connection, ptr %call.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %data_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %data_list, ptr noundef %55) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.for.inc_crit_edge

if.end6.i.for.inc_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.gbaudio_data_connection, ptr %call.i.i, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %data_list, ptr %prev3.i.i.i, align 4
  %59 = ptrtoint ptr %data_list to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %list.i, ptr %data_list, align 4
  br label %for.inc

gb_audio_add_data_connection.exit:                ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  tail call void @devm_kfree(ptr noundef %61, ptr noundef nonnull %call.i.i) #8
  %62 = ptrtoint ptr %call1.i to i32
  br label %destroy_connections

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.3, i32 noundef %conv) #11
  br label %destroy_connections

for.inc:                                          ; preds = %if.end.i.i.i, %if.end6.i.for.inc_crit_edge, %gb_audio_add_mgmt_connection.exit.thread
  %inc = add nuw i32 %i.0320, 1
  %63 = ptrtoint ptr %num_cports to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_cports, align 8
  %cmp10 = icmp ult i32 %inc, %64
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dev_name.exit.for.end_crit_edge
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 21
  %65 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mgmt_connection, align 4
  %tobool23.not = icmp eq ptr %66, null
  br i1 %tobool23.not, label %if.then24, label %if.end28

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.9) #11
  br label %destroy_connections

if.end28:                                         ; preds = %for.end
  %call30 = tail call i32 @gb_connection_enable(ptr noundef nonnull %66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.12, i32 noundef %call30) #11
  br label %destroy_connections

if.end36:                                         ; preds = %if.end28
  %67 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mgmt_connection, align 4
  %intf = getelementptr inbounds %struct.gb_connection, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %intf, align 4
  %interface_id = getelementptr inbounds %struct.gb_interface, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %interface_id to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %interface_id, align 4
  %conv38 = zext i8 %72 to i32
  %dev_id = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 1
  %73 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv38, ptr %dev_id, align 4
  %call40 = call i32 @gb_audio_gb_get_topology(ptr noundef %68, ptr noundef nonnull %topology) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.15, i32 noundef %call40) #11
  br label %disable_connection

if.end46:                                         ; preds = %if.end36
  %74 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %topology, align 4
  %call47 = call i32 @gbaudio_tplg_parse_data(ptr noundef nonnull %call.i, ptr noundef %75) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end53, label %do.end52

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.18, i32 noundef %call47) #11
  br label %free_topology

if.end53:                                         ; preds = %if.end46
  %76 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %topology, align 4
  %topology54 = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 40
  %78 = ptrtoint ptr %topology54 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %topology54, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.body60.for.cond56_crit_edge, %if.end53
  %.pn276.in = phi ptr [ %data_list, %if.end53 ], [ %.pn276, %for.body60.for.cond56_crit_edge ]
  %79 = ptrtoint ptr %.pn276.in to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn276 = load ptr, ptr %.pn276.in, align 4
  %cmp58.not = icmp eq ptr %.pn276, %data_list
  br i1 %cmp58.not, label %for.end75, label %for.body60

for.body60:                                       ; preds = %for.cond56
  %connection = getelementptr i8, ptr %.pn276, i32 -4
  %80 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %connection, align 4
  %call61 = call i32 @gb_connection_enable(ptr noundef %81) #8
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.body60.for.cond56_crit_edge, label %do.end66

for.body60.for.cond56_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond56

do.end66:                                         ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #10
  %data_cport = getelementptr i8, ptr %.pn276, i32 -8
  %82 = ptrtoint ptr %data_cport to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %data_cport, align 4
  %84 = call i16 @llvm.bswap.i16(i16 %83)
  %conv67 = zext i16 %84 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.21, i32 noundef %call61, i32 noundef %conv67) #11
  br label %disable_data_connection

for.end75:                                        ; preds = %for.cond56
  %call76 = call i32 @gbaudio_register_module(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %do.body80, label %for.end75.disable_data_connection_crit_edge

for.end75.disable_data_connection_crit_edge:      ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_data_connection

do.body80:                                        ; preds = %for.end75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_audio_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_audio_probe, %if.then87)) #8
          to label %do.end90 [label %if.then87], !srcloc !140

if.then87:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_audio_probe.__UNIQUE_ID_ddebug239, ptr noundef %bundle, ptr noundef nonnull @.str.23, i32 noundef 1) #8
  br label %do.end90

do.end90:                                         ; preds = %if.then87, %do.body80
  %call95 = call i32 @strscpy(ptr noundef nonnull %desc, ptr noundef %name, i32 noundef 64) #8
  %vid = getelementptr inbounds %struct.gb_audio_manager_module_descriptor, ptr %desc, i32 0, i32 1
  %85 = ptrtoint ptr %vid to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %vid, align 4
  %pid = getelementptr inbounds %struct.gb_audio_manager_module_descriptor, ptr %desc, i32 0, i32 2
  %86 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 3, ptr %pid, align 4
  %87 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dev_id, align 4
  %intf_id = getelementptr inbounds %struct.gb_audio_manager_module_descriptor, ptr %desc, i32 0, i32 3
  %89 = ptrtoint ptr %intf_id to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %intf_id, align 4
  %op_devices = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 12
  %90 = ptrtoint ptr %op_devices to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %op_devices, align 4
  %op_devices97 = getelementptr inbounds %struct.gb_audio_manager_module_descriptor, ptr %desc, i32 0, i32 5
  %92 = ptrtoint ptr %op_devices97 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %op_devices97, align 4
  %ip_devices = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 11
  %93 = ptrtoint ptr %ip_devices to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ip_devices, align 4
  %ip_devices98 = getelementptr inbounds %struct.gb_audio_manager_module_descriptor, ptr %desc, i32 0, i32 4
  %95 = ptrtoint ptr %ip_devices98 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %ip_devices98, align 4
  %call99 = call i32 @gb_audio_manager_add(ptr noundef nonnull %desc) #8
  %manager_id = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 9
  %96 = ptrtoint ptr %manager_id to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call99, ptr %manager_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gb_audio_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gb_audio_probe, %if.then112)) #8
          to label %do.end117 [label %if.then112], !srcloc !140

if.then112:                                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gb_audio_probe.__UNIQUE_ID_ddebug240, ptr noundef %bundle, ptr noundef nonnull @.str.24, ptr noundef %name) #8
  br label %do.end117

do.end117:                                        ; preds = %if.then112, %do.end90
  %call.i.i297 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 22
  %97 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store volatile i64 %call.i.i297, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %bundle, i32 noundef 13) #8
  br label %cleanup

disable_data_connection:                          ; preds = %for.end75.disable_data_connection_crit_edge, %do.end66
  %ret.0 = phi i32 [ %call61, %do.end66 ], [ %call76, %for.end75.disable_data_connection_crit_edge ]
  %98 = ptrtoint ptr %data_list to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data_list, align 4
  %cmp132.not321 = icmp eq ptr %99, %data_list
  br i1 %cmp132.not321, label %disable_data_connection.for.end144_crit_edge, label %disable_data_connection.for.body136_crit_edge

disable_data_connection.for.body136_crit_edge:    ; preds = %disable_data_connection
  br label %for.body136

disable_data_connection.for.end144_crit_edge:     ; preds = %disable_data_connection
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end144

for.body136:                                      ; preds = %for.body136.for.body136_crit_edge, %disable_data_connection.for.body136_crit_edge
  %.pn277.in322 = phi ptr [ %.pn277, %for.body136.for.body136_crit_edge ], [ %99, %disable_data_connection.for.body136_crit_edge ]
  %100 = ptrtoint ptr %.pn277.in322 to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pn277 = load ptr, ptr %.pn277.in322, align 4
  %connection137 = getelementptr i8, ptr %.pn277.in322, i32 -4
  %101 = ptrtoint ptr %connection137 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %connection137, align 4
  call void @gb_connection_disable(ptr noundef %102) #8
  %cmp132.not = icmp eq ptr %.pn277, %data_list
  br i1 %cmp132.not, label %for.body136.for.end144_crit_edge, label %for.body136.for.body136_crit_edge

for.body136.for.body136_crit_edge:                ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body136

for.body136.for.end144_crit_edge:                 ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end144

for.end144:                                       ; preds = %for.body136.for.end144_crit_edge, %disable_data_connection.for.end144_crit_edge
  call void @gbaudio_tplg_release(ptr noundef nonnull %call.i) #8
  %103 = ptrtoint ptr %topology54 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %topology54, align 4
  br label %free_topology

free_topology:                                    ; preds = %for.end144, %do.end52
  %ret.1 = phi i32 [ %call47, %do.end52 ], [ %ret.0, %for.end144 ]
  %104 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %topology, align 4
  call void @kfree(ptr noundef %105) #8
  br label %disable_connection

disable_connection:                               ; preds = %free_topology, %do.end45
  %ret.2 = phi i32 [ %call40, %do.end45 ], [ %ret.1, %free_topology ]
  %106 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mgmt_connection, align 4
  call void @gb_connection_disable(ptr noundef %107) #8
  br label %destroy_connections

destroy_connections:                              ; preds = %disable_connection, %do.end35, %if.then24, %do.end, %gb_audio_add_data_connection.exit, %sw.bb16.destroy_connections_crit_edge, %gb_audio_add_mgmt_connection.exit, %gb_audio_add_mgmt_connection.exit.thread303
  %ret.3 = phi i32 [ -19, %do.end ], [ %62, %gb_audio_add_data_connection.exit ], [ %41, %gb_audio_add_mgmt_connection.exit ], [ %call30, %do.end35 ], [ %ret.2, %disable_connection ], [ -22, %if.then24 ], [ -19, %gb_audio_add_mgmt_connection.exit.thread303 ], [ -12, %sw.bb16.destroy_connections_crit_edge ]
  %108 = ptrtoint ptr %data_list to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data_list, align 4
  %cmp160.not323 = icmp eq ptr %109, %data_list
  br i1 %cmp160.not323, label %destroy_connections.for.end173_crit_edge, label %destroy_connections.for.body164_crit_edge

destroy_connections.for.body164_crit_edge:        ; preds = %destroy_connections
  br label %for.body164

destroy_connections.for.end173_crit_edge:         ; preds = %destroy_connections
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end173

for.body164:                                      ; preds = %list_del.exit.for.body164_crit_edge, %destroy_connections.for.body164_crit_edge
  %.pn.in324 = phi ptr [ %.pn, %list_del.exit.for.body164_crit_edge ], [ %109, %destroy_connections.for.body164_crit_edge ]
  %dai.2 = getelementptr i8, ptr %.pn.in324, i32 -12
  %110 = ptrtoint ptr %.pn.in324 to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pn = load ptr, ptr %.pn.in324, align 4
  %connection165 = getelementptr i8, ptr %.pn.in324, i32 -4
  %111 = ptrtoint ptr %connection165 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %connection165, align 4
  call void @gb_connection_destroy(ptr noundef %112) #8
  %call.i.i298 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in324) #8
  br i1 %call.i.i298, label %if.end.i.i, label %for.body164.list_del.exit_crit_edge

for.body164.list_del.exit_crit_edge:              ; preds = %for.body164
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body164
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in324, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %prev.i.i, align 4
  %115 = ptrtoint ptr %.pn.in324 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %.pn.in324, align 4
  %prev1.i.i.i299 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %prev1.i.i.i299 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %114, ptr %prev1.i.i.i299, align 4
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %116, ptr %114, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body164.list_del.exit_crit_edge
  %119 = ptrtoint ptr %.pn.in324 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in324, align 4
  %prev.i300 = getelementptr inbounds %struct.list_head, ptr %.pn.in324, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i300 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i300, align 4
  call void @devm_kfree(ptr noundef %bundle, ptr noundef %dai.2) #8
  %cmp160.not = icmp eq ptr %.pn, %data_list
  br i1 %cmp160.not, label %list_del.exit.for.end173_crit_edge, label %list_del.exit.for.body164_crit_edge

list_del.exit.for.body164_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body164

list_del.exit.for.end173_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end173

for.end173:                                       ; preds = %list_del.exit.for.end173_crit_edge, %destroy_connections.for.end173_crit_edge
  %mgmt_connection174 = getelementptr inbounds %struct.gbaudio_module_info, ptr %call.i, i32 0, i32 21
  %121 = ptrtoint ptr %mgmt_connection174 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mgmt_connection174, align 4
  %tobool175.not = icmp eq ptr %122, null
  br i1 %tobool175.not, label %for.end173.if.end178_crit_edge, label %if.then176

for.end173.if.end178_crit_edge:                   ; preds = %for.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then176:                                       ; preds = %for.end173
  call void @__sanitizer_cov_trace_pc() #10
  call void @gb_connection_destroy(ptr noundef nonnull %122) #8
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %for.end173.if.end178_crit_edge
  call void @devm_kfree(ptr noundef %bundle, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end178, %do.end117, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %if.end178 ], [ 0, %do.end117 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %topology) #8
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %desc) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_audio_disconnect(ptr noundef %bundle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %bundle, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.gb_pm_runtime_get_sync.exit_crit_edge

entry.gb_pm_runtime_get_sync.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pm_runtime_get_sync.exit

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.57, i32 noundef %call.i.i) #11
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !142
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.gb_pm_runtime_get_sync.exit_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.gb_pm_runtime_get_sync.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gb_pm_runtime_get_sync.exit

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !143
  br label %gb_pm_runtime_get_sync.exit

gb_pm_runtime_get_sync.exit:                      ; preds = %do.end11.i.i.i.i.i, %do.end.i.gb_pm_runtime_get_sync.exit_crit_edge, %entry.gb_pm_runtime_get_sync.exit_crit_edge
  tail call void @gbaudio_unregister_module(ptr noundef %1) #8
  %manager_id = getelementptr inbounds %struct.gbaudio_module_info, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %manager_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %manager_id, align 4
  %call2 = tail call i32 @gb_audio_manager_remove(i32 noundef %4) #8
  tail call void @gbaudio_tplg_release(ptr noundef %1) #8
  %topology = getelementptr inbounds %struct.gbaudio_module_info, ptr %1, i32 0, i32 40
  %5 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %topology, align 4
  tail call void @kfree(ptr noundef %6) #8
  %7 = ptrtoint ptr %topology to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %topology, align 4
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mgmt_connection, align 4
  tail call void @gb_connection_disable(ptr noundef %9) #8
  %data_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %data_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_list, align 4
  %cmp.not41 = icmp eq ptr %11, %data_list
  br i1 %cmp.not41, label %gb_pm_runtime_get_sync.exit.for.end_crit_edge, label %gb_pm_runtime_get_sync.exit.for.body_crit_edge

gb_pm_runtime_get_sync.exit.for.body_crit_edge:   ; preds = %gb_pm_runtime_get_sync.exit
  br label %for.body

gb_pm_runtime_get_sync.exit.for.end_crit_edge:    ; preds = %gb_pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %gb_pm_runtime_get_sync.exit.for.body_crit_edge
  %.pn.in42 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %11, %gb_pm_runtime_get_sync.exit.for.body_crit_edge ]
  %dai.0 = getelementptr i8, ptr %.pn.in42, i32 -12
  %12 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in42, align 4
  %connection = getelementptr i8, ptr %.pn.in42, i32 -4
  %13 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connection, align 4
  tail call void @gb_connection_disable(ptr noundef %14) #8
  %15 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connection, align 4
  tail call void @gb_connection_destroy(ptr noundef %16) #8
  %call.i.i40 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in42) #8
  br i1 %call.i.i40, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in42, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %23 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in42, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void @devm_kfree(ptr noundef %26, ptr noundef %dai.0) #8
  %cmp.not = icmp eq ptr %.pn, %data_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %gb_pm_runtime_get_sync.exit.for.end_crit_edge
  %27 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mgmt_connection, align 4
  tail call void @gb_connection_destroy(ptr noundef %28) #8
  %29 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %mgmt_connection, align 4
  tail call void @devm_kfree(ptr noundef %bundle, ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_get_topology(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gbaudio_tplg_parse_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gbaudio_register_module(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_manager_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gbaudio_tplg_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbaudio_codec_request_handler(ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op, align 4
  %bundle = getelementptr inbounds %struct.gb_connection, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bundle, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %request = getelementptr inbounds %struct.gb_operation, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request, align 4
  %header2 = getelementptr inbounds %struct.gb_message, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %header2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %header2, align 4
  %type = getelementptr inbounds %struct.gb_operation_msg_hdr, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %11, label %do.body [
    i8 20, label %sw.bb
    i8 18, label %sw.bb5
    i8 19, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %payload = getelementptr inbounds %struct.gb_message, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %payload, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %14, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  %conv.i = zext i16 %19 to i32
  %event.i = getelementptr inbounds %struct.gb_audio_streaming_event_request, ptr %14, i32 0, i32 1
  %20 = ptrtoint ptr %event.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %event.i, align 1
  %conv1.i = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.29, i32 noundef %conv.i, i32 noundef %conv1.i) #11
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %payload7 = getelementptr inbounds %struct.gb_message, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %payload7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %payload7, align 4
  %headset.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 19
  %jack2.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 19, i32 0, i32 1
  %24 = ptrtoint ptr %jack2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %jack2.i, align 4
  %button.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 20
  %jack4.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 20, i32 0, i32 1
  %26 = ptrtoint ptr %jack4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %jack4.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %do.body.i, label %do.body12.i

do.body.i:                                        ; preds = %sw.bb5
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_request_jack._rs, ptr noundef nonnull @__func__.gbaudio_request_jack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %jack_attribute.i = getelementptr inbounds %struct.gb_audio_jack_event_request, ptr %23, i32 0, i32 1
  %30 = ptrtoint ptr %jack_attribute.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %jack_attribute.i, align 1
  %conv.i31 = zext i8 %31 to i32
  %event.i32 = getelementptr inbounds %struct.gb_audio_jack_event_request, ptr %23, i32 0, i32 2
  %32 = ptrtoint ptr %event.i32 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %event.i32, align 1
  %conv8.i = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.32, i32 noundef %conv.i31, i32 noundef %conv8.i) #11
  br label %cleanup

do.body12.i:                                      ; preds = %sw.bb5
  %call13.i = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_request_jack._rs.33, ptr noundef nonnull @__func__.gbaudio_request_jack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.do.end26.i_crit_edge, label %do.end18.i

do.body12.i.do.end26.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26.i

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %jack_attribute20.i = getelementptr inbounds %struct.gb_audio_jack_event_request, ptr %23, i32 0, i32 1
  %36 = ptrtoint ptr %jack_attribute20.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %jack_attribute20.i, align 1
  %conv21.i = zext i8 %37 to i32
  %event22.i = getelementptr inbounds %struct.gb_audio_jack_event_request, ptr %23, i32 0, i32 2
  %38 = ptrtoint ptr %event22.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %event22.i, align 1
  %conv23.i = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.35, i32 noundef %conv21.i, i32 noundef %conv23.i) #11
  br label %do.end26.i

do.end26.i:                                       ; preds = %do.end18.i, %do.body12.i.do.end26.i_crit_edge
  %event27.i = getelementptr inbounds %struct.gb_audio_jack_event_request, ptr %23, i32 0, i32 2
  %40 = ptrtoint ptr %event27.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %event27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp.i = icmp eq i8 %41, 2
  br i1 %cmp.i, label %if.then30.i, label %if.end40.i

if.then30.i:                                      ; preds = %do.end26.i
  %jack_type.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 15
  %42 = ptrtoint ptr %jack_type.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %jack_type.i, align 4
  %tobool31.not.i = icmp eq ptr %27, null
  br i1 %tobool31.not.i, label %if.then30.i.if.end37.i_crit_edge, label %land.lhs.true.i

if.then30.i.if.end37.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %if.then30.i
  %button_status.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 18
  %43 = ptrtoint ptr %button_status.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %button_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool32.not.i = icmp eq i32 %44, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i.if.end37.i_crit_edge, label %if.then33.i

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %button_mask.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 17
  %45 = ptrtoint ptr %button_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %button_mask.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %button.i, i32 noundef 0, i32 noundef %46) #8
  %47 = ptrtoint ptr %button_status.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %button_status.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then33.i, %land.lhs.true.i.if.end37.i_crit_edge, %if.then30.i.if.end37.i_crit_edge
  %jack_mask.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 16
  %48 = ptrtoint ptr %jack_mask.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %jack_mask.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %headset.i, i32 noundef 0, i32 noundef %49) #8
  br label %cleanup

if.end40.i:                                       ; preds = %do.end26.i
  %jack_attribute41.i = getelementptr inbounds %struct.gb_audio_jack_event_request, ptr %23, i32 0, i32 1
  %50 = ptrtoint ptr %jack_attribute41.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %jack_attribute41.i, align 1
  %conv42.i = zext i8 %51 to i32
  %jack_mask43.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 16
  %52 = ptrtoint ptr %jack_mask43.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %jack_mask43.i, align 4
  %and.i = and i32 %53, %conv42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool44.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool44.not.i, label %do.body46.i, label %if.end61.i

do.body46.i:                                      ; preds = %if.end40.i
  %call47.i = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_request_jack._rs.37, ptr noundef nonnull @__func__.gbaudio_request_jack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %do.body46.i.cleanup_crit_edge, label %do.end52.i

do.body46.i.cleanup_crit_edge:                    ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end52.i:                                       ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %5, align 4
  %56 = ptrtoint ptr %jack_attribute41.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %jack_attribute41.i, align 1
  %conv55.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %event27.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %event27.i, align 1
  %conv57.i = zext i8 %59 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.32, i32 noundef %conv55.i, i32 noundef %conv57.i) #11
  br label %cleanup

if.end61.i:                                       ; preds = %if.end40.i
  %jack_type62.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 15
  %60 = ptrtoint ptr %jack_type62.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %jack_type62.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool63.not.i = icmp eq i32 %61, 0
  br i1 %tobool63.not.i, label %if.end61.i.if.end77.i_crit_edge, label %do.body65.i

if.end61.i.if.end77.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

do.body65.i:                                      ; preds = %if.end61.i
  %call66.i = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_request_jack._rs.40, ptr noundef nonnull @__func__.gbaudio_request_jack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %do.body65.i.if.end77.i_crit_edge, label %do.end71.i

do.body65.i.if.end77.i_crit_edge:                 ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

do.end71.i:                                       ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %5, align 4
  %64 = ptrtoint ptr %jack_type62.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %jack_type62.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.42, i32 noundef %65, i32 noundef %and.i) #11
  br label %if.end77.i

if.end77.i:                                       ; preds = %do.end71.i, %do.body65.i.if.end77.i_crit_edge, %if.end61.i.if.end77.i_crit_edge
  %66 = ptrtoint ptr %jack_type62.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and.i, ptr %jack_type62.i, align 4
  %67 = ptrtoint ptr %jack_mask43.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %jack_mask43.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %headset.i, i32 noundef %and.i, i32 noundef %68) #8
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %payload11 = getelementptr inbounds %struct.gb_message, ptr %7, i32 0, i32 2
  %69 = ptrtoint ptr %payload11 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %payload11, align 4
  %button.i33 = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 20
  %jack1.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 20, i32 0, i32 1
  %71 = ptrtoint ptr %jack1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %jack1.i, align 4
  %tobool.not.i34 = icmp eq ptr %72, null
  br i1 %tobool.not.i34, label %do.body.i36, label %do.body9.i

do.body.i36:                                      ; preds = %sw.bb9
  %call.i35 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_request_button._rs, ptr noundef nonnull @__func__.gbaudio_request_button) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool2.not.i = icmp eq i32 %call.i35, 0
  br i1 %tobool2.not.i, label %do.body.i36.cleanup_crit_edge, label %do.end.i39

do.body.i36.cleanup_crit_edge:                    ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i39:                                       ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %5, align 4
  %button_id.i = getelementptr inbounds %struct.gb_audio_button_event_request, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %button_id.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %button_id.i, align 1
  %conv.i37 = zext i8 %76 to i32
  %event.i38 = getelementptr inbounds %struct.gb_audio_button_event_request, ptr %70, i32 0, i32 2
  %77 = ptrtoint ptr %event.i38 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %event.i38, align 1
  %conv5.i = zext i8 %78 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.44, i32 noundef %conv.i37, i32 noundef %conv5.i) #11
  br label %cleanup

do.body9.i:                                       ; preds = %sw.bb9
  %call10.i = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_request_button._rs.45, ptr noundef nonnull @__func__.gbaudio_request_button) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.body9.i.do.end23.i_crit_edge, label %do.end15.i

do.body9.i.do.end23.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

do.end15.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %5, align 4
  %button_id17.i = getelementptr inbounds %struct.gb_audio_button_event_request, ptr %70, i32 0, i32 1
  %81 = ptrtoint ptr %button_id17.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %button_id17.i, align 1
  %conv18.i = zext i8 %82 to i32
  %event19.i = getelementptr inbounds %struct.gb_audio_button_event_request, ptr %70, i32 0, i32 2
  %83 = ptrtoint ptr %event19.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %event19.i, align 1
  %conv20.i = zext i8 %84 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %80, ptr noundef nonnull @.str.47, i32 noundef %conv18.i, i32 noundef %conv20.i) #11
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end15.i, %do.body9.i.do.end23.i_crit_edge
  %jack_type.i40 = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 15
  %85 = ptrtoint ptr %jack_type.i40 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %jack_type.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool24.not.i = icmp eq i32 %86, 0
  br i1 %tobool24.not.i, label %do.body26.i, label %if.end37.i44

do.body26.i:                                      ; preds = %do.end23.i
  %call27.i = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_request_button._rs.49, ptr noundef nonnull @__func__.gbaudio_request_button) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %do.body26.i.cleanup_crit_edge, label %do.end32.i

do.body26.i.cleanup_crit_edge:                    ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end32.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.51) #11
  br label %cleanup

if.end37.i44:                                     ; preds = %do.end23.i
  %button_status.i41 = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 18
  %89 = ptrtoint ptr %button_status.i41 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %button_status.i41, align 4
  %button_mask.i42 = getelementptr inbounds %struct.gbaudio_module_info, ptr %5, i32 0, i32 17
  %91 = ptrtoint ptr %button_mask.i42 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %button_mask.i42, align 4
  %and.i43 = and i32 %92, %90
  %button_id38.i = getelementptr inbounds %struct.gb_audio_button_event_request, ptr %70, i32 0, i32 1
  %93 = ptrtoint ptr %button_id38.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %button_id38.i, align 1
  %switch.tableidx = add i8 %94, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %95 = icmp ult i8 %switch.tableidx, 4
  br i1 %95, label %switch.lookup, label %if.end37.i44.do.body53.i_crit_edge

if.end37.i44.do.body53.i_crit_edge:               ; preds = %if.end37.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53.i

switch.lookup:                                    ; preds = %if.end37.i44
  %96 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.gbaudio_codec_request_handler, i32 0, i32 %96
  %97 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %97)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and50.i = and i32 %switch.load, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %switch.lookup.do.body53.i_crit_edge, label %if.end64.i

switch.lookup.do.body53.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53.i

do.body53.i:                                      ; preds = %switch.lookup.do.body53.i_crit_edge, %if.end37.i44.do.body53.i_crit_edge
  %call54.i = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_request_button._rs.53, ptr noundef nonnull @__func__.gbaudio_request_button) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %do.body53.i.cleanup_crit_edge, label %do.end59.i

do.body53.i.cleanup_crit_edge:                    ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end59.i:                                       ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.55) #11
  br label %cleanup

if.end64.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %event65.i = getelementptr inbounds %struct.gb_audio_button_event_request, ptr %70, i32 0, i32 2
  %100 = ptrtoint ptr %event65.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %event65.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %101)
  %cmp.i45 = icmp eq i8 %101, 1
  %or.i = or i32 %and50.i, %and.i43
  %neg.i = xor i32 %and50.i, -1
  %and69.i = and i32 %and.i43, %neg.i
  %report.0.i = select i1 %cmp.i45, i32 %or.i, i32 %and69.i
  %102 = ptrtoint ptr %button_status.i41 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %report.0.i, ptr %button_status.i41, align 4
  tail call void @snd_soc_jack_report(ptr noundef %button.i33, i32 noundef %report.0.i, i32 noundef %92) #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_codec_request_handler._rs, ptr noundef nonnull @__func__.gbaudio_codec_request_handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bundle, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.28) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end64.i, %do.end59.i, %do.body53.i.cleanup_crit_edge, %do.end32.i, %do.body26.i.cleanup_crit_edge, %do.end.i39, %do.body.i36.cleanup_crit_edge, %if.end77.i, %do.end52.i, %do.body46.i.cleanup_crit_edge, %if.end37.i, %do.end.i, %do.body.i.cleanup_crit_edge, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %sw.bb ], [ 0, %if.end37.i ], [ 0, %if.end77.i ], [ -22, %do.end.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ -22, %do.end52.i ], [ -22, %do.body46.i.cleanup_crit_edge ], [ 0, %if.end64.i ], [ -22, %do.end.i39 ], [ -22, %do.body.i36.cleanup_crit_edge ], [ -22, %do.end32.i ], [ -22, %do.body26.i.cleanup_crit_edge ], [ -22, %do.end59.i ], [ -22, %do.body53.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create_offloaded(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gbaudio_unregister_module(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_manager_remove(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_audio_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %data_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn14 = load ptr, ptr %data_list, align 4
  %cmp.not15 = icmp eq ptr %.pn14, %data_list
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn14, %entry.for.body_crit_edge ]
  %connection = getelementptr i8, ptr %.pn16, i32 -4
  %3 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connection, align 4
  tail call void @gb_connection_disable(ptr noundef %4) #8
  %5 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %data_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mgmt_connection, align 4
  tail call void @gb_connection_disable(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_audio_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgmt_connection, align 4
  %call1 = tail call i32 @gb_connection_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %call1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %1, i32 0, i32 23
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %data_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %data_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %connection = getelementptr i8, ptr %.pn, i32 -4
  %5 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %connection, align 4
  %call6 = tail call i32 @gb_connection_enable(ptr noundef %6) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.body.for.cond_crit_edge, label %do.end11

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %data_cport = getelementptr i8, ptr %.pn, i32 -8
  %7 = ptrtoint ptr %data_cport to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data_cport, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call6, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %for.cond.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call6, %do.end11 ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !118, !120, !122, !124, !125, !126, !127, !129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__initcall__kmod_gb_audio_module__241_474_gb_audio_driver_init6, !1, !"__initcall__kmod_gb_audio_module__241_474_gb_audio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/audio_module.c", i32 474, i32 1}
!2 = !{ptr @__exitcall_gb_audio_driver_exit, !1, !"__exitcall_gb_audio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/audio_module.c", i32 476, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../drivers/staging/greybus/audio_module.c", i32 477, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/audio_module.c", i32 478, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias246, !11, !"__UNIQUE_ID_alias246", i1 false, i1 false}
!11 = !{!"../drivers/staging/greybus/audio_module.c", i32 479, i32 1}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/greybus/audio_module.c", i32 468, i32 11}
!15 = !{ptr @gb_audio_driver, !16, !"gb_audio_driver", i1 false, i1 false}
!16 = !{!"../drivers/staging/greybus/audio_module.c", i32 467, i32 30}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/greybus/audio_module.c", i32 263, i32 51}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/audio_module.c", i32 285, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gb_audio_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @gb_audio_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/greybus/audio_module.c", i32 295, i32 3}
!29 = !{ptr @gb_audio_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @gb_audio_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/greybus/audio_module.c", i32 302, i32 3}
!33 = !{ptr @gb_audio_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @gb_audio_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/greybus/audio_module.c", i32 313, i32 3}
!37 = !{ptr @gb_audio_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @gb_audio_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/greybus/audio_module.c", i32 320, i32 3}
!41 = !{ptr @gb_audio_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gb_audio_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/greybus/audio_module.c", i32 330, i32 4}
!45 = !{ptr @gb_audio_probe._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @gb_audio_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/greybus/audio_module.c", i32 343, i32 2}
!49 = !{ptr @gb_audio_probe.__UNIQUE_ID_ddebug239, !48, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/greybus/audio_module.c", i32 353, i32 2}
!52 = !{ptr @gb_audio_probe.__UNIQUE_ID_ddebug240, !51, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/greybus/audio_module.c", i32 185, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @gb_audio_add_mgmt_connection._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @gb_audio_add_mgmt_connection._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/greybus/audio_module.c", i32 169, i32 3}
!60 = !{ptr @gbaudio_codec_request_handler._rs, !59, !"_rs", i1 false, i1 false}
!61 = !{ptr @__func__.gbaudio_codec_request_handler, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @gbaudio_codec_request_handler._entry, !59, !"_entry", i1 false, i1 false}
!64 = !{ptr @gbaudio_codec_request_handler._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/greybus/audio_module.c", i32 135, i32 2}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @gbaudio_request_stream._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @gbaudio_request_stream._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @gbaudio_request_jack._rs, !72, !"_rs", i1 false, i1 false}
!72 = !{!"../drivers/staging/greybus/audio_module.c", i32 28, i32 3}
!73 = !{ptr @__func__.gbaudio_request_jack, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @gbaudio_request_jack._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @gbaudio_request_jack._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @gbaudio_request_jack._rs.33, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/staging/greybus/audio_module.c", i32 34, i32 2}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @gbaudio_request_jack._entry.34, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @gbaudio_request_jack._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @gbaudio_request_jack._rs.37, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../drivers/staging/greybus/audio_module.c", i32 52, i32 3}
!84 = !{ptr @gbaudio_request_jack._entry.38, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @gbaudio_request_jack._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @gbaudio_request_jack._rs.40, !87, !"_rs", i1 false, i1 false}
!87 = !{!"../drivers/staging/greybus/audio_module.c", i32 59, i32 3}
!88 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @gbaudio_request_jack._entry.41, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @gbaudio_request_jack._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @gbaudio_request_button._rs, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../drivers/staging/greybus/audio_module.c", i32 76, i32 3}
!93 = !{ptr @__func__.gbaudio_request_button, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @gbaudio_request_button._entry, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @gbaudio_request_button._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @gbaudio_request_button._rs.45, !98, !"_rs", i1 false, i1 false}
!98 = !{!"../drivers/staging/greybus/audio_module.c", i32 82, i32 2}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @gbaudio_request_button._entry.46, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @gbaudio_request_button._entry_ptr.48, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @gbaudio_request_button._rs.49, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../drivers/staging/greybus/audio_module.c", i32 88, i32 3}
!104 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @gbaudio_request_button._entry.50, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @gbaudio_request_button._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @gbaudio_request_button._rs.53, !108, !"_rs", i1 false, i1 false}
!108 = !{!"../drivers/staging/greybus/audio_module.c", i32 115, i32 3}
!109 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @gbaudio_request_button._entry.54, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @gbaudio_request_button._entry_ptr.56, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../include/linux/greybus/bundle.h", i32 53, i32 3}
!114 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @gb_pm_runtime_get_sync._entry, !113, !"_entry", i1 false, i1 false}
!117 = !{ptr @gb_pm_runtime_get_sync._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @gb_audio_id_table, !119, !"gb_audio_id_table", i1 false, i1 false}
!119 = !{!"../drivers/staging/greybus/audio_module.c", i32 415, i32 39}
!120 = !{ptr @gb_audio_pm_ops, !121, !"gb_audio_pm_ops", i1 false, i1 false}
!121 = !{!"../drivers/staging/greybus/audio_module.c", i32 463, i32 32}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/greybus/audio_module.c", i32 445, i32 3}
!124 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @gb_audio_resume._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @gb_audio_resume._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @gb_audio_resume._entry.62, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/staging/greybus/audio_module.c", i32 452, i32 4}
!129 = !{ptr @gb_audio_resume._entry_ptr.63, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"auto-init"}
!140 = !{i64 2148702285, i64 2148702290, i64 2148702303, i64 2148702347, i64 2148702381, i64 2148702402}
!141 = !{i64 2148219889}
!142 = !{i64 704712, i64 704737, i64 704759, i64 704775, i64 704787, i64 704807, i64 704831, i64 704847, i64 704859}
!143 = !{i64 2148220077}
