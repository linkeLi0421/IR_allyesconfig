; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/audio_topology.c_pt.bc'
source_filename = "../drivers/staging/greybus/audio_topology.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.gbaudio_module_info = type { ptr, i32, i32, i32, i32, i32, [32 x i8], [32 x i8], %struct.list_head, i32, [32 x i8], i32, i32, [32 x i8], [32 x i8], i32, i32, i32, i32, %struct.gbaudio_jack, %struct.gbaudio_jack, ptr, i32, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.gbaudio_jack = type { %struct.snd_soc_jack, %struct.list_head }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gb_audio_widget = type { [32 x i8], [32 x i8], i8, i8, i8, i8, [0 x %struct.gb_audio_control] }
%struct.gb_audio_control = type <{ [32 x i8], i8, i8, i16, i32, i8, i8, %struct.gb_audio_ctl_elem_info }>
%struct.gb_audio_ctl_elem_info = type <{ i8, [4 x i16], %union.anon.92 }>
%union.anon.92 = type { %struct.gb_audio_integer64 }
%struct.gb_audio_integer64 = type { i64, i64, i64 }
%struct.gbaudio_widget = type { i8, ptr, %struct.list_head }
%struct.gb_audio_topology = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, [0 x i8] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.gbaudio_control = type { i8, ptr, ptr, ptr, i32, %struct.list_head }
%struct.gb_audio_enumerated = type <{ i32, i16, [0 x i8] }>
%struct.gb_audio_route = type { i8, i8, i8, i8 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.gbaudio_ctl_pvt = type { i32, i32, i32, i32, ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.gb_audio_integer = type { i32, i32, i32 }
%struct.gb_audio_ctl_elem_value = type { i64, %union.anon.94 }
%union.anon.94 = type { [2 x i64] }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.gbaudio_codec_info = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.mutex }
%struct.snd_soc_dapm_widget_list = type { i32, [0 x ptr] }

@gbaudio_tplg_parse_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%d: Error in parsing topology header\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gbaudio_tplg_parse_data\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/greybus/audio_topology.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gbaudio_tplg_parse_data._entry_ptr = internal global ptr @gbaudio_tplg_parse_data._entry, section ".printk_index", align 4
@gbaudio_tplg_parse_data._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d: Error in parsing controls data\0A\00", [60 x i8] zeroinitializer }, align 32
@gbaudio_tplg_parse_data._entry_ptr.7 = internal global ptr @gbaudio_tplg_parse_data._entry.5, section ".printk_index", align 4
@gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 1, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gb_audio_module\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Control parsing finished\0A\00", [38 x i8] zeroinitializer }, align 32
@gbaudio_tplg_parse_data._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1392, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d: Error in parsing widgets data\0A\00", [61 x i8] zeroinitializer }, align 32
@gbaudio_tplg_parse_data._entry_ptr.12 = internal global ptr @gbaudio_tplg_parse_data._entry.10, section ".printk_index", align 4
@gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 1, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Widget parsing finished\0A\00", [39 x i8] zeroinitializer }, align 32
@gbaudio_tplg_parse_data._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 1402, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d: Error in parsing routes data\0A\00", [62 x i8] zeroinitializer }, align 32
@gbaudio_tplg_parse_data._entry_ptr.16 = internal global ptr @gbaudio_tplg_parse_data._entry.14, section ".printk_index", align 4
@gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 1, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Route parsing finished\0A\00", [40 x i8] zeroinitializer }, align 32
@gbaudio_tplg_process_header.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gbaudio_tplg_process_header\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAI offset is 0x%lx\0A\00", [43 x i8] zeroinitializer }, align 32
@gbaudio_tplg_process_header.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 1, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"control offset is %lx\0A\00", [41 x i8] zeroinitializer }, align 32
@gbaudio_tplg_process_header.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.18, ptr @.str.2, ptr @.str.21, i8 1, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"widget offset is %lx\0A\00", [42 x i8] zeroinitializer }, align 32
@gbaudio_tplg_process_header.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.18, ptr @.str.2, ptr @.str.22, i8 1, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"route offset is %lx\0A\00", [43 x i8] zeroinitializer }, align 32
@gbaudio_tplg_process_kcontrols._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:%d type not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gbaudio_tplg_process_kcontrols\00", [33 x i8] zeroinitializer }, align 32
@gbaudio_tplg_process_kcontrols._entry_ptr = internal global ptr @gbaudio_tplg_process_kcontrols._entry, section ".printk_index", align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GB %d %s\00", [23 x i8] zeroinitializer }, align 32
@gbaudio_tplg_process_kcontrols.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 1, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%d:%s created of type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@gbaudio_tplg_create_kcontrol.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gbaudio_tplg_create_kcontrol\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:%d control created\0A\00", [41 x i8] zeroinitializer }, align 32
@gbaudio_tplg_create_enum_kctl.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gbaudio_tplg_create_enum_kctl\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Max:%d, name_length:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@gbaudio_tplg_create_enum_kctl.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"src[%d]: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@gbcodec_enum_ctl_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.gbcodec_enum_ctl_get = private unnamed_addr constant [21 x i8] c"gbcodec_enum_ctl_get\00", align 1
@gbcodec_enum_ctl_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.gbcodec_enum_ctl_get, ptr @.str.2, i32 581, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%d:Error in %s for %s\0A\00", [41 x i8] zeroinitializer }, align 32
@gbcodec_enum_ctl_get._entry_ptr = internal global ptr @gbcodec_enum_ctl_get._entry, section ".printk_index", align 4
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %d\00", [26 x i8] zeroinitializer }, align 32
@find_gb_module.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"find_gb_module\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s:Find module#%d\0A\00", [45 x i8] zeroinitializer }, align 32
@find_gb_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 52, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: module#%d missing in codec list\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@find_gb_module._entry_ptr = internal global ptr @find_gb_module._entry, section ".printk_index", align 4
@gbaudio_map_controlname._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 95, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: missing in modules controls list\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gbaudio_map_controlname\00", [40 x i8] zeroinitializer }, align 32
@gbaudio_map_controlname._entry_ptr = internal global ptr @gbaudio_map_controlname._entry, section ".printk_index", align 4
@gb_pm_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.43, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gb_pm_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/greybus/bundle.h\00", [33 x i8] zeroinitializer }, align 32
@gb_pm_runtime_get_sync._entry_ptr = internal global ptr @gb_pm_runtime_get_sync._entry, section ".printk_index", align 4
@gbcodec_enum_ctl_put._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.gbcodec_enum_ctl_put = private unnamed_addr constant [21 x i8] c"gbcodec_enum_ctl_put\00", align 1
@gbcodec_enum_ctl_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.gbcodec_enum_ctl_put, ptr @.str.2, i32 638, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_enum_ctl_put._entry_ptr = internal global ptr @gbcodec_enum_ctl_put._entry, section ".printk_index", align 4
@gbcodec_mixer_ctl_info.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gbcodec_mixer_ctl_info\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Entered %s:%s\0A\00", [17 x i8] zeroinitializer }, align 32
@gbcodec_mixer_ctl_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NULL info for %s\0A\00", [46 x i8] zeroinitializer }, align 32
@gbcodec_mixer_ctl_info._entry_ptr = internal global ptr @gbcodec_mixer_ctl_info._entry, section ".printk_index", align 4
@gbcodec_mixer_ctl_info._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.44, ptr @.str.2, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid type: %d for %s:kcontrol\0A\00", [62 x i8] zeroinitializer }, align 32
@gbcodec_mixer_ctl_info._entry_ptr.49 = internal global ptr @gbcodec_mixer_ctl_info._entry.47, section ".printk_index", align 4
@gbcodec_mixer_ctl_get.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.2, ptr @.str.45, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gbcodec_mixer_ctl_get\00", [42 x i8] zeroinitializer }, align 32
@gbcodec_mixer_ctl_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbcodec_mixer_ctl_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.50, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_mixer_ctl_get._entry_ptr = internal global ptr @gbcodec_mixer_ctl_get._entry, section ".printk_index", align 4
@gbcodec_mixer_ctl_get._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.50, ptr @.str.2, i32 271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_mixer_ctl_get._entry_ptr.52 = internal global ptr @gbcodec_mixer_ctl_get._entry.51, section ".printk_index", align 4
@gbcodec_mixer_ctl_put.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.53, ptr @.str.2, ptr @.str.45, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gbcodec_mixer_ctl_put\00", [42 x i8] zeroinitializer }, align 32
@gbcodec_mixer_ctl_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.53, ptr @.str.2, i32 318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_mixer_ctl_put._entry_ptr = internal global ptr @gbcodec_mixer_ctl_put._entry, section ".printk_index", align 4
@gbcodec_mixer_ctl_put._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbcodec_mixer_ctl_put._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.53, ptr @.str.2, i32 337, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_mixer_ctl_put._entry_ptr.55 = internal global ptr @gbcodec_mixer_ctl_put._entry.54, section ".printk_index", align 4
@gbaudio_tplg_process_widgets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.56, ptr @.str.2, i32 1242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gbaudio_tplg_process_widgets\00", [35 x i8] zeroinitializer }, align 32
@gbaudio_tplg_process_widgets._entry_ptr = internal global ptr @gbaudio_tplg_process_widgets._entry, section ".printk_index", align 4
@gbaudio_tplg_create_widget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1036, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid kcontrol count=%d for %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gbaudio_tplg_create_widget\00", [37 x i8] zeroinitializer }, align 32
@gbaudio_tplg_create_widget._entry_ptr = internal global ptr @gbaudio_tplg_create_widget._entry, section ".printk_index", align 4
@gbaudio_tplg_create_widget._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 1058, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d type widget_ctl not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@gbaudio_tplg_create_widget._entry_ptr.61 = internal global ptr @gbaudio_tplg_create_widget._entry.59, section ".printk_index", align 4
@gbaudio_tplg_create_widget.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.58, ptr @.str.2, ptr @.str.62, i8 1, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: control of type %d created\0A\00", [32 x i8] zeroinitializer }, align 32
@gbaudio_tplg_create_widget.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.58, ptr @.str.2, ptr @.str.63, i8 1, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: widget of type %d created\0A\00", [33 x i8] zeroinitializer }, align 32
@gbaudio_tplg_create_wcontrol.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gbaudio_tplg_create_wcontrol\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d DAPM control created, ret:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@gbaudio_tplg_create_enum_ctl.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.66, ptr @.str.2, ptr @.str.30, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gbaudio_tplg_create_enum_ctl\00", [35 x i8] zeroinitializer }, align 32
@gbaudio_tplg_create_enum_ctl.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.66, ptr @.str.2, ptr @.str.31, i8 0, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@gbcodec_enum_dapm_ctl_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.gbcodec_enum_dapm_ctl_get = private unnamed_addr constant [26 x i8] c"gbcodec_enum_dapm_ctl_get\00", align 1
@gbcodec_enum_dapm_ctl_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.gbcodec_enum_dapm_ctl_get, ptr @.str.2, i32 748, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_enum_dapm_ctl_get._entry_ptr = internal global ptr @gbcodec_enum_dapm_ctl_get._entry, section ".printk_index", align 4
@gbaudio_map_wcontrolname._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.67, ptr @.str.2, i32 109, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gbaudio_map_wcontrolname\00", [39 x i8] zeroinitializer }, align 32
@gbaudio_map_wcontrolname._entry_ptr = internal global ptr @gbaudio_map_wcontrolname._entry, section ".printk_index", align 4
@gbcodec_enum_dapm_ctl_put._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.gbcodec_enum_dapm_ctl_put = private unnamed_addr constant [26 x i8] c"gbcodec_enum_dapm_ctl_put\00", align 1
@gbcodec_enum_dapm_ctl_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.gbcodec_enum_dapm_ctl_put, ptr @.str.2, i32 800, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_enum_dapm_ctl_put._entry_ptr = internal global ptr @gbcodec_enum_dapm_ctl_put._entry, section ".printk_index", align 4
@gbcodec_enum_dapm_ctl_put._rs.68 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbcodec_enum_dapm_ctl_put._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.gbcodec_enum_dapm_ctl_put, ptr @.str.2, i32 841, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_enum_dapm_ctl_put._entry_ptr.70 = internal global ptr @gbcodec_enum_dapm_ctl_put._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" Volume\00", [24 x i8] zeroinitializer }, align 32
@gbcodec_mixer_dapm_ctl_get.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.72, ptr @.str.2, ptr @.str.45, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gbcodec_mixer_dapm_ctl_get\00", [37 x i8] zeroinitializer }, align 32
@gbcodec_mixer_dapm_ctl_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.72, ptr @.str.2, i32 405, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"GB: Control '%s' is stereo, which is not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@gbcodec_mixer_dapm_ctl_get._entry_ptr = internal global ptr @gbcodec_mixer_dapm_ctl_get._entry, section ".printk_index", align 4
@gbcodec_mixer_dapm_ctl_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbcodec_mixer_dapm_ctl_get._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.72, ptr @.str.2, i32 418, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_mixer_dapm_ctl_get._entry_ptr.75 = internal global ptr @gbcodec_mixer_dapm_ctl_get._entry.74, section ".printk_index", align 4
@gbcodec_mixer_dapm_ctl_put.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.76, ptr @.str.2, ptr @.str.45, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gbcodec_mixer_dapm_ctl_put\00", [37 x i8] zeroinitializer }, align 32
@gbcodec_mixer_dapm_ctl_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.76, ptr @.str.2, i32 455, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_mixer_dapm_ctl_put._entry_ptr = internal global ptr @gbcodec_mixer_dapm_ctl_put._entry, section ".printk_index", align 4
@gbcodec_mixer_dapm_ctl_put._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbcodec_mixer_dapm_ctl_put._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.76, ptr @.str.2, i32 490, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@gbcodec_mixer_dapm_ctl_put._entry_ptr.78 = internal global ptr @gbcodec_mixer_dapm_ctl_put._entry.77, section ".printk_index", align 4
@gbaudio_widgets = internal constant { <{ { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } }>, [1132 x i8] } { <{ { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } }> <{ { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @gbaudio_widget_event, i32 1, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, %struct.snd_soc_dapm_widget zeroinitializer, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @gbaudio_widget_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, %struct.snd_soc_dapm_widget zeroinitializer, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @gbaudio_widget_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, %struct.snd_soc_dapm_widget zeroinitializer, %struct.snd_soc_dapm_widget zeroinitializer, %struct.snd_soc_dapm_widget zeroinitializer, %struct.snd_soc_dapm_widget zeroinitializer, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @gbcodec_event_int_mic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @gbcodec_event_hp, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @gbcodec_event_spk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, %struct.snd_soc_dapm_widget zeroinitializer, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @gbaudio_widget_event, i32 1, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, %struct.snd_soc_dapm_widget zeroinitializer, %struct.snd_soc_dapm_widget zeroinitializer, %struct.snd_soc_dapm_widget zeroinitializer, %struct.snd_soc_dapm_widget zeroinitializer, %struct.snd_soc_dapm_widget zeroinitializer, %struct.snd_soc_dapm_widget zeroinitializer, %struct.snd_soc_dapm_widget zeroinitializer, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @gbaudio_widget_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @gbaudio_widget_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 } }>, [1132 x i8] zeroinitializer }, align 32
@gbaudio_widget_event.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gbaudio_widget_event\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s %d\0A\00", [22 x i8] zeroinitializer }, align 32
@gbaudio_widget_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 952, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid widget name:%s\0A\00", [40 x i8] zeroinitializer }, align 32
@gbaudio_widget_event._entry_ptr = internal global ptr @gbaudio_widget_event._entry, section ".printk_index", align 4
@gbaudio_widget_event._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@gbaudio_widget_event._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.80, ptr @.str.2, i32 977, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%d: widget, event:%d failed:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@gbaudio_widget_event._entry_ptr.85 = internal global ptr @gbaudio_widget_event._entry.83, section ".printk_index", align 4
@gbaudio_map_widgetname._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 123, ptr @.str.38, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: missing in modules widgets list\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gbaudio_map_widgetname\00", [41 x i8] zeroinitializer }, align 32
@gbaudio_map_widgetname._entry_ptr = internal global ptr @gbaudio_map_widgetname._entry, section ".printk_index", align 4
@gbaudio_tplg_process_routes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1293, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%d:%d:%d:%d - Invalid sink\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gbaudio_tplg_process_routes\00", [36 x i8] zeroinitializer }, align 32
@gbaudio_tplg_process_routes._entry_ptr = internal global ptr @gbaudio_tplg_process_routes._entry, section ".printk_index", align 4
@gbaudio_tplg_process_routes._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 1302, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d:%d:%d:%d - Invalid source\0A\00", [34 x i8] zeroinitializer }, align 32
@gbaudio_tplg_process_routes._entry_ptr.92 = internal global ptr @gbaudio_tplg_process_routes._entry.90, section ".printk_index", align 4
@gbaudio_tplg_process_routes._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 1314, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d:%d:%d:%d - Invalid control\0A\00", [33 x i8] zeroinitializer }, align 32
@gbaudio_tplg_process_routes._entry_ptr.95 = internal global ptr @gbaudio_tplg_process_routes._entry.93, section ".printk_index", align 4
@gbaudio_tplg_process_routes.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.89, ptr @.str.2, ptr @.str.96, i8 1, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Route {%s, %s, %s}\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@switch.table.gbaudio_tplg_create_widget = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 2, i64 4, i64 6, i64 11, i64 12, i64 13, i64 15, i64 23, i64 24]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1372, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1381, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1385, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1391, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1395, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1401, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1405, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1349, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1350, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1352, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1353, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1168, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1182, i32 44 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1205, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 710, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 665, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 668, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 580, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 38, i32 19 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 41, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 51, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 95, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [34 x i8] c"../include/linux/greybus/bundle.h\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 53, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 637, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 176, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 181, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 209, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 228, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 247, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 270, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 290, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 317, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 336, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1241, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1035, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1056, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1094, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1136, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 927, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 874, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 747, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 109, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 799, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 839, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 369, i32 34 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 394, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 403, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 417, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 443, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 453, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 489, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant [16 x i8] c"gbaudio_widgets\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 984, i32 41 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 942, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 952, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 975, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 123, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1291, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1300, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1312, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.442 = private constant [44 x i8] c"../drivers/staging/greybus/audio_topology.c\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.442, i32 1318, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant [40 x i8] c"switch.table.gbaudio_tplg_create_widget\00", align 1
@llvm.compiler.used = appending global [148 x ptr] [ptr @find_gb_module._entry, ptr @find_gb_module._entry_ptr, ptr @gb_pm_runtime_get_sync._entry, ptr @gb_pm_runtime_get_sync._entry_ptr, ptr @gbaudio_map_controlname._entry, ptr @gbaudio_map_controlname._entry_ptr, ptr @gbaudio_map_wcontrolname._entry, ptr @gbaudio_map_wcontrolname._entry_ptr, ptr @gbaudio_map_widgetname._entry, ptr @gbaudio_map_widgetname._entry_ptr, ptr @gbaudio_tplg_create_widget._entry, ptr @gbaudio_tplg_create_widget._entry.59, ptr @gbaudio_tplg_create_widget._entry_ptr, ptr @gbaudio_tplg_create_widget._entry_ptr.61, ptr @gbaudio_tplg_parse_data._entry, ptr @gbaudio_tplg_parse_data._entry.10, ptr @gbaudio_tplg_parse_data._entry.14, ptr @gbaudio_tplg_parse_data._entry.5, ptr @gbaudio_tplg_parse_data._entry_ptr, ptr @gbaudio_tplg_parse_data._entry_ptr.12, ptr @gbaudio_tplg_parse_data._entry_ptr.16, ptr @gbaudio_tplg_parse_data._entry_ptr.7, ptr @gbaudio_tplg_process_kcontrols._entry, ptr @gbaudio_tplg_process_kcontrols._entry_ptr, ptr @gbaudio_tplg_process_routes._entry, ptr @gbaudio_tplg_process_routes._entry.90, ptr @gbaudio_tplg_process_routes._entry.93, ptr @gbaudio_tplg_process_routes._entry_ptr, ptr @gbaudio_tplg_process_routes._entry_ptr.92, ptr @gbaudio_tplg_process_routes._entry_ptr.95, ptr @gbaudio_tplg_process_widgets._entry, ptr @gbaudio_tplg_process_widgets._entry_ptr, ptr @gbaudio_widget_event._entry, ptr @gbaudio_widget_event._entry.83, ptr @gbaudio_widget_event._entry_ptr, ptr @gbaudio_widget_event._entry_ptr.85, ptr @gbcodec_enum_ctl_get._entry, ptr @gbcodec_enum_ctl_get._entry_ptr, ptr @gbcodec_enum_ctl_put._entry, ptr @gbcodec_enum_ctl_put._entry_ptr, ptr @gbcodec_enum_dapm_ctl_get._entry, ptr @gbcodec_enum_dapm_ctl_get._entry_ptr, ptr @gbcodec_enum_dapm_ctl_put._entry, ptr @gbcodec_enum_dapm_ctl_put._entry.69, ptr @gbcodec_enum_dapm_ctl_put._entry_ptr, ptr @gbcodec_enum_dapm_ctl_put._entry_ptr.70, ptr @gbcodec_mixer_ctl_get._entry, ptr @gbcodec_mixer_ctl_get._entry.51, ptr @gbcodec_mixer_ctl_get._entry_ptr, ptr @gbcodec_mixer_ctl_get._entry_ptr.52, ptr @gbcodec_mixer_ctl_info._entry, ptr @gbcodec_mixer_ctl_info._entry.47, ptr @gbcodec_mixer_ctl_info._entry_ptr, ptr @gbcodec_mixer_ctl_info._entry_ptr.49, ptr @gbcodec_mixer_ctl_put._entry, ptr @gbcodec_mixer_ctl_put._entry.54, ptr @gbcodec_mixer_ctl_put._entry_ptr, ptr @gbcodec_mixer_ctl_put._entry_ptr.55, ptr @gbcodec_mixer_dapm_ctl_get._entry, ptr @gbcodec_mixer_dapm_ctl_get._entry.74, ptr @gbcodec_mixer_dapm_ctl_get._entry_ptr, ptr @gbcodec_mixer_dapm_ctl_get._entry_ptr.75, ptr @gbcodec_mixer_dapm_ctl_put._entry, ptr @gbcodec_mixer_dapm_ctl_put._entry.77, ptr @gbcodec_mixer_dapm_ctl_put._entry_ptr, ptr @gbcodec_mixer_dapm_ctl_put._entry_ptr.78, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @gbcodec_enum_ctl_get._rs, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @gbcodec_enum_ctl_put._rs, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @gbcodec_mixer_ctl_get._rs, ptr @.str.53, ptr @gbcodec_mixer_ctl_put._rs, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @gbcodec_enum_dapm_ctl_get._rs, ptr @.str.67, ptr @gbcodec_enum_dapm_ctl_put._rs, ptr @gbcodec_enum_dapm_ctl_put._rs.68, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @gbcodec_mixer_dapm_ctl_get._rs, ptr @.str.76, ptr @gbcodec_mixer_dapm_ctl_put._rs, ptr @gbaudio_widgets, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @gbaudio_widget_event._rs, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @switch.table.gbaudio_tplg_create_widget], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_tplg_parse_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_tplg_parse_data._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_tplg_parse_data._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_tplg_parse_data._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_tplg_process_kcontrols._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_enum_ctl_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_enum_ctl_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_gb_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_map_controlname._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_pm_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_enum_ctl_put._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_enum_ctl_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_ctl_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_ctl_info._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_ctl_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_ctl_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_ctl_get._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_ctl_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_ctl_put._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_ctl_put._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_tplg_process_widgets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_tplg_create_widget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_tplg_create_widget._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_enum_dapm_ctl_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_enum_dapm_ctl_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_map_wcontrolname._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_enum_dapm_ctl_put._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_enum_dapm_ctl_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_enum_dapm_ctl_put._rs.68 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_enum_dapm_ctl_put._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_dapm_ctl_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_dapm_ctl_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_dapm_ctl_get._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_dapm_ctl_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_dapm_ctl_put._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbcodec_mixer_dapm_ctl_put._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_widgets to i32), i32 4500, i32 5632, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_widget_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_widget_event._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_widget_event._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_map_widgetname._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_tplg_process_routes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_tplg_process_routes._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbaudio_tplg_process_routes._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gbaudio_tplg_create_widget to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gbaudio_tplg_parse_data(ptr noundef %module, ptr noundef %tplg_data) local_unnamed_addr #0 align 64 {
entry:
  %w_size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tplg_data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @gbaudio_tplg_process_header(ptr noundef %module, ptr noundef nonnull %tplg_data)
  %control_offset = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 30
  %0 = ptrtoint ptr %control_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %control_offset, align 4
  %2 = inttoptr i32 %1 to ptr
  %call4 = tail call fastcc i32 @gbaudio_tplg_process_kcontrols(ptr noundef %module, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %call4) #13
  br label %cleanup

do.body12:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_parse_data, %if.then17)) #10
          to label %do.end21 [label %if.then17], !srcloc !245

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug260, ptr noundef %6, ptr noundef nonnull @.str.9) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body12
  %widget_offset = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 29
  %7 = ptrtoint ptr %widget_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %widget_offset, align 4
  %9 = inttoptr i32 %8 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w_size.i) #10
  %10 = ptrtoint ptr %w_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %w_size.i, align 4, !annotation !246
  %num_dapm_widgets.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 26
  %11 = ptrtoint ptr %num_dapm_widgets.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_dapm_widgets.i, align 4
  %mul.i = mul i32 %12, 180
  %13 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %module, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %mul.i, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %gbaudio_tplg_process_widgets.exit.thread122, label %for.cond.preheader.i

gbaudio_tplg_process_widgets.exit.thread122:      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w_size.i) #10
  br label %do.end27

for.cond.preheader.i:                             ; preds = %do.end21
  %15 = ptrtoint ptr %num_dapm_widgets.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_dapm_widgets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp84.i = icmp sgt i32 %16, 0
  br i1 %cmp84.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.gbaudio_tplg_process_widgets.exit.thread_crit_edge

for.cond.preheader.i.gbaudio_tplg_process_widgets.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gbaudio_tplg_process_widgets.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %widget_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.086.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %list_add.exit.i.for.body.i_crit_edge ]
  %curr.085.i = phi ptr [ %9, %for.body.lr.ph.i ], [ %add.ptr.i, %list_add.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_soc_dapm_widget, ptr %call.i.i, i32 %i.086.i
  %call2.i = call fastcc i32 @gbaudio_tplg_create_widget(ptr noundef %module, ptr noundef %arrayidx.i, ptr noundef %curr.085.i, ptr noundef nonnull %w_size.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %17 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %module, align 4
  br i1 %tobool3.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %type.i = getelementptr inbounds %struct.gb_audio_widget, ptr %curr.085.i, i32 0, i32 3
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type.i, align 1
  %conv.i = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef %curr.085.i, i32 noundef %conv.i) #13
  br label %error.i

if.end6.i:                                        ; preds = %for.body.i
  %call.i78.i = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 16, i32 noundef 3520) #10
  %tobool9.not.i = icmp eq ptr %call.i78.i, null
  br i1 %tobool9.not.i, label %if.end6.i.error.i_crit_edge, label %if.end11.i

if.end6.i.error.i_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.i

if.end11.i:                                       ; preds = %if.end6.i
  %id.i = getelementptr inbounds %struct.gb_audio_widget, ptr %curr.085.i, i32 0, i32 2
  %21 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %id.i, align 1
  %23 = ptrtoint ptr %call.i78.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %call.i78.i, align 4
  %name15.i = getelementptr inbounds %struct.gbaudio_widget, ptr %call.i78.i, i32 0, i32 1
  %24 = ptrtoint ptr %name15.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %curr.085.i, ptr %name15.i, align 4
  %list.i = getelementptr inbounds %struct.gbaudio_widget, ptr %call.i78.i, i32 0, i32 2
  %25 = ptrtoint ptr %widget_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %widget_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %widget_list.i, ptr noundef %26) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.i.list_add.exit.i_crit_edge

if.end11.i.list_add.exit.i_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.gbaudio_widget, ptr %call.i78.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %widget_list.i, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %widget_list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list.i, ptr %widget_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end11.i.list_add.exit.i_crit_edge
  %31 = ptrtoint ptr %w_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %w_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %curr.085.i, i32 %32
  %inc.i = add nuw nsw i32 %i.086.i, 1
  %33 = ptrtoint ptr %num_dapm_widgets.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_dapm_widgets.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %34
  br i1 %cmp.i, label %list_add.exit.i.for.body.i_crit_edge, label %list_add.exit.i.gbaudio_tplg_process_widgets.exit.thread_crit_edge

list_add.exit.i.gbaudio_tplg_process_widgets.exit.thread_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gbaudio_tplg_process_widgets.exit.thread

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

gbaudio_tplg_process_widgets.exit.thread:         ; preds = %list_add.exit.i.gbaudio_tplg_process_widgets.exit.thread_crit_edge, %for.cond.preheader.i.gbaudio_tplg_process_widgets.exit.thread_crit_edge
  %dapm_widgets16.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 33
  %35 = ptrtoint ptr %dapm_widgets16.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i, ptr %dapm_widgets16.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w_size.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_parse_data, %if.then42)) #10
          to label %do.end46 [label %if.then42], !srcloc !245

error.i:                                          ; preds = %if.end6.i.error.i_crit_edge, %do.end.i
  %ret.0.i = phi i32 [ %call2.i, %do.end.i ], [ -12, %if.end6.i.error.i_crit_edge ]
  %36 = ptrtoint ptr %widget_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %widget_list.i, align 4
  %cmp27.not87.i = icmp eq ptr %37, %widget_list.i
  br i1 %cmp27.not87.i, label %gbaudio_tplg_process_widgets.exit.thread126, label %error.i.for.body29.i_crit_edge

error.i.for.body29.i_crit_edge:                   ; preds = %error.i
  br label %for.body29.i

gbaudio_tplg_process_widgets.exit.thread126:      ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %module, align 4
  tail call void @devm_kfree(ptr noundef %39, ptr noundef nonnull %call.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w_size.i) #10
  br label %do.end27

for.body29.i:                                     ; preds = %list_del.exit.i.for.body29.i_crit_edge, %error.i.for.body29.i_crit_edge
  %.pn.in88.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body29.i_crit_edge ], [ %37, %error.i.for.body29.i_crit_edge ]
  %widget.0.i = getelementptr i8, ptr %.pn.in88.i, i32 -8
  %40 = ptrtoint ptr %.pn.in88.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i = load ptr, ptr %.pn.in88.i, align 4
  %call.i.i79.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in88.i) #10
  br i1 %call.i.i79.i, label %if.end.i.i80.i, label %for.body29.i.list_del.exit.i_crit_edge

for.body29.i.list_del.exit.i_crit_edge:           ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i80.i:                                   ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in88.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %.pn.in88.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %.pn.in88.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i80.i, %for.body29.i.list_del.exit.i_crit_edge
  %47 = ptrtoint ptr %.pn.in88.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in88.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in88.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %module, align 4
  tail call void @devm_kfree(ptr noundef %50, ptr noundef %widget.0.i) #10
  %cmp27.not.i = icmp eq ptr %.pn.i, %widget_list.i
  br i1 %cmp27.not.i, label %gbaudio_tplg_process_widgets.exit, label %list_del.exit.i.for.body29.i_crit_edge

list_del.exit.i.for.body29.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29.i

gbaudio_tplg_process_widgets.exit:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %module, align 4
  tail call void @devm_kfree(ptr noundef %52, ptr noundef nonnull %call.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w_size.i) #10
  br label %do.end27

do.end27:                                         ; preds = %gbaudio_tplg_process_widgets.exit, %gbaudio_tplg_process_widgets.exit.thread126, %gbaudio_tplg_process_widgets.exit.thread122
  %retval.0.i118125 = phi i32 [ -12, %gbaudio_tplg_process_widgets.exit.thread122 ], [ %ret.0.i, %gbaudio_tplg_process_widgets.exit ], [ %ret.0.i, %gbaudio_tplg_process_widgets.exit.thread126 ]
  %53 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i118125) #13
  br label %cleanup

if.then42:                                        ; preds = %gbaudio_tplg_process_widgets.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug261, ptr noundef %56, ptr noundef nonnull @.str.13) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %gbaudio_tplg_process_widgets.exit.thread
  %route_offset = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 31
  %57 = ptrtoint ptr %route_offset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %route_offset, align 4
  %59 = inttoptr i32 %58 to ptr
  %call47 = tail call fastcc i32 @gbaudio_tplg_process_routes(ptr noundef %module, ptr noundef %59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body55, label %do.end52

do.end52:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.15, i32 noundef %call47) #13
  br label %cleanup

do.body55:                                        ; preds = %do.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_parse_data, %if.then67)) #10
          to label %do.end71 [label %if.then67], !srcloc !245

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug262, ptr noundef %63, ptr noundef nonnull @.str.17) #10
  br label %do.end71

do.end71:                                         ; preds = %if.then67, %do.body55
  %jack_type72 = getelementptr inbounds %struct.gb_audio_topology, ptr %tplg_data, i32 0, i32 8
  %64 = ptrtoint ptr %jack_type72 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %jack_type72, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool73.not = icmp eq i32 %65, 0
  br i1 %tobool73.not, label %do.end71.cleanup_crit_edge, label %if.then74

do.end71.cleanup_crit_edge:                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then74:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %and = and i32 %66, 65535
  %jack_mask = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 16
  %67 = ptrtoint ptr %jack_mask to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and, ptr %jack_mask, align 4
  %and75 = and i32 %66, -65536
  %button_mask = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 17
  %68 = ptrtoint ptr %button_mask to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and75, ptr %button_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %do.end71.cleanup_crit_edge, %do.end52, %do.end27, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end9 ], [ %retval.0.i118125, %do.end27 ], [ %call47, %do.end52 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then74 ], [ 0, %do.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gbaudio_tplg_process_header(ptr nocapture noundef %module, ptr noundef %tplg_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_controls = getelementptr inbounds %struct.gb_audio_topology, ptr %tplg_data, i32 0, i32 1
  %0 = ptrtoint ptr %num_controls to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_controls, align 1
  %conv = zext i8 %1 to i32
  %num_controls1 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 25
  %2 = ptrtoint ptr %num_controls1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %num_controls1, align 4
  %num_widgets = getelementptr inbounds %struct.gb_audio_topology, ptr %tplg_data, i32 0, i32 2
  %3 = ptrtoint ptr %num_widgets to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_widgets, align 1
  %conv2 = zext i8 %4 to i32
  %num_dapm_widgets = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 26
  %5 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv2, ptr %num_dapm_widgets, align 4
  %num_routes = getelementptr inbounds %struct.gb_audio_topology, ptr %tplg_data, i32 0, i32 3
  %6 = ptrtoint ptr %num_routes to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_routes, align 1
  %conv3 = zext i8 %7 to i32
  %num_dapm_routes = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 27
  %8 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv3, ptr %num_dapm_routes, align 4
  %data = getelementptr inbounds %struct.gb_audio_topology, ptr %tplg_data, i32 0, i32 9
  %9 = ptrtoint ptr %data to i32
  %dai_offset = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 28
  %10 = ptrtoint ptr %dai_offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dai_offset, align 4
  %size_dais = getelementptr inbounds %struct.gb_audio_topology, ptr %tplg_data, i32 0, i32 4
  %11 = ptrtoint ptr %size_dais to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %size_dais, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %add = add i32 %13, %9
  %control_offset = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 30
  %14 = ptrtoint ptr %control_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %control_offset, align 4
  %size_controls = getelementptr inbounds %struct.gb_audio_topology, ptr %tplg_data, i32 0, i32 5
  %15 = ptrtoint ptr %size_controls to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %size_controls, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add6 = add i32 %17, %add
  %widget_offset = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 29
  %18 = ptrtoint ptr %widget_offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add6, ptr %widget_offset, align 4
  %size_widgets = getelementptr inbounds %struct.gb_audio_topology, ptr %tplg_data, i32 0, i32 6
  %19 = ptrtoint ptr %size_widgets to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %size_widgets, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add8 = add i32 %21, %add6
  %route_offset = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 31
  %22 = ptrtoint ptr %route_offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add8, ptr %route_offset, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_process_header, %if.then)) #10
          to label %do.body12 [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %module, align 4
  %25 = ptrtoint ptr %dai_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dai_offset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug256, ptr noundef %24, ptr noundef nonnull @.str.19, i32 noundef %26) #10
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_process_header, %if.then24)) #10
          to label %do.body29 [label %if.then24], !srcloc !245

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %module, align 4
  %29 = ptrtoint ptr %control_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %control_offset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug257, ptr noundef %28, ptr noundef nonnull @.str.20, i32 noundef %30) #10
  br label %do.body29

do.body29:                                        ; preds = %if.then24, %do.body12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_process_header, %if.then41)) #10
          to label %do.body46 [label %if.then41], !srcloc !245

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %module, align 4
  %33 = ptrtoint ptr %widget_offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %widget_offset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug258, ptr noundef %32, ptr noundef nonnull @.str.21, i32 noundef %34) #10
  br label %do.body46

do.body46:                                        ; preds = %if.then41, %do.body29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_process_header, %if.then58)) #10
          to label %do.end62 [label %if.then58], !srcloc !245

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %module, align 4
  %37 = ptrtoint ptr %route_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %route_offset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug259, ptr noundef %36, ptr noundef nonnull @.str.22, i32 noundef %38) #10
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %do.body46
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbaudio_tplg_process_kcontrols(ptr noundef %module, ptr noundef %controls) unnamed_addr #0 align 64 {
entry:
  %temp_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %temp_name) #10
  %num_controls = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 25
  %0 = call ptr @memset(ptr %temp_name, i32 255, i32 32)
  %1 = ptrtoint ptr %num_controls to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_controls, align 4
  %mul = mul i32 %2, 48
  %3 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %mul, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup83_crit_edge, label %for.cond.preheader

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83

for.cond.preheader:                               ; preds = %entry
  %5 = ptrtoint ptr %num_controls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_controls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp161 = icmp sgt i32 %6, 0
  br i1 %cmp161, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev_id = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 1
  %ctl_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 37
  br label %for.body

for.body:                                         ; preds = %do.end55.for.body_crit_edge, %for.body.lr.ph
  %i.0165 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end55.for.body_crit_edge ]
  %curr.0162 = phi ptr [ %controls, %for.body.lr.ph ], [ %add.ptr, %do.end55.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_kcontrol_new, ptr %call.i, i32 %i.0165
  %call2 = call fastcc i32 @gbaudio_tplg_create_kcontrol(ptr noundef %module, ptr noundef %arrayidx, ptr noundef %curr.0162)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %7 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %module, align 4
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %iface = getelementptr inbounds %struct.gb_audio_control, ptr %curr.0162, i32 0, i32 2
  %9 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iface, align 1
  %conv = zext i8 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef %curr.0162, i32 noundef %conv) #13
  br label %error

if.end6:                                          ; preds = %for.body
  %call.i141 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 28, i32 noundef 3520) #10
  %tobool9.not = icmp eq ptr %call.i141, null
  br i1 %tobool9.not, label %if.end6.error_crit_edge, label %if.end11

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end11:                                         ; preds = %if.end6
  %id = getelementptr inbounds %struct.gb_audio_control, ptr %curr.0162, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id, align 1
  %13 = ptrtoint ptr %call.i141 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %call.i141, align 4
  %call16 = call i32 @strscpy(ptr noundef nonnull %temp_name, ptr noundef %curr.0162, i32 noundef 32) #10
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_id, align 4
  %call20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %curr.0162, i32 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %15, ptr noundef nonnull %temp_name)
  %name23 = getelementptr inbounds %struct.gbaudio_control, ptr %call.i141, i32 0, i32 1
  %16 = ptrtoint ptr %name23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %curr.0162, ptr %name23, align 4
  %info = getelementptr inbounds %struct.gb_audio_control, ptr %curr.0162, i32 0, i32 7
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %info, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp25 = icmp eq i8 %18, 3
  br i1 %cmp25, label %if.then27, label %if.end11.if.end38_crit_edge

if.end11.if.end38_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then27:                                        ; preds = %if.end11
  %value = getelementptr inbounds %struct.gb_audio_control, ptr %curr.0162, i32 0, i32 7, i32 2
  %names_length = getelementptr inbounds %struct.gb_audio_enumerated, ptr %value, i32 0, i32 1
  %19 = ptrtoint ptr %names_length to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %names_length, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %conv30 = zext i16 %21 to i32
  %add31 = add nuw nsw i32 %conv30, 57
  %22 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %value, align 1
  %24 = call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #10
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %if.then27.gb_generate_enum_strings.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !247

if.then27.gb_generate_enum_strings.exit.thread_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_generate_enum_strings.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.then27
  %27 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %module, align 4
  %29 = extractvalue { i32, i1 } %25, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef %29, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge, label %if.end.i

devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_generate_enum_strings.exit.thread

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp19.not.i = icmp eq i32 %23, 0
  br i1 %cmp19.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end.i
  %names.i = getelementptr inbounds %struct.gb_audio_enumerated, ptr %value, i32 0, i32 2
  %umax.i = call i32 @llvm.umax.i32(i32 %24, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %data.021.i = phi ptr [ %incdec.ptr.i, %while.end.i.for.body.i_crit_edge ], [ %names.i, %for.body.preheader.i ]
  %i.020.i = phi i32 [ %inc.i, %while.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr ptr, ptr %call5.i.i.i, i32 %i.020.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %data.021.i, ptr %arrayidx.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body.i
  %data.1.i = phi ptr [ %data.021.i, %for.body.i ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %31 = ptrtoint ptr %data.1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data.1.i, align 1
  %cmp2.not.i = icmp eq i8 %32, 0
  %incdec.ptr.i = getelementptr i8, ptr %data.1.i, i32 1
  br i1 %cmp2.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %while.end.i.cleanup_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

gb_generate_enum_strings.exit.thread:             ; preds = %devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge, %if.then27.gb_generate_enum_strings.exit.thread_crit_edge
  %texts146 = getelementptr inbounds %struct.gbaudio_control, ptr %call.i141, i32 0, i32 3
  %33 = ptrtoint ptr %texts146 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %texts146, align 4
  br label %error

cleanup:                                          ; preds = %while.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %texts = getelementptr inbounds %struct.gbaudio_control, ptr %call.i141, i32 0, i32 3
  %34 = ptrtoint ptr %texts to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i.i.i, ptr %texts, align 4
  %35 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %value, align 1
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %items37 = getelementptr inbounds %struct.gbaudio_control, ptr %call.i141, i32 0, i32 4
  %38 = ptrtoint ptr %items37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %items37, align 4
  br label %if.end38

if.end38:                                         ; preds = %cleanup, %if.end11.if.end38_crit_edge
  %csize.0 = phi i32 [ %add31, %cleanup ], [ 75, %if.end11.if.end38_crit_edge ]
  %list = getelementptr inbounds %struct.gbaudio_control, ptr %call.i141, i32 0, i32 5
  %39 = ptrtoint ptr %ctl_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctl_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %ctl_list, ptr noundef %40) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end38.list_add.exit_crit_edge

if.end38.list_add.exit_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %list, ptr %prev1.i.i, align 4
  %42 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gbaudio_control, ptr %call.i141, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ctl_list, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %ctl_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %list, ptr %ctl_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end38.list_add.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_process_kcontrols.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_process_kcontrols, %if.then44)) #10
          to label %do.end55 [label %if.then44], !srcloc !245

if.then44:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %module, align 4
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %id, align 1
  %conv47 = zext i8 %48 to i32
  %49 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %info, align 1
  %conv52 = zext i8 %50 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_process_kcontrols.__UNIQUE_ID_ddebug254, ptr noundef %46, ptr noundef nonnull @.str.26, i32 noundef %conv47, ptr noundef %curr.0162, i32 noundef %conv52) #10
  br label %do.end55

do.end55:                                         ; preds = %if.then44, %list_add.exit
  %add.ptr = getelementptr i8, ptr %curr.0162, i32 %csize.0
  %inc = add nuw nsw i32 %i.0165, 1
  %51 = ptrtoint ptr %num_controls to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_controls, align 4
  %cmp = icmp slt i32 %inc, %52
  br i1 %cmp, label %do.end55.for.body_crit_edge, label %do.end55.for.end_crit_edge

do.end55.for.end_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end55.for.body_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %do.end55.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %controls56 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 32
  %53 = ptrtoint ptr %controls56 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %controls56, align 4
  br label %cleanup83

error:                                            ; preds = %gb_generate_enum_strings.exit.thread, %if.end6.error_crit_edge, %do.end
  %ret.1 = phi i32 [ %call2, %do.end ], [ -12, %gb_generate_enum_strings.exit.thread ], [ -12, %if.end6.error_crit_edge ]
  %54 = ptrtoint ptr %ctl_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ctl_list, align 4
  %cmp68.not166 = icmp eq ptr %55, %ctl_list
  br i1 %cmp68.not166, label %error.for.end81_crit_edge, label %error.for.body72_crit_edge

error.for.body72_crit_edge:                       ; preds = %error
  br label %for.body72

error.for.end81_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end81

for.body72:                                       ; preds = %list_del.exit.for.body72_crit_edge, %error.for.body72_crit_edge
  %.pn.in167 = phi ptr [ %.pn, %list_del.exit.for.body72_crit_edge ], [ %55, %error.for.body72_crit_edge ]
  %control.0 = getelementptr i8, ptr %.pn.in167, i32 -20
  %56 = ptrtoint ptr %.pn.in167 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn = load ptr, ptr %.pn.in167, align 4
  %call.i.i143 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in167) #10
  br i1 %call.i.i143, label %if.end.i.i144, label %for.body72.list_del.exit_crit_edge

for.body72.list_del.exit_crit_edge:               ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i144:                                    ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in167, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i, align 4
  %59 = ptrtoint ptr %.pn.in167 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %.pn.in167, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i144, %for.body72.list_del.exit_crit_edge
  %63 = ptrtoint ptr %.pn.in167 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in167, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in167, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %65 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %module, align 4
  call void @devm_kfree(ptr noundef %66, ptr noundef %control.0) #10
  %cmp68.not = icmp eq ptr %.pn, %ctl_list
  br i1 %cmp68.not, label %list_del.exit.for.end81_crit_edge, label %list_del.exit.for.body72_crit_edge

list_del.exit.for.body72_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body72

list_del.exit.for.end81_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end81

for.end81:                                        ; preds = %list_del.exit.for.end81_crit_edge, %error.for.end81_crit_edge
  %67 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %module, align 4
  call void @devm_kfree(ptr noundef %68, ptr noundef nonnull %call.i) #10
  br label %cleanup83

cleanup83:                                        ; preds = %for.end81, %for.end, %entry.cleanup83_crit_edge
  %retval.0 = phi i32 [ %ret.1, %for.end81 ], [ 0, %for.end ], [ -12, %entry.cleanup83_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %temp_name) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbaudio_tplg_process_routes(ptr noundef %module, ptr nocapture noundef readonly %routes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_dapm_routes = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 27
  %0 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_dapm_routes, align 4
  %mul = mul i32 %1, 52
  %2 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %mul, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dapm_routes1 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 34
  %4 = ptrtoint ptr %dapm_routes1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %dapm_routes1, align 4
  %5 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_dapm_routes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp175 = icmp sgt i32 %6, 0
  br i1 %cmp175, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %widget_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 36
  %ctl_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 37
  %widget_ctl_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 38
  br label %for.body

for.body:                                         ; preds = %do.end68.for.body_crit_edge, %for.body.lr.ph
  %i.0180 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end68.for.body_crit_edge ]
  %curr.0179 = phi ptr [ %routes, %for.body.lr.ph ], [ %incdec.ptr69, %do.end68.for.body_crit_edge ]
  %dapm_routes.0176 = phi ptr [ %call.i, %for.body.lr.ph ], [ %incdec.ptr, %do.end68.for.body_crit_edge ]
  %destination_id = getelementptr inbounds %struct.gb_audio_route, ptr %curr.0179, i32 0, i32 1
  %7 = ptrtoint ptr %destination_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %destination_id, align 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %.pn.in.i = phi ptr [ %widget_list.i, %for.body ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %widget_list.i
  br i1 %cmp.not.i, label %gbaudio_map_widgetid.exit.thread, label %for.body.i

gbaudio_map_widgetid.exit.thread:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dapm_routes.0176 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dapm_routes.0176, align 4
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %widget.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %11 = ptrtoint ptr %widget.0.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %widget.0.i, align 4
  %cmp3.i = icmp eq i8 %12, %8
  br i1 %cmp3.i, label %gbaudio_map_widgetid.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

gbaudio_map_widgetid.exit:                        ; preds = %for.body.i
  %name.i = getelementptr i8, ptr %.pn.i, i32 -4
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  %15 = ptrtoint ptr %dapm_routes.0176 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dapm_routes.0176, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %gbaudio_map_widgetid.exit.do.end_crit_edge, label %if.end12

gbaudio_map_widgetid.exit.do.end_crit_edge:       ; preds = %gbaudio_map_widgetid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %gbaudio_map_widgetid.exit.do.end_crit_edge, %gbaudio_map_widgetid.exit.thread
  %16 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %module, align 4
  %18 = ptrtoint ptr %curr.0179 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %curr.0179, align 1
  %conv = zext i8 %19 to i32
  %conv9 = zext i8 %8 to i32
  %control_id = getelementptr inbounds %struct.gb_audio_route, ptr %curr.0179, i32 0, i32 2
  %20 = ptrtoint ptr %control_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %control_id, align 1
  %conv10 = zext i8 %21 to i32
  %index = getelementptr inbounds %struct.gb_audio_route, ptr %curr.0179, i32 0, i32 3
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index, align 1
  %conv11 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.88, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11) #13
  br label %error

if.end12:                                         ; preds = %gbaudio_map_widgetid.exit
  %24 = ptrtoint ptr %curr.0179 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %curr.0179, align 1
  br label %for.cond.i123

for.cond.i123:                                    ; preds = %for.body.i126.for.cond.i123_crit_edge, %if.end12
  %.pn.in.i120 = phi ptr [ %widget_list.i, %if.end12 ], [ %.pn.i121, %for.body.i126.for.cond.i123_crit_edge ]
  %26 = ptrtoint ptr %.pn.in.i120 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i121 = load ptr, ptr %.pn.in.i120, align 4
  %cmp.not.i122 = icmp eq ptr %.pn.i121, %widget_list.i
  br i1 %cmp.not.i122, label %gbaudio_map_widgetid.exit130.thread, label %for.body.i126

gbaudio_map_widgetid.exit130.thread:              ; preds = %for.cond.i123
  call void @__sanitizer_cov_trace_pc() #12
  %source140 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %dapm_routes.0176, i32 0, i32 2
  %27 = ptrtoint ptr %source140 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %source140, align 4
  br label %do.end20

for.body.i126:                                    ; preds = %for.cond.i123
  %widget.0.i124 = getelementptr i8, ptr %.pn.i121, i32 -8
  %28 = ptrtoint ptr %widget.0.i124 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %widget.0.i124, align 4
  %cmp3.i125 = icmp eq i8 %29, %25
  br i1 %cmp3.i125, label %gbaudio_map_widgetid.exit130, label %for.body.i126.for.cond.i123_crit_edge

for.body.i126.for.cond.i123_crit_edge:            ; preds = %for.body.i126
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i123

gbaudio_map_widgetid.exit130:                     ; preds = %for.body.i126
  %name.i127 = getelementptr i8, ptr %.pn.i121, i32 -4
  %30 = ptrtoint ptr %name.i127 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i127, align 4
  %source = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %dapm_routes.0176, i32 0, i32 2
  %32 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %source, align 4
  %tobool16.not = icmp eq ptr %31, null
  br i1 %tobool16.not, label %gbaudio_map_widgetid.exit130.do.end20_crit_edge, label %if.end30

gbaudio_map_widgetid.exit130.do.end20_crit_edge:  ; preds = %gbaudio_map_widgetid.exit130
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

do.end20:                                         ; preds = %gbaudio_map_widgetid.exit130.do.end20_crit_edge, %gbaudio_map_widgetid.exit130.thread
  %33 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %module, align 4
  %conv23 = zext i8 %25 to i32
  %conv25 = zext i8 %8 to i32
  %control_id26 = getelementptr inbounds %struct.gb_audio_route, ptr %curr.0179, i32 0, i32 2
  %35 = ptrtoint ptr %control_id26 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %control_id26, align 1
  %conv27 = zext i8 %36 to i32
  %index28 = getelementptr inbounds %struct.gb_audio_route, ptr %curr.0179, i32 0, i32 3
  %37 = ptrtoint ptr %index28 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %index28, align 1
  %conv29 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.91, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29) #13
  br label %error

if.end30:                                         ; preds = %gbaudio_map_widgetid.exit130
  %control_id31 = getelementptr inbounds %struct.gb_audio_route, ptr %curr.0179, i32 0, i32 2
  %39 = ptrtoint ptr %control_id31 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %control_id31, align 1
  %index32 = getelementptr inbounds %struct.gb_audio_route, ptr %curr.0179, i32 0, i32 3
  %41 = ptrtoint ptr %index32 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %index32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %cmp.i = icmp eq i8 %40, -1
  br i1 %cmp.i, label %gbaudio_map_controlid.exit.thread, label %if.end30.for.cond.i133_crit_edge

if.end30.for.cond.i133_crit_edge:                 ; preds = %if.end30
  br label %for.cond.i133

gbaudio_map_controlid.exit.thread:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %control143 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %dapm_routes.0176, i32 0, i32 1
  %43 = ptrtoint ptr %control143 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %control143, align 4
  br label %do.body54

for.cond.i133:                                    ; preds = %for.body.i134.for.cond.i133_crit_edge, %if.end30.for.cond.i133_crit_edge
  %.pn.in.i131 = phi ptr [ %.pn.i132, %for.body.i134.for.cond.i133_crit_edge ], [ %ctl_list.i, %if.end30.for.cond.i133_crit_edge ]
  %44 = ptrtoint ptr %.pn.in.i131 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i132 = load ptr, ptr %.pn.in.i131, align 4
  %cmp3.not.i = icmp eq ptr %.pn.i132, %ctl_list.i
  br i1 %cmp3.not.i, label %for.cond.i133.for.cond30.i_crit_edge, label %for.body.i134

for.cond.i133.for.cond30.i_crit_edge:             ; preds = %for.cond.i133
  br label %for.cond30.i

for.body.i134:                                    ; preds = %for.cond.i133
  %control.0.i = getelementptr i8, ptr %.pn.i132, i32 -20
  %45 = ptrtoint ptr %control.0.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %control.0.i, align 4
  %cmp7.i = icmp eq i8 %46, %40
  br i1 %cmp7.i, label %if.then9.i, label %for.body.i134.for.cond.i133_crit_edge

for.body.i134.for.cond.i133_crit_edge:            ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i133

if.then9.i:                                       ; preds = %for.body.i134
  %conv10.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp11.i = icmp eq i8 %42, -1
  br i1 %cmp11.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i135 = getelementptr i8, ptr %.pn.i132, i32 -16
  br label %gbaudio_map_controlid.exit

if.end14.i:                                       ; preds = %if.then9.i
  %items.i = getelementptr i8, ptr %.pn.i132, i32 -4
  %47 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %items.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv10.i)
  %cmp16.not.i = icmp sgt i32 %48, %conv10.i
  br i1 %cmp16.not.i, label %if.end19.i, label %if.end14.i.gbaudio_map_controlid.exit.thread210_crit_edge

if.end14.i.gbaudio_map_controlid.exit.thread210_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gbaudio_map_controlid.exit.thread210

if.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %texts.i = getelementptr i8, ptr %.pn.i132, i32 -8
  %49 = ptrtoint ptr %texts.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %texts.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %50, i32 %conv10.i
  br label %gbaudio_map_controlid.exit

for.cond30.i:                                     ; preds = %for.body36.i.for.cond30.i_crit_edge, %for.cond.i133.for.cond30.i_crit_edge
  %.pn87.in.i = phi ptr [ %.pn87.i, %for.body36.i.for.cond30.i_crit_edge ], [ %widget_ctl_list.i, %for.cond.i133.for.cond30.i_crit_edge ]
  %51 = ptrtoint ptr %.pn87.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn87.i = load ptr, ptr %.pn87.in.i, align 4
  %cmp33.not.i = icmp eq ptr %.pn87.i, %widget_ctl_list.i
  br i1 %cmp33.not.i, label %for.cond30.i.gbaudio_map_controlid.exit.thread210_crit_edge, label %for.body36.i

for.cond30.i.gbaudio_map_controlid.exit.thread210_crit_edge: ; preds = %for.cond30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gbaudio_map_controlid.exit.thread210

for.body36.i:                                     ; preds = %for.cond30.i
  %control.1.i = getelementptr i8, ptr %.pn87.i, i32 -20
  %52 = ptrtoint ptr %control.1.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %control.1.i, align 4
  %cmp40.i = icmp eq i8 %53, %40
  br i1 %cmp40.i, label %if.then42.i, label %for.body36.i.for.cond30.i_crit_edge

for.body36.i.for.cond30.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond30.i

if.then42.i:                                      ; preds = %for.body36.i
  %conv43.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp44.i = icmp eq i8 %42, -1
  br i1 %cmp44.i, label %if.then46.i, label %if.end48.i

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  %name47.i = getelementptr i8, ptr %.pn87.i, i32 -16
  br label %gbaudio_map_controlid.exit

if.end48.i:                                       ; preds = %if.then42.i
  %items50.i = getelementptr i8, ptr %.pn87.i, i32 -4
  %54 = ptrtoint ptr %items50.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %items50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv43.i)
  %cmp51.not.i = icmp sgt i32 %55, %conv43.i
  br i1 %cmp51.not.i, label %if.end54.i, label %if.end48.i.gbaudio_map_controlid.exit.thread210_crit_edge

if.end48.i.gbaudio_map_controlid.exit.thread210_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gbaudio_map_controlid.exit.thread210

if.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  %texts55.i = getelementptr i8, ptr %.pn87.i, i32 -8
  %56 = ptrtoint ptr %texts55.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %texts55.i, align 4
  %arrayidx57.i = getelementptr ptr, ptr %57, i32 %conv43.i
  br label %gbaudio_map_controlid.exit

gbaudio_map_controlid.exit.thread210:             ; preds = %if.end48.i.gbaudio_map_controlid.exit.thread210_crit_edge, %for.cond30.i.gbaudio_map_controlid.exit.thread210_crit_edge, %if.end14.i.gbaudio_map_controlid.exit.thread210_crit_edge
  %control212 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %dapm_routes.0176, i32 0, i32 1
  %58 = ptrtoint ptr %control212 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %control212, align 4
  br label %do.end43

gbaudio_map_controlid.exit:                       ; preds = %if.end54.i, %if.then46.i, %if.end19.i, %if.then13.i
  %arrayidx57.sink.i = phi ptr [ %arrayidx57.i, %if.end54.i ], [ %name47.i, %if.then46.i ], [ %arrayidx.i, %if.end19.i ], [ %name.i135, %if.then13.i ]
  %59 = ptrtoint ptr %arrayidx57.sink.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx57.sink.i, align 4
  %control = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %dapm_routes.0176, i32 0, i32 1
  %61 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %control, align 4
  %tobool39.not = icmp eq ptr %60, null
  br i1 %tobool39.not, label %gbaudio_map_controlid.exit.do.end43_crit_edge, label %gbaudio_map_controlid.exit.do.body54_crit_edge

gbaudio_map_controlid.exit.do.body54_crit_edge:   ; preds = %gbaudio_map_controlid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

gbaudio_map_controlid.exit.do.end43_crit_edge:    ; preds = %gbaudio_map_controlid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

do.end43:                                         ; preds = %gbaudio_map_controlid.exit.do.end43_crit_edge, %gbaudio_map_controlid.exit.thread210
  %conv35 = zext i8 %40 to i32
  %62 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %module, align 4
  %conv46 = zext i8 %25 to i32
  %conv48 = zext i8 %8 to i32
  %conv52 = zext i8 %42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.94, i32 noundef %conv46, i32 noundef %conv48, i32 noundef %conv35, i32 noundef %conv52) #13
  br label %error

do.body54:                                        ; preds = %gbaudio_map_controlid.exit.do.body54_crit_edge, %gbaudio_map_controlid.exit.thread
  %control148 = phi ptr [ %control143, %gbaudio_map_controlid.exit.thread ], [ %control, %gbaudio_map_controlid.exit.do.body54_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_process_routes.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_process_routes, %if.then59)) #10
          to label %do.end68 [label %if.then59], !srcloc !245

if.then59:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %module, align 4
  %66 = ptrtoint ptr %dapm_routes.0176 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dapm_routes.0176, align 4
  %68 = ptrtoint ptr %control148 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %control148, align 4
  %tobool63.not = icmp eq ptr %69, null
  %spec.select = select i1 %tobool63.not, ptr @.str.97, ptr %69
  %70 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %source, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_process_routes.__UNIQUE_ID_ddebug255, ptr noundef %65, ptr noundef nonnull @.str.96, ptr noundef %67, ptr noundef nonnull %spec.select, ptr noundef %71) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then59, %do.body54
  %incdec.ptr = getelementptr %struct.snd_soc_dapm_route, ptr %dapm_routes.0176, i32 1
  %incdec.ptr69 = getelementptr %struct.gb_audio_route, ptr %curr.0179, i32 1
  %inc = add nuw nsw i32 %i.0180, 1
  %72 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_dapm_routes, align 4
  %cmp = icmp slt i32 %inc, %73
  br i1 %cmp, label %do.end68.for.body_crit_edge, label %do.end68.cleanup_crit_edge

do.end68.cleanup_crit_edge:                       ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end68.for.body_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

error:                                            ; preds = %do.end43, %do.end20, %do.end
  %74 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %module, align 4
  %76 = ptrtoint ptr %dapm_routes1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dapm_routes1, align 4
  tail call void @devm_kfree(ptr noundef %75, ptr noundef %77) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end68.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gbaudio_tplg_release(ptr noundef readonly %module) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %topology = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 40
  %0 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %topology, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctl_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 37
  %2 = ptrtoint ptr %ctl_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_list, align 4
  %cmp.not130 = icmp eq ptr %3, %ctl_list
  br i1 %cmp.not130, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in131 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %control.0 = getelementptr i8, ptr %.pn.in131, i32 -20
  %4 = ptrtoint ptr %.pn.in131 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in131, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in131) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in131, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in131 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in131, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in131 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in131, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in131, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %module, align 4
  tail call void @devm_kfree(ptr noundef %14, ptr noundef %control.0) #10
  %cmp.not = icmp eq ptr %.pn, %ctl_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %controls = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 32
  %15 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %controls, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %for.end.if.end17_crit_edge, label %if.then14

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %module, align 4
  tail call void @devm_kfree(ptr noundef %18, ptr noundef nonnull %16) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %for.end.if.end17_crit_edge
  %widget_ctl_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 38
  %19 = ptrtoint ptr %widget_ctl_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %widget_ctl_list, align 4
  %cmp30.not133 = icmp eq ptr %20, %widget_ctl_list
  br i1 %cmp30.not133, label %if.end17.for.end41_crit_edge, label %if.end17.for.body32_crit_edge

if.end17.for.body32_crit_edge:                    ; preds = %if.end17
  br label %for.body32

if.end17.for.end41_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41

for.body32:                                       ; preds = %list_del.exit123.for.body32_crit_edge, %if.end17.for.body32_crit_edge
  %.pn113.in134 = phi ptr [ %.pn113, %list_del.exit123.for.body32_crit_edge ], [ %20, %if.end17.for.body32_crit_edge ]
  %control.1 = getelementptr i8, ptr %.pn113.in134, i32 -20
  %21 = ptrtoint ptr %.pn113.in134 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn113 = load ptr, ptr %.pn113.in134, align 4
  %call.i.i118 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn113.in134) #10
  br i1 %call.i.i118, label %if.end.i.i121, label %for.body32.list_del.exit123_crit_edge

for.body32.list_del.exit123_crit_edge:            ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit123

if.end.i.i121:                                    ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i119 = getelementptr inbounds %struct.list_head, ptr %.pn113.in134, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i119 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i119, align 4
  %24 = ptrtoint ptr %.pn113.in134 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn113.in134, align 4
  %prev1.i.i.i120 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i120, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit123

list_del.exit123:                                 ; preds = %if.end.i.i121, %for.body32.list_del.exit123_crit_edge
  %28 = ptrtoint ptr %.pn113.in134 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn113.in134, align 4
  %prev.i122 = getelementptr inbounds %struct.list_head, ptr %.pn113.in134, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i122 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i122, align 4
  %30 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %module, align 4
  tail call void @devm_kfree(ptr noundef %31, ptr noundef %control.1) #10
  %cmp30.not = icmp eq ptr %.pn113, %widget_ctl_list
  br i1 %cmp30.not, label %list_del.exit123.for.end41_crit_edge, label %list_del.exit123.for.body32_crit_edge

list_del.exit123.for.body32_crit_edge:            ; preds = %list_del.exit123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

list_del.exit123.for.end41_crit_edge:             ; preds = %list_del.exit123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end41

for.end41:                                        ; preds = %list_del.exit123.for.end41_crit_edge, %if.end17.for.end41_crit_edge
  %widget_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 36
  %32 = ptrtoint ptr %widget_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %widget_list, align 4
  %cmp54.not136 = icmp eq ptr %33, %widget_list
  br i1 %cmp54.not136, label %for.end41.for.end65_crit_edge, label %for.end41.for.body56_crit_edge

for.end41.for.body56_crit_edge:                   ; preds = %for.end41
  br label %for.body56

for.end41.for.end65_crit_edge:                    ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end65

for.body56:                                       ; preds = %list_del.exit129.for.body56_crit_edge, %for.end41.for.body56_crit_edge
  %.pn114.in137 = phi ptr [ %.pn114, %list_del.exit129.for.body56_crit_edge ], [ %33, %for.end41.for.body56_crit_edge ]
  %widget.0 = getelementptr i8, ptr %.pn114.in137, i32 -8
  %34 = ptrtoint ptr %.pn114.in137 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn114 = load ptr, ptr %.pn114.in137, align 4
  %call.i.i124 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn114.in137) #10
  br i1 %call.i.i124, label %if.end.i.i127, label %for.body56.list_del.exit129_crit_edge

for.body56.list_del.exit129_crit_edge:            ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit129

if.end.i.i127:                                    ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i125 = getelementptr inbounds %struct.list_head, ptr %.pn114.in137, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i125 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i125, align 4
  %37 = ptrtoint ptr %.pn114.in137 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.pn114.in137, align 4
  %prev1.i.i.i126 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i126, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit129

list_del.exit129:                                 ; preds = %if.end.i.i127, %for.body56.list_del.exit129_crit_edge
  %41 = ptrtoint ptr %.pn114.in137 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn114.in137, align 4
  %prev.i128 = getelementptr inbounds %struct.list_head, ptr %.pn114.in137, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i128 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i128, align 4
  %43 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %module, align 4
  tail call void @devm_kfree(ptr noundef %44, ptr noundef %widget.0) #10
  %cmp54.not = icmp eq ptr %.pn114, %widget_list
  br i1 %cmp54.not, label %list_del.exit129.for.end65_crit_edge, label %list_del.exit129.for.body56_crit_edge

list_del.exit129.for.body56_crit_edge:            ; preds = %list_del.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body56

list_del.exit129.for.end65_crit_edge:             ; preds = %list_del.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end65

for.end65:                                        ; preds = %list_del.exit129.for.end65_crit_edge, %for.end41.for.end65_crit_edge
  %dapm_widgets = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 33
  %45 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dapm_widgets, align 4
  %tobool66.not = icmp eq ptr %46, null
  br i1 %tobool66.not, label %for.end65.if.end70_crit_edge, label %if.then67

for.end65.if.end70_crit_edge:                     ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then67:                                        ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %module, align 4
  tail call void @devm_kfree(ptr noundef %48, ptr noundef nonnull %46) #10
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %for.end65.if.end70_crit_edge
  %dapm_routes = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 34
  %49 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dapm_routes, align 4
  %tobool71.not = icmp eq ptr %50, null
  br i1 %tobool71.not, label %if.end70.cleanup_crit_edge, label %if.then72

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %module, align 4
  tail call void @devm_kfree(ptr noundef %52, ptr noundef nonnull %50) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end70.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbaudio_tplg_create_kcontrol(ptr nocapture noundef readonly %gb, ptr nocapture noundef writeonly %kctl, ptr noundef %ctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iface = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 2
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cond = icmp eq i8 %1, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %info = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %info, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cond31 = icmp eq i8 %3, 3
  br i1 %cond31, label %sw.bb2, label %sw.default

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @gbaudio_tplg_create_enum_kctl(ptr noundef %gb, ptr noundef %kctl, ptr noundef %ctl)
  br label %do.body

sw.default:                                       ; preds = %sw.bb
  %4 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gb, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 20, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %sw.default.cleanup_crit_edge, label %if.end

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 1
  %conv4 = zext i8 %7 to i32
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv4, ptr %call.i, align 4
  %data_cport = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 3
  %9 = ptrtoint ptr %data_cport to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %data_cport, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv5 = zext i16 %11 to i32
  %data_cport6 = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %data_cport6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv5, ptr %data_cport6, align 4
  %access = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 4
  %13 = ptrtoint ptr %access to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %access, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %access7 = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %access7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %access7, align 4
  %count_values = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 6
  %17 = ptrtoint ptr %count_values to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %count_values, align 1
  %conv8 = zext i8 %18 to i32
  %vcount = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %vcount to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv8, ptr %vcount, align 4
  %info10 = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %info10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %info, ptr %info10, align 4
  %count14 = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 5
  %21 = ptrtoint ptr %count14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %count14, align 1
  %conv15 = zext i8 %22 to i32
  %23 = ptrtoint ptr %call.i to i32
  %24 = ptrtoint ptr %kctl to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %kctl, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 4
  %25 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 8
  %26 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 12
  %27 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ctl, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 16
  %28 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 20
  %29 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 24
  %30 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv15, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 28
  %31 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @gbcodec_mixer_ctl_info, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %.compoundliteral.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 32
  %32 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @gbcodec_mixer_ctl_get, ptr %.compoundliteral.sroa.9.0..sroa_idx, align 4
  %.compoundliteral.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 36
  %33 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @gbcodec_mixer_ctl_put, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 4
  %.compoundliteral.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 40
  %34 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %.compoundliteral.sroa.11.0..sroa_idx, align 4
  %.compoundliteral.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 44
  %35 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %23, ptr %.compoundliteral.sroa.12.0..sroa_idx, align 4
  br label %do.body

do.body:                                          ; preds = %if.end, %sw.bb2
  %ret.0 = phi i32 [ %call, %sw.bb2 ], [ 0, %if.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_create_kcontrol.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_create_kcontrol, %if.then23)) #10
          to label %cleanup [label %if.then23], !srcloc !245

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gb, align 4
  %id27 = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 1
  %38 = ptrtoint ptr %id27 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %id27, align 1
  %conv28 = zext i8 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_create_kcontrol.__UNIQUE_ID_ddebug247, ptr noundef %37, ptr noundef nonnull @.str.28, ptr noundef %ctl, i32 noundef %conv28) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body, %sw.default.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %sw.default.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %if.then23 ], [ %ret.0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbaudio_tplg_create_enum_kctl(ptr nocapture noundef readonly %gb, ptr nocapture noundef writeonly %kctl, ptr noundef %ctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gb, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 64, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %value, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %items1 = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %items1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %items1, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #10
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end.gb_generate_enum_strings.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !247

if.end.gb_generate_enum_strings.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_generate_enum_strings.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end
  %8 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gb, align 4
  %10 = extractvalue { i32, i1 } %6, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %10, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge, label %if.end.i

devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_generate_enum_strings.exit.thread

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19.not.i = icmp eq i32 %3, 0
  br i1 %cmp19.not.i, label %if.end.i.do.body_crit_edge, label %for.body.preheader.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.preheader.i:                             ; preds = %if.end.i
  %names.i = getelementptr inbounds %struct.gb_audio_enumerated, ptr %value, i32 0, i32 2
  %umax.i = tail call i32 @llvm.umax.i32(i32 %4, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %data.021.i = phi ptr [ %incdec.ptr.i, %while.end.i.for.body.i_crit_edge ], [ %names.i, %for.body.preheader.i ]
  %i.020.i = phi i32 [ %inc.i, %while.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr ptr, ptr %call5.i.i.i, i32 %i.020.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data.021.i, ptr %arrayidx.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body.i
  %data.1.i = phi ptr [ %data.021.i, %for.body.i ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %12 = ptrtoint ptr %data.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.1.i, align 1
  %cmp2.not.i = icmp eq i8 %13, 0
  %incdec.ptr.i = getelementptr i8, ptr %data.1.i, i32 1
  br i1 %cmp2.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %while.end.i.do.body_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

while.end.i.do.body_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

gb_generate_enum_strings.exit.thread:             ; preds = %devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge, %if.end.gb_generate_enum_strings.exit.thread_crit_edge
  %texts60 = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %texts60 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %texts60, align 4
  br label %cleanup

do.body:                                          ; preds = %while.end.i.do.body_crit_edge, %if.end.i.do.body_crit_edge
  %texts.sink = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %texts.sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i.i, ptr %texts.sink, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_create_enum_kctl.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_create_enum_kctl, %if.then11)) #10
          to label %do.end [label %if.then11], !srcloc !245

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gb, align 4
  %18 = ptrtoint ptr %items1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %items1, align 4
  %names_length = getelementptr inbounds %struct.gb_audio_enumerated, ptr %value, i32 0, i32 1
  %20 = ptrtoint ptr %names_length to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %names_length, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_create_enum_kctl.__UNIQUE_ID_ddebug245, ptr noundef %17, ptr noundef nonnull @.str.30, i32 noundef %19, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %23 = ptrtoint ptr %items1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %items1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp69.not = icmp eq i32 %24, 0
  br i1 %cmp69.not, label %do.end.for.end_crit_edge, label %do.end.do.body17_crit_edge

do.end.do.body17_crit_edge:                       ; preds = %do.end
  br label %do.body17

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body17:                                        ; preds = %for.inc.do.body17_crit_edge, %do.end.do.body17_crit_edge
  %i.070 = phi i32 [ %inc, %for.inc.do.body17_crit_edge ], [ 0, %do.end.do.body17_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_create_enum_kctl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_create_enum_kctl, %if.then29)) #10
          to label %for.inc [label %if.then29], !srcloc !245

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gb, align 4
  %27 = ptrtoint ptr %texts.sink to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %texts.sink, align 4
  %arrayidx = getelementptr ptr, ptr %28, i32 %i.070
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_create_enum_kctl.__UNIQUE_ID_ddebug246, ptr noundef %26, ptr noundef nonnull @.str.31, i32 noundef %i.070, ptr noundef %30) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %do.body17
  %inc = add nuw i32 %i.070, 1
  %31 = ptrtoint ptr %items1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %items1, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %for.inc.do.body17_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.do.body17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %33 = ptrtoint ptr %call.i to i32
  %34 = ptrtoint ptr %kctl to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %kctl, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 4
  %35 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 8
  %36 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 12
  %37 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ctl, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 16
  %38 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 20
  %39 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 24
  %40 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 28
  %41 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @snd_soc_info_enum_double, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %.compoundliteral.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 32
  %42 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @gbcodec_enum_ctl_get, ptr %.compoundliteral.sroa.9.0..sroa_idx, align 4
  %.compoundliteral.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 36
  %43 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @gbcodec_enum_ctl_put, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 4
  %.compoundliteral.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 40
  %44 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %.compoundliteral.sroa.11.0..sroa_idx, align 4
  %.compoundliteral.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 44
  %45 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %33, ptr %.compoundliteral.sroa.12.0..sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %gb_generate_enum_strings.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %gb_generate_enum_strings.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_mixer_ctl_info(ptr noundef %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbcodec_mixer_ctl_info.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbcodec_mixer_ctl_info, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %name5 = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbcodec_mixer_ctl_info.__UNIQUE_ID_ddebug240, ptr noundef %7, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, ptr noundef %name5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %10 = inttoptr i32 %9 to ptr
  %info6 = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %info6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info6, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %do.end11, label %if.end16

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %name14 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %uinfo, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.46, ptr noundef %name14) #13
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %access = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %access, align 4
  %access17 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 2
  %17 = ptrtoint ptr %access17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %access17, align 4
  %vcount = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %10, i32 0, i32 3
  %18 = ptrtoint ptr %vcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vcount, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %20 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %count, align 8
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %12, align 1
  %conv = zext i8 %22 to i32
  %type18 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %23 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %type18, align 8
  %24 = load i8, ptr %12, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %do.end56 [
    i8 1, label %if.end16.sw.bb_crit_edge
    i8 2, label %if.end16.sw.bb_crit_edge112
    i8 3, label %sw.bb27
  ]

if.end16.sw.bb_crit_edge112:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end16.sw.bb_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end16.sw.bb_crit_edge, %if.end16.sw.bb_crit_edge112
  %value = getelementptr inbounds %struct.gb_audio_ctl_elem_info, ptr %12, i32 0, i32 2
  %26 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %value, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %value21 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %29 = ptrtoint ptr %value21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %value21, align 8
  %max24 = getelementptr inbounds %struct.gb_audio_integer, ptr %value, i32 0, i32 1
  %30 = ptrtoint ptr %max24 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %max24, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %max26 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %max26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %max26, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %if.end16
  %value28 = getelementptr inbounds %struct.gb_audio_ctl_elem_info, ptr %12, i32 0, i32 2
  %34 = ptrtoint ptr %value28 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %value28, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %value29 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %37 = ptrtoint ptr %value29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %value29, align 8
  %item = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %38 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %item, align 4
  %sub = add i32 %36, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %sub)
  %cmp = icmp ugt i32 %39, %sub
  br i1 %cmp, label %if.then33, label %sw.bb27.if.end37_crit_edge

sw.bb27.if.end37_crit_edge:                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then33:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub, ptr %item, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %sw.bb27.if.end37_crit_edge
  %name39 = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call41 = tail call fastcc ptr @find_gb_module(ptr noundef %5, ptr noundef %name39)
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end37.cleanup_crit_edge, label %if.end44

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %10, align 4
  %conv45 = trunc i32 %42 to i8
  %43 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %item, align 4
  %conv48 = trunc i32 %44 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv45)
  %cmp.i = icmp eq i8 %conv45, -1
  br i1 %cmp.i, label %if.end44.gbaudio_map_controlid.exit_crit_edge, label %if.end.i

if.end44.gbaudio_map_controlid.exit_crit_edge:    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %gbaudio_map_controlid.exit

if.end.i:                                         ; preds = %if.end44
  %ctl_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %call41, i32 0, i32 37
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %ctl_list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %45 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp3.not.i = icmp eq ptr %.pn.i, %ctl_list.i
  br i1 %cmp3.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %control.0.i = getelementptr i8, ptr %.pn.i, i32 -20
  %46 = ptrtoint ptr %control.0.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %control.0.i, align 4
  %cmp7.i = icmp eq i8 %47, %conv45
  br i1 %cmp7.i, label %if.then9.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then9.i:                                       ; preds = %for.body.i
  %conv10.i = and i32 %44, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv48)
  %cmp11.i = icmp eq i8 %conv48, -1
  br i1 %cmp11.i, label %if.then13.i, label %if.end14.i

if.then13.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr i8, ptr %.pn.i, i32 -16
  br label %cleanup.sink.split.i

if.end14.i:                                       ; preds = %if.then9.i
  %items.i = getelementptr i8, ptr %.pn.i, i32 -4
  %48 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %items.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv10.i)
  %cmp16.not.i = icmp sgt i32 %49, %conv10.i
  br i1 %cmp16.not.i, label %if.end19.i, label %if.end14.i.gbaudio_map_controlid.exit_crit_edge

if.end14.i.gbaudio_map_controlid.exit_crit_edge:  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gbaudio_map_controlid.exit

if.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %texts.i = getelementptr i8, ptr %.pn.i, i32 -8
  %50 = ptrtoint ptr %texts.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %texts.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %51, i32 %conv10.i
  br label %cleanup.sink.split.i

for.end.i:                                        ; preds = %for.cond.i
  %widget_ctl_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %call41, i32 0, i32 38
  br label %for.cond30.i

for.cond30.i:                                     ; preds = %for.body36.i.for.cond30.i_crit_edge, %for.end.i
  %.pn87.in.i = phi ptr [ %widget_ctl_list.i, %for.end.i ], [ %.pn87.i, %for.body36.i.for.cond30.i_crit_edge ]
  %52 = ptrtoint ptr %.pn87.in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn87.i = load ptr, ptr %.pn87.in.i, align 4
  %cmp33.not.i = icmp eq ptr %.pn87.i, %widget_ctl_list.i
  br i1 %cmp33.not.i, label %for.cond30.i.gbaudio_map_controlid.exit_crit_edge, label %for.body36.i

for.cond30.i.gbaudio_map_controlid.exit_crit_edge: ; preds = %for.cond30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gbaudio_map_controlid.exit

for.body36.i:                                     ; preds = %for.cond30.i
  %control.1.i = getelementptr i8, ptr %.pn87.i, i32 -20
  %53 = ptrtoint ptr %control.1.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %control.1.i, align 4
  %cmp40.i = icmp eq i8 %54, %conv45
  br i1 %cmp40.i, label %if.then42.i, label %for.body36.i.for.cond30.i_crit_edge

for.body36.i.for.cond30.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond30.i

if.then42.i:                                      ; preds = %for.body36.i
  %conv43.i = and i32 %44, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv48)
  %cmp44.i = icmp eq i8 %conv48, -1
  br i1 %cmp44.i, label %if.then46.i, label %if.end48.i

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  %name47.i = getelementptr i8, ptr %.pn87.i, i32 -16
  br label %cleanup.sink.split.i

if.end48.i:                                       ; preds = %if.then42.i
  %items50.i = getelementptr i8, ptr %.pn87.i, i32 -4
  %55 = ptrtoint ptr %items50.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %items50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv43.i)
  %cmp51.not.i = icmp sgt i32 %56, %conv43.i
  br i1 %cmp51.not.i, label %if.end54.i, label %if.end48.i.gbaudio_map_controlid.exit_crit_edge

if.end48.i.gbaudio_map_controlid.exit_crit_edge:  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gbaudio_map_controlid.exit

if.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  %texts55.i = getelementptr i8, ptr %.pn87.i, i32 -8
  %57 = ptrtoint ptr %texts55.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %texts55.i, align 4
  %arrayidx57.i = getelementptr ptr, ptr %58, i32 %conv43.i
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end54.i, %if.then46.i, %if.end19.i, %if.then13.i
  %arrayidx57.sink.i = phi ptr [ %arrayidx57.i, %if.end54.i ], [ %name47.i, %if.then46.i ], [ %arrayidx.i, %if.end19.i ], [ %name.i, %if.then13.i ]
  %59 = ptrtoint ptr %arrayidx57.sink.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx57.sink.i, align 4
  br label %gbaudio_map_controlid.exit

gbaudio_map_controlid.exit:                       ; preds = %cleanup.sink.split.i, %if.end48.i.gbaudio_map_controlid.exit_crit_edge, %for.cond30.i.gbaudio_map_controlid.exit_crit_edge, %if.end14.i.gbaudio_map_controlid.exit_crit_edge, %if.end44.gbaudio_map_controlid.exit_crit_edge
  %retval.0.i98 = phi ptr [ null, %if.end44.gbaudio_map_controlid.exit_crit_edge ], [ null, %if.end14.i.gbaudio_map_controlid.exit_crit_edge ], [ null, %if.end48.i.gbaudio_map_controlid.exit_crit_edge ], [ %60, %cleanup.sink.split.i ], [ null, %for.cond30.i.gbaudio_map_controlid.exit_crit_edge ]
  %name51 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %call53 = tail call i32 @strscpy(ptr noundef %name51, ptr noundef %retval.0.i98, i32 noundef 64) #10
  br label %cleanup

do.end56:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %conv20 = zext i8 %24 to i32
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  %name61 = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.48, i32 noundef %conv20, ptr noundef %name61) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %gbaudio_map_controlid.exit, %if.end37.cleanup_crit_edge, %sw.bb, %do.end11
  %retval.0 = phi i32 [ -22, %do.end11 ], [ -22, %if.end37.cleanup_crit_edge ], [ 0, %do.end56 ], [ 0, %gbaudio_map_controlid.exit ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_mixer_ctl_get(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %gbvalue = alloca %struct.gb_audio_ctl_elem_value, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gbvalue) #10
  %0 = getelementptr inbounds %struct.gb_audio_ctl_elem_value, ptr %gbvalue, i32 0, i32 1
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %1 = call ptr @memset(ptr %gbvalue, i32 255, i32 24)
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbcodec_mixer_ctl_get.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbcodec_mixer_ctl_get, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbcodec_mixer_ctl_get.__UNIQUE_ID_ddebug241, ptr noundef %9, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.50, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name6 = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call8 = tail call fastcc ptr @find_gb_module(ptr noundef %7, ptr noundef %name6)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %10 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private_value, align 4
  %12 = inttoptr i32 %11 to ptr
  %info12 = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info12, align 4
  %15 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call8, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end18

do.end.i:                                         ; preds = %if.end11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #13
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %call8, i32 0, i32 21
  %18 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mgmt_connection, align 4
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %12, align 4
  %conv = trunc i32 %21 to i8
  %call19 = call i32 @gb_audio_gb_get_control(ptr noundef %19, i8 noundef zeroext %conv, i8 noundef zeroext -1, ptr noundef nonnull %gbvalue) #10
  %call.i.i102 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i.i102, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end37, label %do.body23

do.body23:                                        ; preds = %if.end18
  %call24 = call i32 @___ratelimit(ptr noundef nonnull @gbcodec_mixer_ctl_get._rs, ptr noundef nonnull @.str.50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body23.cleanup_crit_edge, label %do.end29

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.33, i32 noundef %call19, ptr noundef nonnull @.str.50, ptr noundef %name6) #13
  br label %cleanup

if.end37:                                         ; preds = %if.end18
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %14, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %26, label %do.end64 [
    i8 1, label %if.end37.sw.bb_crit_edge
    i8 2, label %if.end37.sw.bb_crit_edge106
    i8 3, label %sw.bb48
  ]

if.end37.sw.bb_crit_edge106:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end37.sw.bb_crit_edge:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end37.sw.bb_crit_edge, %if.end37.sw.bb_crit_edge106
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %0, align 8
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %value39 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %31 = ptrtoint ptr %value39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %value39, align 8
  %vcount = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %12, i32 0, i32 3
  %32 = ptrtoint ptr %vcount to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp = icmp eq i32 %33, 2
  br i1 %cmp, label %if.then42, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then42:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx44 = getelementptr inbounds [2 x i32], ptr %0, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx44, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %arrayidx46 = getelementptr [128 x i32], ptr %value39, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx46, align 4
  br label %cleanup

sw.bb48:                                          ; preds = %if.end37
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %0, align 8
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %value51 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %41 = ptrtoint ptr %value51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %value51, align 8
  %vcount53 = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %12, i32 0, i32 3
  %42 = ptrtoint ptr %vcount53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vcount53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp54 = icmp eq i32 %43, 2
  br i1 %cmp54, label %if.then56, label %sw.bb48.cleanup_crit_edge

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then56:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx58 = getelementptr inbounds [2 x i32], ptr %0, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx58, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %arrayidx60 = getelementptr [128 x i32], ptr %value51, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx60, align 4
  br label %cleanup

do.end64:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %conv38 = zext i8 %26 to i32
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.48, i32 noundef %conv38, ptr noundef %name6) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %if.then56, %sw.bb48.cleanup_crit_edge, %if.then42, %sw.bb.cleanup_crit_edge, %do.end29, %do.body23.cleanup_crit_edge, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %call19, %do.end29 ], [ %call19, %do.body23.cleanup_crit_edge ], [ -22, %do.end64 ], [ 0, %if.then56 ], [ 0, %sw.bb48.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %sw.bb.cleanup_crit_edge ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gbvalue) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_mixer_ctl_put(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %gbvalue = alloca %struct.gb_audio_ctl_elem_value, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gbvalue) #10
  %0 = getelementptr inbounds %struct.gb_audio_ctl_elem_value, ptr %gbvalue, i32 0, i32 1
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %1 = call ptr @memset(ptr %gbvalue, i32 255, i32 24)
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbcodec_mixer_ctl_put.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbcodec_mixer_ctl_put, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbcodec_mixer_ctl_put.__UNIQUE_ID_ddebug242, ptr noundef %9, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.53, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name6 = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call8 = tail call fastcc ptr @find_gb_module(ptr noundef %7, ptr noundef %name6)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %10 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private_value, align 4
  %12 = inttoptr i32 %11 to ptr
  %info12 = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info12, align 4
  %15 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call8, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %14, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %18, label %sw.epilog [
    i8 1, label %if.end11.sw.bb_crit_edge
    i8 2, label %if.end11.sw.bb_crit_edge113
    i8 3, label %sw.bb24
  ]

if.end11.sw.bb_crit_edge113:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end11.sw.bb_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end11.sw.bb_crit_edge, %if.end11.sw.bb_crit_edge113
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %0, align 8
  %vcount = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %12, i32 0, i32 3
  %24 = ptrtoint ptr %vcount to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp = icmp eq i32 %25, 2
  br i1 %cmp, label %sw.bb.if.end49.sink.split_crit_edge, label %sw.bb.if.end49_crit_edge

sw.bb.if.end49_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

sw.bb.if.end49.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.sink.split

sw.bb24:                                          ; preds = %if.end11
  %value25 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %26 = ptrtoint ptr %value25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value25, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %0, align 8
  %vcount29 = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %12, i32 0, i32 3
  %30 = ptrtoint ptr %vcount29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vcount29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp30 = icmp eq i32 %31, 2
  br i1 %cmp30, label %sw.bb24.if.end49.sink.split_crit_edge, label %sw.bb24.if.end49_crit_edge

sw.bb24.if.end49_crit_edge:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

sw.bb24.if.end49.sink.split_crit_edge:            ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.sink.split

sw.epilog:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %18 to i32
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.48, i32 noundef %conv, ptr noundef %name6) #13
  br label %cleanup

if.end49.sink.split:                              ; preds = %sw.bb24.if.end49.sink.split_crit_edge, %sw.bb.if.end49.sink.split_crit_edge
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx34 = getelementptr [128 x i32], ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx34, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %arrayidx36 = getelementptr inbounds [2 x i32], ptr %0, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx36, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %sw.bb24.if.end49_crit_edge, %sw.bb.if.end49_crit_edge
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end53

do.end.i:                                         ; preds = %if.end49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #13
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %call8, i32 0, i32 21
  %40 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mgmt_connection, align 4
  %42 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %12, align 4
  %conv54 = trunc i32 %43 to i8
  %call55 = call i32 @gb_audio_gb_set_control(ptr noundef %41, i8 noundef zeroext %conv54, i8 noundef zeroext -1, ptr noundef nonnull %gbvalue) #10
  %call.i.i106 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 22
  %44 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store volatile i64 %call.i.i106, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool57.not = icmp eq i32 %call55, 0
  br i1 %tobool57.not, label %if.end53.cleanup_crit_edge, label %do.body59

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body59:                                        ; preds = %if.end53
  %call60 = call i32 @___ratelimit(ptr noundef nonnull @gbcodec_mixer_ctl_put._rs, ptr noundef nonnull @.str.53) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.body59.cleanup_crit_edge, label %do.end65

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end65:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.33, i32 noundef %call55, ptr noundef nonnull @.str.53, ptr noundef %name6) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %do.body59.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %sw.epilog, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ -22, %sw.epilog ], [ %call55, %do.body59.cleanup_crit_edge ], [ %call55, %do.end65 ], [ 0, %if.end53.cleanup_crit_edge ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gbvalue) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_enum_ctl_get(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %gbvalue = alloca %struct.gb_audio_ctl_elem_value, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gbvalue) #10
  %9 = getelementptr inbounds %struct.gb_audio_ctl_elem_value, ptr %gbvalue, i32 0, i32 1
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %10 = call ptr @memset(ptr %gbvalue, i32 255, i32 24)
  %call2 = tail call fastcc ptr @find_gb_module(ptr noundef %5, ptr noundef %name)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctl_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %call2, i32 0, i32 37
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %ctl_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ctl_list.i
  br i1 %cmp.not.i, label %gbaudio_map_controlname.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %name2.i = getelementptr i8, ptr %.pn.i, i32 -16
  %12 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name2.i, align 4
  %call.i = tail call i32 @strncmp(ptr noundef %13, ptr noundef %name, i32 noundef 32) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %gbaudio_map_controlname.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

gbaudio_map_controlname.exit.thread:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.39, ptr noundef %name) #13
  br label %cleanup

gbaudio_map_controlname.exit:                     ; preds = %for.body.i
  %control.0.le.i = getelementptr i8, ptr %.pn.i, i32 -20
  %16 = ptrtoint ptr %control.0.le.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %control.0.le.i, align 4
  %18 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call2, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i64, label %if.end12

do.end.i64:                                       ; preds = %gbaudio_map_controlname.exit
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #13
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i64.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i64.cleanup_crit_edge:                     ; preds = %do.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  br label %cleanup

if.end12:                                         ; preds = %gbaudio_map_controlname.exit
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %call2, i32 0, i32 21
  %21 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mgmt_connection, align 4
  %call13 = call i32 @gb_audio_gb_get_control(ptr noundef %22, i8 noundef zeroext %17, i8 noundef zeroext -1, ptr noundef nonnull %gbvalue) #10
  %call.i.i66 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %23 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i.i66, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %19, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end28, label %do.body

do.body:                                          ; preds = %if.end12
  %call17 = call i32 @___ratelimit(ptr noundef nonnull @gbcodec_enum_ctl_get._rs, ptr noundef nonnull @__func__.gbcodec_enum_ctl_get) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.33, i32 noundef %call13, ptr noundef nonnull @__func__.gbcodec_enum_ctl_get, ptr noundef %name) #13
  br label %cleanup

if.end28:                                         ; preds = %if.end12
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %9, align 8
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %value29 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %29 = ptrtoint ptr %value29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %value29, align 8
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 1
  %30 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %shift_l, align 4
  %shift_r = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 2
  %32 = ptrtoint ptr %shift_r to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %shift_r, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp33.not = icmp eq i8 %31, %33
  br i1 %cmp33.not, label %if.end28.cleanup_crit_edge, label %if.then35

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx37 = getelementptr inbounds [2 x i32], ptr %9, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx37, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %arrayidx39 = getelementptr [128 x i32], ptr %value29, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end28.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %do.end11.i.i.i.i.i, %do.end.i64.cleanup_crit_edge, %gbaudio_map_controlname.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call13, %do.end ], [ %call13, %do.body.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %if.end28.cleanup_crit_edge ], [ -22, %gbaudio_map_controlname.exit.thread ], [ %call.i.i, %do.end.i64.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gbvalue) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_enum_ctl_put(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %gbvalue = alloca %struct.gb_audio_ctl_elem_value, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gbvalue) #10
  %9 = getelementptr inbounds %struct.gb_audio_ctl_elem_value, ptr %gbvalue, i32 0, i32 1
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %10 = call ptr @memset(ptr %gbvalue, i32 255, i32 24)
  %call2 = tail call fastcc ptr @find_gb_module(ptr noundef %5, ptr noundef %name)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctl_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %call2, i32 0, i32 37
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %ctl_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ctl_list.i
  br i1 %cmp.not.i, label %gbaudio_map_controlname.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %name2.i = getelementptr i8, ptr %.pn.i, i32 -16
  %12 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name2.i, align 4
  %call.i = tail call i32 @strncmp(ptr noundef %13, ptr noundef %name, i32 noundef 32) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %gbaudio_map_controlname.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

gbaudio_map_controlname.exit.thread:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.39, ptr noundef %name) #13
  br label %cleanup

gbaudio_map_controlname.exit:                     ; preds = %for.body.i
  %control.0.le.i = getelementptr i8, ptr %.pn.i, i32 -20
  %16 = ptrtoint ptr %control.0.le.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %control.0.le.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 8
  %items = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 3
  %20 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %items, align 4
  %sub = add i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub)
  %cmp9 = icmp ugt i32 %19, %sub
  br i1 %cmp9, label %gbaudio_map_controlname.exit.cleanup_crit_edge, label %if.end11

gbaudio_map_controlname.exit.cleanup_crit_edge:   ; preds = %gbaudio_map_controlname.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %gbaudio_map_controlname.exit
  %22 = tail call i32 @llvm.bswap.i32(i32 %19)
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %9, align 8
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 1
  %24 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %shift_l, align 4
  %shift_r = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 2
  %26 = ptrtoint ptr %shift_r to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %shift_r, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp17.not = icmp eq i8 %25, %27
  br i1 %cmp17.not, label %if.end11.if.end32_crit_edge, label %if.then19

if.end11.if.end32_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then19:                                        ; preds = %if.end11
  %arrayidx21 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx21, align 4
  %30 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %items, align 4
  %sub23 = add i32 %31, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %sub23)
  %cmp24 = icmp ugt i32 %29, %sub23
  br i1 %cmp24, label %if.then19.cleanup_crit_edge, label %if.end27

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %32 = tail call i32 @llvm.bswap.i32(i32 %29)
  %arrayidx31 = getelementptr inbounds [2 x i32], ptr %9, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end27, %if.end11.if.end32_crit_edge
  %34 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call2, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %35, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i82, label %if.end36

do.end.i82:                                       ; preds = %if.end32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #13
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i82.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i82.cleanup_crit_edge:                     ; preds = %do.end.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i82
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %call2, i32 0, i32 21
  %37 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mgmt_connection, align 4
  %call38 = call i32 @gb_audio_gb_set_control(ptr noundef %38, i8 noundef zeroext %17, i8 noundef zeroext -1, ptr noundef nonnull %gbvalue) #10
  %call.i.i84 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 12, i32 22
  %39 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store volatile i64 %call.i.i84, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %35, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool40.not = icmp eq i32 %call38, 0
  br i1 %tobool40.not, label %if.end36.cleanup_crit_edge, label %do.body

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end36
  %call42 = call i32 @___ratelimit(ptr noundef nonnull @gbcodec_enum_ctl_put._rs, ptr noundef nonnull @__func__.gbcodec_enum_ctl_put) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.33, i32 noundef %call38, ptr noundef nonnull @__func__.gbcodec_enum_ctl_put, ptr noundef %name) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %do.end11.i.i.i.i.i, %do.end.i82.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %gbaudio_map_controlname.exit.cleanup_crit_edge, %gbaudio_map_controlname.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %gbaudio_map_controlname.exit.cleanup_crit_edge ], [ -22, %if.then19.cleanup_crit_edge ], [ %call38, %do.body.cleanup_crit_edge ], [ %call38, %do.end ], [ 0, %if.end36.cleanup_crit_edge ], [ -22, %gbaudio_map_controlname.exit.thread ], [ %call.i.i, %do.end.i82.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gbvalue) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_gb_module(ptr noundef %codec, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %dev_id = alloca i32, align 4
  %begin = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_id) #10
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev_id, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %begin) #10
  %tobool.not = icmp eq ptr %name, null
  %1 = call ptr @memset(ptr %begin, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %name, ptr noundef nonnull @.str.34, ptr noundef nonnull %begin, ptr noundef nonnull %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_gb_module.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_gb_module, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !245

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %codec, align 4
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @find_gb_module.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %lock = getelementptr inbounds %struct.gbaudio_codec_info, ptr %codec, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %module_list = getelementptr inbounds %struct.gbaudio_codec_info, ptr %codec, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %module_list, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp11.not = icmp eq ptr %.pn, %module_list
  br i1 %cmp11.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %dev_id14 = getelementptr i8, ptr %.pn, i32 -84
  %7 = ptrtoint ptr %dev_id14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id14, align 4
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_id, align 4
  %cmp15 = icmp eq i32 %8, %10
  br i1 %cmp15, label %if.then16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %module.0.le = getelementptr i8, ptr %.pn, i32 -88
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %lock) #10
  %11 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %codec, align 4
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.37, ptr noundef nonnull %name, i32 noundef %14) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %module.0.le, %if.then16 ], [ null, %for.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %begin) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_id) #10
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gb_pm_runtime_get_sync(ptr noundef %bundle) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %bundle, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %bundle, ptr noundef nonnull @.str.41, i32 noundef %call.i) #13
  %usage_count.i = getelementptr inbounds %struct.device, ptr %bundle, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !249
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %do.end.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_get_control(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_set_control(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbaudio_tplg_create_widget(ptr noundef %module, ptr nocapture noundef %dw, ptr noundef %w, ptr nocapture noundef %w_size) unnamed_addr #0 align 64 {
entry:
  %temp_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %temp_name) #10
  %type.i = getelementptr inbounds %struct.gb_audio_widget, ptr %w, i32 0, i32 3
  %0 = call ptr @memset(ptr %temp_name, i32 255, i32 32)
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %2)
  %3 = icmp ult i8 %2, 16
  br i1 %3, label %switch.hole_check, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %2 to i16
  %switch.shifted = lshr i16 -18425, %switch.maskindex
  %4 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %switch.lobit.not = icmp eq i16 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end_crit_edge, label %switch.lookup

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

switch.lookup:                                    ; preds = %switch.hole_check
  %5 = sext i8 %2 to i32
  %switch.gep = getelementptr inbounds [16 x i8], ptr @switch.table.gbaudio_tplg_create_widget, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %6)
  %switch.load = load i8, ptr %switch.gep, align 1
  %ncontrols2.i = getelementptr inbounds %struct.gb_audio_widget, ptr %w, i32 0, i32 5
  %7 = ptrtoint ptr %ncontrols2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ncontrols2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %switch.load)
  %cmp.not.i = icmp eq i8 %8, %switch.load
  br i1 %cmp.not.i, label %switch.lookup.if.end_crit_edge, label %do.end

switch.lookup.if.end_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %module, align 4
  %11 = ptrtoint ptr %ncontrols2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ncontrols2.i, align 1
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.57, i32 noundef %conv, ptr noundef %w) #13
  br label %cleanup150

if.end:                                           ; preds = %switch.lookup.if.end_crit_edge, %switch.hole_check.if.end_crit_edge, %entry.if.end_crit_edge
  %ncontrols1 = getelementptr inbounds %struct.gb_audio_widget, ptr %w, i32 0, i32 5
  %13 = ptrtoint ptr %ncontrols1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ncontrols1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not = icmp eq i8 %14, 0
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %conv5 = zext i8 %14 to i32
  %mul = mul nuw nsw i32 %conv5, 48
  %15 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %module, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef %mul, i32 noundef 3520) #10
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then3.cleanup150_crit_edge, label %if.then3.if.end11_crit_edge

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then3.cleanup150_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

if.end11:                                         ; preds = %if.then3.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %widget_kctls.0 = phi ptr [ %call.i, %if.then3.if.end11_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end.if.end11_crit_edge ]
  %17 = ptrtoint ptr %w_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 68, ptr %w_size, align 4
  %18 = ptrtoint ptr %ncontrols1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ncontrols1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp264.not = icmp eq i8 %19, 0
  br i1 %cmp264.not, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %ctl = getelementptr inbounds %struct.gb_audio_widget, ptr %w, i32 0, i32 6
  %widget_ctl_list = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 38
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0267 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %curr.0265 = phi ptr [ %ctl, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_kcontrol_new, ptr %widget_kctls.0, i32 %i.0267
  %call16 = tail call fastcc i32 @gbaudio_tplg_create_wcontrol(ptr noundef %module, ptr noundef %arrayidx, ptr noundef %curr.0265)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %20 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %module, align 4
  br i1 %tobool17.not, label %if.end26, label %do.end21

do.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %iface = getelementptr inbounds %struct.gb_audio_control, ptr %curr.0265, i32 0, i32 2
  %22 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iface, align 1
  %conv25 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.60, ptr noundef %curr.0265, i32 noundef %conv25) #13
  br label %error

if.end26:                                         ; preds = %for.body
  %call.i240 = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef 28, i32 noundef 3520) #10
  %tobool29.not = icmp eq ptr %call.i240, null
  br i1 %tobool29.not, label %if.end26.error_crit_edge, label %if.end31

if.end26.error_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end31:                                         ; preds = %if.end26
  %id = getelementptr inbounds %struct.gb_audio_control, ptr %curr.0265, i32 0, i32 1
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %id, align 1
  %26 = ptrtoint ptr %call.i240 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %call.i240, align 4
  %name35 = getelementptr inbounds %struct.gbaudio_control, ptr %call.i240, i32 0, i32 1
  %27 = ptrtoint ptr %name35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %curr.0265, ptr %name35, align 4
  %wname = getelementptr inbounds %struct.gbaudio_control, ptr %call.i240, i32 0, i32 2
  %28 = ptrtoint ptr %wname to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %w, ptr %wname, align 4
  %info = getelementptr inbounds %struct.gb_audio_control, ptr %curr.0265, i32 0, i32 7
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %info, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp39 = icmp eq i8 %30, 3
  br i1 %cmp39, label %if.then41, label %if.end31.if.end52_crit_edge

if.end31.if.end52_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then41:                                        ; preds = %if.end31
  %value = getelementptr inbounds %struct.gb_audio_control, ptr %curr.0265, i32 0, i32 7, i32 2
  %names_length = getelementptr inbounds %struct.gb_audio_enumerated, ptr %value, i32 0, i32 1
  %31 = ptrtoint ptr %names_length to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %names_length, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv44 = zext i16 %33 to i32
  %add45 = add nuw nsw i32 %conv44, 57
  %34 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %value, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  %37 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 4) #10
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %if.then41.gb_generate_enum_strings.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !247

if.then41.gb_generate_enum_strings.exit.thread_crit_edge: ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_generate_enum_strings.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.then41
  %39 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %module, align 4
  %41 = extractvalue { i32, i1 } %37, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %40, i32 noundef %41, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge, label %if.end.i

devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_generate_enum_strings.exit.thread

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp19.not.i = icmp eq i32 %35, 0
  br i1 %cmp19.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end.i
  %names.i = getelementptr inbounds %struct.gb_audio_enumerated, ptr %value, i32 0, i32 2
  %umax.i = tail call i32 @llvm.umax.i32(i32 %36, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %data.021.i = phi ptr [ %incdec.ptr.i, %while.end.i.for.body.i_crit_edge ], [ %names.i, %for.body.preheader.i ]
  %i.020.i = phi i32 [ %inc.i, %while.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr ptr, ptr %call5.i.i.i, i32 %i.020.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %data.021.i, ptr %arrayidx.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body.i
  %data.1.i = phi ptr [ %data.021.i, %for.body.i ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %43 = ptrtoint ptr %data.1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data.1.i, align 1
  %cmp2.not.i = icmp eq i8 %44, 0
  %incdec.ptr.i = getelementptr i8, ptr %data.1.i, i32 1
  br i1 %cmp2.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %while.end.i.cleanup_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

gb_generate_enum_strings.exit.thread:             ; preds = %devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge, %if.then41.gb_generate_enum_strings.exit.thread_crit_edge
  %texts247 = getelementptr inbounds %struct.gbaudio_control, ptr %call.i240, i32 0, i32 3
  %45 = ptrtoint ptr %texts247 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %texts247, align 4
  br label %error

cleanup:                                          ; preds = %while.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %texts = getelementptr inbounds %struct.gbaudio_control, ptr %call.i240, i32 0, i32 3
  %46 = ptrtoint ptr %texts to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call5.i.i.i, ptr %texts, align 4
  %47 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %value, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %items51 = getelementptr inbounds %struct.gbaudio_control, ptr %call.i240, i32 0, i32 4
  %50 = ptrtoint ptr %items51 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %items51, align 4
  br label %if.end52

if.end52:                                         ; preds = %cleanup, %if.end31.if.end52_crit_edge
  %csize.0 = phi i32 [ %add45, %cleanup ], [ 75, %if.end31.if.end52_crit_edge ]
  %51 = ptrtoint ptr %w_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %w_size, align 4
  %add53 = add i32 %52, %csize.0
  store i32 %add53, ptr %w_size, align 4
  %add.ptr = getelementptr i8, ptr %curr.0265, i32 %csize.0
  %list = getelementptr inbounds %struct.gbaudio_control, ptr %call.i240, i32 0, i32 5
  %53 = ptrtoint ptr %widget_ctl_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %widget_ctl_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %widget_ctl_list, ptr noundef %54) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end52.list_add.exit_crit_edge

if.end52.list_add.exit_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %list, ptr %prev1.i.i, align 4
  %56 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gbaudio_control, ptr %call.i240, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %widget_ctl_list, ptr %prev3.i.i, align 4
  %58 = ptrtoint ptr %widget_ctl_list to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %list, ptr %widget_ctl_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end52.list_add.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_create_widget.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_create_widget, %if.then59)) #10
          to label %for.inc [label %if.then59], !srcloc !245

if.then59:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %module, align 4
  %name62 = getelementptr %struct.snd_kcontrol_new, ptr %widget_kctls.0, i32 %i.0267, i32 3
  %61 = ptrtoint ptr %name62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name62, align 4
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_create_widget.__UNIQUE_ID_ddebug252, ptr noundef %60, ptr noundef nonnull @.str.62, ptr noundef %62, i32 noundef %64) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then59, %list_add.exit
  %inc = add nuw nsw i32 %i.0267, 1
  %65 = ptrtoint ptr %ncontrols1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ncontrols1, align 1
  %conv14 = zext i8 %66 to i32
  %cmp = icmp ult i32 %inc, %conv14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  %call71 = call i32 @strscpy(ptr noundef nonnull %temp_name, ptr noundef %w, i32 noundef 32) #10
  %dev_id = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 1
  %67 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dev_id, align 4
  %call75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %w, i32 noundef 32, ptr noundef nonnull @.str.25, i32 noundef %68, ptr noundef nonnull %temp_name)
  %69 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %type.i, align 1
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %70, label %for.end.error_crit_edge [
    i8 13, label %sw.bb
    i8 12, label %sw.bb80
    i8 11, label %sw.bb87
    i8 1, label %for.end.sw.bb93_crit_edge
    i8 0, label %for.end.sw.bb93_crit_edge318
    i8 15, label %for.end.sw.bb93_crit_edge319
    i8 6, label %for.end.sw.bb93_crit_edge320
    i8 4, label %for.end.sw.bb93_crit_edge321
    i8 2, label %for.end.sw.bb93_crit_edge322
    i8 23, label %for.end.sw.bb97_crit_edge
    i8 24, label %for.end.sw.bb97_crit_edge323
  ]

for.end.sw.bb97_crit_edge323:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb97

for.end.sw.bb97_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb97

for.end.sw.bb93_crit_edge322:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb93

for.end.sw.bb93_crit_edge321:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb93

for.end.sw.bb93_crit_edge320:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb93

for.end.sw.bb93_crit_edge319:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb93

for.end.sw.bb93_crit_edge318:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb93

for.end.sw.bb93_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb93

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %72 = call ptr @memcpy(ptr %dw, ptr getelementptr inbounds (<{ { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } }>, ptr @gbaudio_widgets, i32 0, i32 13, i32 0), i32 180)
  %op_devices = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 12
  %73 = ptrtoint ptr %op_devices to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %op_devices, align 4
  %or = or i32 %74, 2
  store i32 %or, ptr %op_devices, align 4
  br label %sw.epilog

sw.bb80:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %75 = call ptr @memcpy(ptr %dw, ptr getelementptr inbounds (<{ { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } }>, ptr @gbaudio_widgets, i32 0, i32 12, i32 0), i32 180)
  %op_devices84 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 12
  %76 = ptrtoint ptr %op_devices84 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %op_devices84, align 4
  %or85 = or i32 %77, 12
  store i32 %or85, ptr %op_devices84, align 4
  %ip_devices = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 11
  %78 = ptrtoint ptr %ip_devices to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ip_devices, align 4
  %or86 = or i32 %79, -2147483632
  store i32 %or86, ptr %ip_devices, align 4
  br label %sw.epilog

sw.bb87:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %80 = call ptr @memcpy(ptr %dw, ptr getelementptr inbounds (<{ { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } }>, ptr @gbaudio_widgets, i32 0, i32 11, i32 0), i32 180)
  %ip_devices91 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 11
  %81 = ptrtoint ptr %ip_devices91 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ip_devices91, align 4
  %or92 = or i32 %82, -2147483644
  store i32 %or92, ptr %ip_devices91, align 4
  br label %sw.epilog

sw.bb93:                                          ; preds = %for.end.sw.bb93_crit_edge, %for.end.sw.bb93_crit_edge318, %for.end.sw.bb93_crit_edge319, %for.end.sw.bb93_crit_edge320, %for.end.sw.bb93_crit_edge321, %for.end.sw.bb93_crit_edge322
  %idxprom95 = zext i8 %70 to i32
  %arrayidx96 = getelementptr [25 x %struct.snd_soc_dapm_widget], ptr @gbaudio_widgets, i32 0, i32 %idxprom95
  %83 = call ptr @memcpy(ptr %dw, ptr %arrayidx96, i32 180)
  br label %sw.epilog

sw.bb97:                                          ; preds = %for.end.sw.bb97_crit_edge, %for.end.sw.bb97_crit_edge323
  %idxprom99 = zext i8 %70 to i32
  %arrayidx100 = getelementptr [25 x %struct.snd_soc_dapm_widget], ptr @gbaudio_widgets, i32 0, i32 %idxprom99
  %84 = call ptr @memcpy(ptr %dw, ptr %arrayidx100, i32 180)
  %sname = getelementptr inbounds %struct.gb_audio_widget, ptr %w, i32 0, i32 1
  %sname102 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %dw, i32 0, i32 2
  %85 = ptrtoint ptr %sname102 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %sname, ptr %sname102, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb97, %sw.bb93, %sw.bb87, %sw.bb80, %sw.bb
  %name105 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %dw, i32 0, i32 1
  %86 = ptrtoint ptr %name105 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %w, ptr %name105, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_create_widget.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_create_widget, %if.then118)) #10
          to label %cleanup150 [label %if.then118], !srcloc !245

if.then118:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %module, align 4
  %89 = ptrtoint ptr %name105 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name105, align 4
  %91 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dw, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_create_widget.__UNIQUE_ID_ddebug253, ptr noundef %88, ptr noundef nonnull @.str.63, ptr noundef %90, i32 noundef %92) #10
  br label %cleanup150

error:                                            ; preds = %for.end.error_crit_edge, %gb_generate_enum_strings.exit.thread, %if.end26.error_crit_edge, %do.end21
  %ret.1 = phi i32 [ %call16, %do.end21 ], [ -22, %for.end.error_crit_edge ], [ -12, %gb_generate_enum_strings.exit.thread ], [ -12, %if.end26.error_crit_edge ]
  %widget_ctl_list125 = getelementptr inbounds %struct.gbaudio_module_info, ptr %module, i32 0, i32 38
  %93 = ptrtoint ptr %widget_ctl_list125 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %widget_ctl_list125, align 4
  %cmp136.not269 = icmp eq ptr %94, %widget_ctl_list125
  br i1 %cmp136.not269, label %error.cleanup150_crit_edge, label %error.for.body140_crit_edge

error.for.body140_crit_edge:                      ; preds = %error
  br label %for.body140

error.cleanup150_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

for.body140:                                      ; preds = %list_del.exit.for.body140_crit_edge, %error.for.body140_crit_edge
  %.pn.in270 = phi ptr [ %.pn, %list_del.exit.for.body140_crit_edge ], [ %94, %error.for.body140_crit_edge ]
  %control.0 = getelementptr i8, ptr %.pn.in270, i32 -20
  %95 = ptrtoint ptr %.pn.in270 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn = load ptr, ptr %.pn.in270, align 4
  %call.i.i242 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in270) #10
  br i1 %call.i.i242, label %if.end.i.i243, label %for.body140.list_del.exit_crit_edge

for.body140.list_del.exit_crit_edge:              ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i243:                                    ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in270, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %.pn.in270 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %.pn.in270, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i243, %for.body140.list_del.exit_crit_edge
  %102 = ptrtoint ptr %.pn.in270 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in270, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in270, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %104 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %module, align 4
  call void @devm_kfree(ptr noundef %105, ptr noundef %control.0) #10
  %cmp136.not = icmp eq ptr %.pn, %widget_ctl_list125
  br i1 %cmp136.not, label %list_del.exit.cleanup150_crit_edge, label %list_del.exit.for.body140_crit_edge

list_del.exit.for.body140_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body140

list_del.exit.cleanup150_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup150

cleanup150:                                       ; preds = %list_del.exit.cleanup150_crit_edge, %error.cleanup150_crit_edge, %if.then118, %sw.epilog, %if.then3.cleanup150_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.then3.cleanup150_crit_edge ], [ 0, %if.then118 ], [ 0, %sw.epilog ], [ %ret.1, %error.cleanup150_crit_edge ], [ %ret.1, %list_del.exit.cleanup150_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %temp_name) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbaudio_tplg_create_wcontrol(ptr nocapture noundef readonly %gb, ptr nocapture noundef writeonly %kctl, ptr noundef %ctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iface = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 2
  %0 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cond = icmp eq i8 %1, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %info = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %info, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cond10 = icmp eq i8 %3, 3
  br i1 %cond10, label %sw.bb2, label %sw.default

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @gbaudio_tplg_create_enum_ctl(ptr noundef %gb, ptr noundef %kctl, ptr noundef %ctl)
  br label %do.body

sw.default:                                       ; preds = %sw.bb
  %4 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gb, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 20, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.default.do.body_crit_edge, label %if.end.i

sw.default.do.body_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %id.i = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id.i, align 1
  %conv.i = zext i8 %7 to i32
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %call.i.i, align 4
  %data_cport.i = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 3
  %9 = ptrtoint ptr %data_cport.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %data_cport.i, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #10
  %conv1.i = zext i16 %11 to i32
  %data_cport2.i = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %call.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %data_cport2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv1.i, ptr %data_cport2.i, align 4
  %access.i = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 4
  %13 = ptrtoint ptr %access.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %access.i, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %access3.i = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %call.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %access3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %access3.i, align 4
  %count_values.i = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 6
  %17 = ptrtoint ptr %count_values.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %count_values.i, align 1
  %conv4.i = zext i8 %18 to i32
  %vcount.i = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %vcount.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv4.i, ptr %vcount.i, align 4
  %info5.i = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %call.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %info5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %info, ptr %info5.i, align 4
  %count8.i = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 5
  %21 = ptrtoint ptr %count8.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %count8.i, align 1
  %conv9.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %call.i.i to i32
  %24 = ptrtoint ptr %kctl to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %kctl, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %kctl, i32 4
  %25 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %kctl, i32 8
  %26 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %kctl, i32 12
  %27 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ctl, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %kctl, i32 16
  %28 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %.compoundliteral.sroa.5.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %kctl, i32 20
  %29 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %kctl, i32 24
  %30 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv9.i, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %kctl, i32 28
  %31 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @gbcodec_mixer_dapm_ctl_info, ptr %.compoundliteral.sroa.8.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %kctl, i32 32
  %32 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @gbcodec_mixer_dapm_ctl_get, ptr %.compoundliteral.sroa.9.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %kctl, i32 36
  %33 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @gbcodec_mixer_dapm_ctl_put, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %kctl, i32 40
  %34 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %.compoundliteral.sroa.11.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %kctl, i32 44
  %35 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %23, ptr %.compoundliteral.sroa.12.0..sroa_idx.i, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.i, %sw.default.do.body_crit_edge, %sw.bb2
  %ret.0 = phi i32 [ %call, %sw.bb2 ], [ 0, %if.end.i ], [ -12, %sw.default.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_create_wcontrol.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_create_wcontrol, %if.then)) #10
          to label %cleanup [label %if.then], !srcloc !245

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gb, align 4
  %id = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 1
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %id, align 1
  %conv9 = zext i8 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_create_wcontrol.__UNIQUE_ID_ddebug250, ptr noundef %37, ptr noundef nonnull @.str.65, ptr noundef %ctl, i32 noundef %conv9, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %if.then ], [ %ret.0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gbaudio_tplg_create_enum_ctl(ptr nocapture noundef readonly %gb, ptr nocapture noundef writeonly %kctl, ptr noundef %ctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gb, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 64, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.gb_audio_control, ptr %ctl, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %value, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %items1 = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %items1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %items1, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #10
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end.gb_generate_enum_strings.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !247

if.end.gb_generate_enum_strings.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_generate_enum_strings.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end
  %8 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gb, align 4
  %10 = extractvalue { i32, i1 } %6, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %10, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge, label %if.end.i

devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gb_generate_enum_strings.exit.thread

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19.not.i = icmp eq i32 %3, 0
  br i1 %cmp19.not.i, label %if.end.i.do.body_crit_edge, label %for.body.preheader.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.preheader.i:                             ; preds = %if.end.i
  %names.i = getelementptr inbounds %struct.gb_audio_enumerated, ptr %value, i32 0, i32 2
  %umax.i = tail call i32 @llvm.umax.i32(i32 %4, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %data.021.i = phi ptr [ %incdec.ptr.i, %while.end.i.for.body.i_crit_edge ], [ %names.i, %for.body.preheader.i ]
  %i.020.i = phi i32 [ %inc.i, %while.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr ptr, ptr %call5.i.i.i, i32 %i.020.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data.021.i, ptr %arrayidx.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body.i
  %data.1.i = phi ptr [ %data.021.i, %for.body.i ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %12 = ptrtoint ptr %data.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.1.i, align 1
  %cmp2.not.i = icmp eq i8 %13, 0
  %incdec.ptr.i = getelementptr i8, ptr %data.1.i, i32 1
  br i1 %cmp2.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %inc.i = add nuw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %while.end.i.do.body_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

while.end.i.do.body_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

gb_generate_enum_strings.exit.thread:             ; preds = %devm_kcalloc.exit.i.gb_generate_enum_strings.exit.thread_crit_edge, %if.end.gb_generate_enum_strings.exit.thread_crit_edge
  %texts60 = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %texts60 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %texts60, align 4
  br label %cleanup

do.body:                                          ; preds = %while.end.i.do.body_crit_edge, %if.end.i.do.body_crit_edge
  %texts.sink = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %texts.sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i.i, ptr %texts.sink, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_create_enum_ctl.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_create_enum_ctl, %if.then11)) #10
          to label %do.end [label %if.then11], !srcloc !245

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gb, align 4
  %18 = ptrtoint ptr %items1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %items1, align 4
  %names_length = getelementptr inbounds %struct.gb_audio_enumerated, ptr %value, i32 0, i32 1
  %20 = ptrtoint ptr %names_length to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %names_length, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_create_enum_ctl.__UNIQUE_ID_ddebug248, ptr noundef %17, ptr noundef nonnull @.str.30, i32 noundef %19, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %23 = ptrtoint ptr %items1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %items1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp69.not = icmp eq i32 %24, 0
  br i1 %cmp69.not, label %do.end.for.end_crit_edge, label %do.end.do.body17_crit_edge

do.end.do.body17_crit_edge:                       ; preds = %do.end
  br label %do.body17

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body17:                                        ; preds = %for.inc.do.body17_crit_edge, %do.end.do.body17_crit_edge
  %i.070 = phi i32 [ %inc, %for.inc.do.body17_crit_edge ], [ 0, %do.end.do.body17_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_tplg_create_enum_ctl.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_tplg_create_enum_ctl, %if.then29)) #10
          to label %for.inc [label %if.then29], !srcloc !245

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gb, align 4
  %27 = ptrtoint ptr %texts.sink to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %texts.sink, align 4
  %arrayidx = getelementptr ptr, ptr %28, i32 %i.070
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_tplg_create_enum_ctl.__UNIQUE_ID_ddebug249, ptr noundef %26, ptr noundef nonnull @.str.31, i32 noundef %i.070, ptr noundef %30) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %do.body17
  %inc = add nuw i32 %i.070, 1
  %31 = ptrtoint ptr %items1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %items1, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %for.inc.do.body17_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.do.body17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %33 = ptrtoint ptr %call.i to i32
  %34 = ptrtoint ptr %kctl to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %kctl, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 4
  %35 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 8
  %36 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 12
  %37 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ctl, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 16
  %38 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 20
  %39 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 24
  %40 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 28
  %41 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @snd_soc_info_enum_double, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %.compoundliteral.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 32
  %42 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @gbcodec_enum_dapm_ctl_get, ptr %.compoundliteral.sroa.9.0..sroa_idx, align 4
  %.compoundliteral.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 36
  %43 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @gbcodec_enum_dapm_ctl_put, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 4
  %.compoundliteral.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 40
  %44 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %.compoundliteral.sroa.11.0..sroa_idx, align 4
  %.compoundliteral.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %kctl, i32 44
  %45 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %33, ptr %.compoundliteral.sroa.12.0..sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %gb_generate_enum_strings.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %gb_generate_enum_strings.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_enum_dapm_ctl_get(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %gbvalue = alloca %struct.gb_audio_ctl_elem_value, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %widgets = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %widgets, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gbvalue) #10
  %4 = getelementptr inbounds %struct.gb_audio_ctl_elem_value, ptr %gbvalue, i32 0, i32 1
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 4
  %5 = call ptr @memset(ptr %gbvalue, i32 255, i32 24)
  %6 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dapm, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %12 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %private_value, align 4
  %14 = inttoptr i32 %13 to ptr
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call1 = tail call fastcc ptr @find_gb_module(ptr noundef %11, ptr noundef %name)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %widget_ctl_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %call1, i32 0, i32 38
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %widget_ctl_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %15 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %widget_ctl_list.i
  br i1 %cmp.not.i, label %gbaudio_map_wcontrolname.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %wname.i = getelementptr i8, ptr %.pn.i, i32 -12
  %16 = ptrtoint ptr %wname.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wname.i, align 4
  %call.i = tail call i32 @strncmp(ptr noundef %17, ptr noundef %name, i32 noundef 32) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %gbaudio_map_wcontrolname.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

gbaudio_map_wcontrolname.exit.thread:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.39, ptr noundef %name) #13
  br label %cleanup

gbaudio_map_wcontrolname.exit:                    ; preds = %for.body.i
  %control.0.le.i = getelementptr i8, ptr %.pn.i, i32 -20
  %20 = ptrtoint ptr %control.0.le.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %control.0.le.i, align 4
  %22 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call1, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %23, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i66, label %if.end12

do.end.i66:                                       ; preds = %gbaudio_map_wcontrolname.exit
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #13
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i66.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i66.cleanup_crit_edge:                     ; preds = %do.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  br label %cleanup

if.end12:                                         ; preds = %gbaudio_map_wcontrolname.exit
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %call1, i32 0, i32 21
  %25 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mgmt_connection, align 4
  %call13 = call i32 @gb_audio_gb_get_control(ptr noundef %26, i8 noundef zeroext %21, i8 noundef zeroext -1, ptr noundef nonnull %gbvalue) #10
  %call.i.i68 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 22
  %27 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store volatile i64 %call.i.i68, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end27, label %do.body

do.body:                                          ; preds = %if.end12
  %call17 = call i32 @___ratelimit(ptr noundef nonnull @gbcodec_enum_dapm_ctl_get._rs, ptr noundef nonnull @__func__.gbcodec_enum_dapm_ctl_get) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33, i32 noundef %call13, ptr noundef nonnull @__func__.gbcodec_enum_dapm_ctl_get, ptr noundef %name) #13
  br label %cleanup

if.end27:                                         ; preds = %if.end12
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %4, align 8
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %value29 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %31 = ptrtoint ptr %value29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %value29, align 8
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %14, i32 0, i32 1
  %32 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %shift_l, align 4
  %shift_r = getelementptr inbounds %struct.soc_enum, ptr %14, i32 0, i32 2
  %34 = ptrtoint ptr %shift_r to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %shift_r, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp33.not = icmp eq i8 %33, %35
  br i1 %cmp33.not, label %if.end27.cleanup_crit_edge, label %if.then35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx37 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx37, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %arrayidx39 = getelementptr [128 x i32], ptr %value29, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end27.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %do.end11.i.i.i.i.i, %do.end.i66.cleanup_crit_edge, %gbaudio_map_wcontrolname.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call13, %do.end ], [ %call13, %do.body.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %if.end27.cleanup_crit_edge ], [ -22, %gbaudio_map_wcontrolname.exit.thread ], [ %call.i.i, %do.end.i66.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gbvalue) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_enum_dapm_ctl_put(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %gbvalue = alloca %struct.gb_audio_ctl_elem_value, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %widgets = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %widgets, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gbvalue) #10
  %4 = getelementptr inbounds %struct.gb_audio_ctl_elem_value, ptr %gbvalue, i32 0, i32 1
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 4
  %5 = call ptr @memset(ptr %gbvalue, i32 255, i32 24)
  %6 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dapm, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %10 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private_value, align 4
  %12 = inttoptr i32 %11 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 8
  %items = getelementptr inbounds %struct.soc_enum, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %items, align 4
  %sub = add i32 %16, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub)
  %cmp = icmp ugt i32 %14, %sub
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call2 = tail call fastcc ptr @find_gb_module(ptr noundef %18, ptr noundef %name)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %widget_ctl_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %call2, i32 0, i32 38
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4
  %.pn.in.i = phi ptr [ %widget_ctl_list.i, %if.end4 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %19 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %widget_ctl_list.i
  br i1 %cmp.not.i, label %gbaudio_map_wcontrolname.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %wname.i = getelementptr i8, ptr %.pn.i, i32 -12
  %20 = ptrtoint ptr %wname.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wname.i, align 4
  %call.i = tail call i32 @strncmp(ptr noundef %21, ptr noundef %name, i32 noundef 32) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %gbaudio_map_wcontrolname.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

gbaudio_map_wcontrolname.exit.thread:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call2, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.39, ptr noundef %name) #13
  br label %cleanup

gbaudio_map_wcontrolname.exit:                    ; preds = %for.body.i
  %control.0.le.i = getelementptr i8, ptr %.pn.i, i32 -20
  %24 = ptrtoint ptr %control.0.le.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %control.0.le.i, align 4
  %26 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call2, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %27, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i185, label %if.end16

do.end.i185:                                      ; preds = %gbaudio_map_wcontrolname.exit
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #13
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i185.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i185.cleanup_crit_edge:                    ; preds = %do.end.i185
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i185
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  br label %cleanup

if.end16:                                         ; preds = %gbaudio_map_wcontrolname.exit
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %call2, i32 0, i32 21
  %29 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mgmt_connection, align 4
  %call17 = call i32 @gb_audio_gb_get_control(ptr noundef %30, i8 noundef zeroext %25, i8 noundef zeroext -1, ptr noundef nonnull %gbvalue) #10
  %call.i.i187 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 12, i32 22
  %31 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store volatile i64 %call.i.i187, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %if.end31, label %do.body

do.body:                                          ; preds = %if.end16
  %call21 = call i32 @___ratelimit(ptr noundef nonnull @gbcodec_enum_dapm_ctl_put._rs, ptr noundef nonnull @__func__.gbcodec_enum_dapm_ctl_put) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33, i32 noundef %call17, ptr noundef nonnull @__func__.gbcodec_enum_dapm_ctl_put, ptr noundef %name) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end16
  %32 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value, align 8
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %12, i32 0, i32 1
  %34 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %shift_l, align 4
  %conv34 = zext i8 %35 to i32
  %shl = shl i32 %33, %conv34
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %4, align 8
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %33)
  %cmp43.not = icmp eq i32 %38, %33
  br i1 %cmp43.not, label %if.end31.if.end50_crit_edge, label %if.then45

if.end31.if.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then45:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %39 = call i32 @llvm.bswap.i32(i32 %33)
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %4, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end31.if.end50_crit_edge
  %41 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %shift_l, align 4
  %shift_r = getelementptr inbounds %struct.soc_enum, ptr %12, i32 0, i32 2
  %43 = ptrtoint ptr %shift_r to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %shift_r, align 1
  %conv53 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %44)
  %cmp54.not = icmp eq i8 %42, %44
  br i1 %cmp54.not, label %if.end50.if.end87_crit_edge, label %if.then56

if.end50.if.end87_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then56:                                        ; preds = %if.end50
  %arrayidx58 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx58, align 4
  %47 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %items, align 4
  %sub60 = add i32 %48, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %sub60)
  %cmp61 = icmp ugt i32 %46, %sub60
  br i1 %cmp61, label %if.then56.cleanup_crit_edge, label %if.end64

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end64:                                         ; preds = %if.then56
  %shl69 = shl i32 %46, %conv53
  %or = or i32 %shl69, %shl
  %arrayidx76 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx76, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %46)
  %cmp79.not = icmp eq i32 %51, %46
  br i1 %cmp79.not, label %if.end64.if.end87_crit_edge, label %if.end87.thread

if.end64.if.end87_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.end87.thread:                                  ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %52 = call i32 @llvm.bswap.i32(i32 %46)
  %53 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx76, align 4
  br label %if.then89

if.end87:                                         ; preds = %if.end64.if.end87_crit_edge, %if.end50.if.end87_crit_edge
  %val.0 = phi i32 [ %or, %if.end64.if.end87_crit_edge ], [ %shl, %if.end50.if.end87_crit_edge ]
  br i1 %cmp43.not, label %if.end87.cleanup_crit_edge, label %if.end87.if.then89_crit_edge

if.end87.if.then89_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then89

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then89:                                        ; preds = %if.end87.if.then89_crit_edge, %if.end87.thread
  %val.0198 = phi i32 [ %or, %if.end87.thread ], [ %val.0, %if.end87.if.then89_crit_edge ]
  %call90 = call fastcc i32 @gb_pm_runtime_get_sync(ptr noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.then89.cleanup_crit_edge

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end93:                                         ; preds = %if.then89
  %54 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mgmt_connection, align 4
  %call96 = call i32 @gb_audio_gb_set_control(ptr noundef %55, i8 noundef zeroext %25, i8 noundef zeroext -1, ptr noundef nonnull %gbvalue) #10
  %call.i.i188 = call i64 @ktime_get_mono_fast_ns() #10
  %56 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store volatile i64 %call.i.i188, ptr %last_busy.i.i, align 8
  %call.i1.i190 = call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool98.not = icmp eq i32 %call96, 0
  br i1 %tobool98.not, label %if.end93.if.end113_crit_edge, label %do.body100

if.end93.if.end113_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

do.body100:                                       ; preds = %if.end93
  %call101 = call i32 @___ratelimit(ptr noundef nonnull @gbcodec_enum_dapm_ctl_put._rs.68, ptr noundef nonnull @__func__.gbcodec_enum_dapm_ctl_put) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %do.body100.if.end113_crit_edge, label %do.end106

do.body100.if.end113_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

do.end106:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33, i32 noundef %call96, ptr noundef nonnull @__func__.gbcodec_enum_dapm_ctl_put, ptr noundef %name) #13
  br label %if.end113

if.end113:                                        ; preds = %do.end106, %do.body100.if.end113_crit_edge, %if.end93.if.end113_crit_edge
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp114201 = icmp sgt i32 %58, 0
  br i1 %cmp114201, label %if.end113.for.body_crit_edge, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end113.for.body_crit_edge:                     ; preds = %if.end113
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end113.for.body_crit_edge
  %wi.0202 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end113.for.body_crit_edge ]
  %arrayidx117 = getelementptr %struct.snd_soc_dapm_widget_list, ptr %1, i32 0, i32 1, i32 %wi.0202
  %59 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx117, align 4
  %dapm118 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %dapm118 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dapm118, align 4
  %call119 = call i32 @snd_soc_dapm_mux_update_power(ptr noundef %62, ptr noundef %kcontrol, i32 noundef %val.0198, ptr noundef %12, ptr noundef null) #10
  %inc = add nuw nsw i32 %wi.0202, 1
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %1, align 4
  %cmp114 = icmp slt i32 %inc, %64
  br i1 %cmp114, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %if.then89.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %do.end11.i.i.i.i.i, %do.end.i185.cleanup_crit_edge, %gbaudio_map_wcontrolname.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call17, %do.end ], [ %call17, %do.body.cleanup_crit_edge ], [ -22, %if.then56.cleanup_crit_edge ], [ %call90, %if.then89.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ], [ -22, %gbaudio_map_wcontrolname.exit.thread ], [ %call.i.i, %do.end.i185.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ], [ 1, %if.end113.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gbvalue) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mux_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_mixer_dapm_ctl_info(ptr noundef %kcontrol, ptr nocapture noundef writeonly %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %info1 = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info1, align 4
  %value = getelementptr inbounds %struct.gb_audio_ctl_elem_info, ptr %4, i32 0, i32 2
  %max = getelementptr inbounds %struct.gb_audio_integer, ptr %value, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %max, align 1
  %7 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp = icmp eq i32 %6, 16777216
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call = tail call ptr @strnstr(ptr noundef %name, ptr noundef nonnull @.str.71, i32 noundef 44) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i32 [ 2, %if.else ], [ 1, %land.lhs.true.if.end_crit_edge ]
  %type3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %9 = ptrtoint ptr %type3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %type3, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %6)
  %11 = tail call i32 @llvm.bswap.i32(i32 %8)
  %vcount = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %2, i32 0, i32 3
  %12 = ptrtoint ptr %vcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vcount, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %count, align 8
  %value4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %15 = ptrtoint ptr %value4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %value4, align 8
  %max7 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %max7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %10, ptr %max7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_mixer_dapm_ctl_get(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %gbvalue = alloca %struct.gb_audio_ctl_elem_value, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gbvalue) #10
  %0 = getelementptr inbounds %struct.gb_audio_ctl_elem_value, ptr %gbvalue, i32 0, i32 1
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %1 = call ptr @memset(ptr %gbvalue, i32 255, i32 24)
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %widgets = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %widgets, align 4
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dapm, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbcodec_mixer_dapm_ctl_get.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbcodec_mixer_dapm_ctl_get, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbcodec_mixer_dapm_ctl_get.__UNIQUE_ID_ddebug243, ptr noundef %9, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.72, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name5 = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call7 = tail call fastcc ptr @find_gb_module(ptr noundef %11, ptr noundef %name5)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %12 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %private_value, align 4
  %14 = inttoptr i32 %13 to ptr
  %15 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7, align 4
  %vcount = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %vcount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp eq i32 %18, 2
  br i1 %cmp, label %do.end16, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dapm, align 4
  %dev18 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.73, ptr noundef %name5) #13
  br label %if.end22

if.end22:                                         ; preds = %do.end16, %if.end10.if.end22_crit_edge
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end26

do.end.i:                                         ; preds = %if.end22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #13
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %call7, i32 0, i32 21
  %24 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mgmt_connection, align 4
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %14, align 4
  %conv = trunc i32 %27 to i8
  %call27 = call i32 @gb_audio_gb_get_control(ptr noundef %25, i8 noundef zeroext %conv, i8 noundef zeroext -1, ptr noundef nonnull %gbvalue) #10
  %call.i.i74 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i.i74, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool29.not = icmp eq i32 %call27, 0
  br i1 %tobool29.not, label %if.end44, label %do.body31

do.body31:                                        ; preds = %if.end26
  %call32 = call i32 @___ratelimit(ptr noundef nonnull @gbcodec_mixer_dapm_ctl_get._rs, ptr noundef nonnull @.str.72) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body31.cleanup_crit_edge, label %do.end37

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33, i32 noundef %call27, ptr noundef nonnull @.str.72, ptr noundef %name5) #13
  br label %cleanup

if.end44:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %0, align 8
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %value46 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %32 = ptrtoint ptr %value46 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %value46, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end37, %do.body31.cleanup_crit_edge, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -22, %do.end.cleanup_crit_edge ], [ %call27, %do.end37 ], [ %call27, %do.body31.cleanup_crit_edge ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gbvalue) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbcodec_mixer_dapm_ctl_put(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %gbvalue = alloca %struct.gb_audio_ctl_elem_value, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %gbvalue) #10
  %0 = getelementptr inbounds %struct.gb_audio_ctl_elem_value, ptr %gbvalue, i32 0, i32 1
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %1 = call ptr @memset(ptr %gbvalue, i32 255, i32 24)
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %widgets = getelementptr inbounds %struct.snd_soc_dapm_widget_list, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %widgets, align 4
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dapm, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbcodec_mixer_dapm_ctl_put.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbcodec_mixer_dapm_ctl_put, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbcodec_mixer_dapm_ctl_put.__UNIQUE_ID_ddebug244, ptr noundef %9, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.76, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name5 = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call7 = tail call fastcc ptr @find_gb_module(ptr noundef %11, ptr noundef %name5)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %12 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %private_value, align 4
  %14 = inttoptr i32 %13 to ptr
  %info11 = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %info11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info11, align 4
  %17 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7, align 4
  %vcount = getelementptr inbounds %struct.gbaudio_ctl_pvt, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %vcount to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp eq i32 %20, 2
  br i1 %cmp, label %do.end17, label %if.end10.if.end23_crit_edge

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dapm, align 4
  %dev19 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.73, ptr noundef %name5) #13
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %if.end10.if.end23_crit_edge
  %value = getelementptr inbounds %struct.gb_audio_ctl_elem_info, ptr %16, i32 0, i32 2
  %max24 = getelementptr inbounds %struct.gb_audio_integer, ptr %value, i32 0, i32 1
  %25 = ptrtoint ptr %max24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %max24, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %27, i1 true) #10, !range !251
  %sub.i = sub nuw nsw i32 32, %28
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %value26 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %29 = ptrtoint ptr %value26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value26, align 8
  %and = and i32 %sub, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28 = icmp ne i32 %and, 0
  %lnot.ext32 = zext i1 %tobool28 to i32
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end36

do.end.i:                                         ; preds = %if.end23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #13
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  br label %cleanup

if.end36:                                         ; preds = %if.end23
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %call7, i32 0, i32 21
  %32 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mgmt_connection, align 4
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %14, align 4
  %conv = trunc i32 %35 to i8
  %call37 = call i32 @gb_audio_gb_get_control(ptr noundef %33, i8 noundef zeroext %conv, i8 noundef zeroext -1, ptr noundef nonnull %gbvalue) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.exit_crit_edge

if.end36.exit_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end40:                                         ; preds = %if.end36
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %0, align 8
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %and)
  %cmp43.not = icmp eq i32 %38, %and
  br i1 %cmp43.not, label %if.end40.exit_crit_edge, label %for.cond.preheader

if.end40.exit_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

for.cond.preheader:                               ; preds = %if.end40
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp46125 = icmp sgt i32 %40, 0
  br i1 %cmp46125, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %wi.0126 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx49 = getelementptr %struct.snd_soc_dapm_widget_list, ptr %3, i32 0, i32 1, i32 %wi.0126
  %41 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx49, align 4
  %dapm50 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %dapm50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dapm50, align 4
  %call51 = call i32 @snd_soc_dapm_mixer_update_power(ptr noundef %44, ptr noundef %kcontrol, i32 noundef %lnot.ext32, ptr noundef null) #10
  %inc = add nuw nsw i32 %wi.0126, 1
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %3, align 4
  %cmp46 = icmp slt i32 %inc, %46
  br i1 %cmp46, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %47 = ptrtoint ptr %value26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %value26, align 8
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %0, align 8
  %51 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mgmt_connection, align 4
  %53 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %14, align 4
  %conv58 = trunc i32 %54 to i8
  %call59 = call i32 @gb_audio_gb_set_control(ptr noundef %52, i8 noundef zeroext %conv58, i8 noundef zeroext -1, ptr noundef nonnull %gbvalue) #10
  br label %exit

exit:                                             ; preds = %for.end, %if.end40.exit_crit_edge, %if.end36.exit_crit_edge
  %ret.0 = phi i32 [ %call37, %if.end36.exit_crit_edge ], [ %call59, %for.end ], [ 0, %if.end40.exit_crit_edge ]
  %call.i.i121 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 22
  %55 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store volatile i64 %call.i.i121, ptr %last_busy.i.i, align 8
  %call.i1.i = call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool62.not = icmp eq i32 %ret.0, 0
  br i1 %tobool62.not, label %exit.cleanup_crit_edge, label %do.body64

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body64:                                        ; preds = %exit
  %call65 = call i32 @___ratelimit(ptr noundef nonnull @gbcodec_mixer_dapm_ctl_put._rs, ptr noundef nonnull @.str.76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body64.cleanup_crit_edge, label %do.end70

do.body64.cleanup_crit_edge:                      ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33, i32 noundef %ret.0, ptr noundef nonnull @.str.76, ptr noundef %name5) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %do.body64.cleanup_crit_edge, %exit.cleanup_crit_edge, %do.end11.i.i.i.i.i, %do.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %ret.0, %do.body64.cleanup_crit_edge ], [ %ret.0, %do.end70 ], [ 0, %exit.cleanup_crit_edge ], [ %call.i.i, %do.end.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %gbvalue) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mixer_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gbaudio_widget_event(ptr noundef %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gbaudio_widget_event.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gbaudio_widget_event, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gbaudio_widget_event.__UNIQUE_ID_ddebug251, ptr noundef %3, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, ptr noundef %7, i32 noundef %event) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %8 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name4, align 4
  %call5 = tail call fastcc ptr @find_gb_module(ptr noundef %5, ptr noundef %9)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %10 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name4, align 4
  %widget_list.i = getelementptr inbounds %struct.gbaudio_module_info, ptr %call5, i32 0, i32 36
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end8
  %.pn.in.i = phi ptr [ %widget_list.i, %if.end8 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %widget_list.i
  br i1 %cmp.not.i, label %gbaudio_map_widgetname.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %name2.i = getelementptr i8, ptr %.pn.i, i32 -4
  %13 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name2.i, align 4
  %call.i = tail call i32 @strncmp(ptr noundef %14, ptr noundef %11, i32 noundef 32) #10
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %gbaudio_map_widgetname.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

gbaudio_map_widgetname.exit.thread:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.86, ptr noundef %11) #13
  %17 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.82, ptr noundef %18) #13
  br label %cleanup

gbaudio_map_widgetname.exit:                      ; preds = %for.body.i
  %widget.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %19 = ptrtoint ptr %widget.0.le.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %widget.0.le.i, align 4
  %conv.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call5, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %22, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i85, label %if.end22

do.end.i85:                                       ; preds = %gbaudio_map_widgetname.exit
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #13
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !249
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i85.cleanup_crit_edge, label %do.end11.i.i.i.i.i

do.end.i85.cleanup_crit_edge:                     ; preds = %do.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %do.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  br label %cleanup

if.end22:                                         ; preds = %gbaudio_map_widgetname.exit
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %event, label %if.end22.if.end48_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb28
  ]

if.end22.if.end48_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

sw.bb:                                            ; preds = %if.end22
  %mgmt_connection = getelementptr inbounds %struct.gbaudio_module_info, ptr %call5, i32 0, i32 21
  %25 = ptrtoint ptr %mgmt_connection to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mgmt_connection, align 4
  %call23 = tail call i32 @gb_audio_gb_enable_widget(ptr noundef %26, i8 noundef zeroext %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.do.body38_crit_edge

sw.bb.do.body38_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end22
  %mgmt_connection29 = getelementptr inbounds %struct.gbaudio_module_info, ptr %call5, i32 0, i32 21
  %27 = ptrtoint ptr %mgmt_connection29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mgmt_connection29, align 4
  %call31 = tail call i32 @gb_audio_gb_disable_widget(ptr noundef %28, i8 noundef zeroext %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %sw.bb28.sw.epilog_crit_edge, label %sw.bb28.do.body38_crit_edge

sw.bb28.do.body38_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

sw.bb28.sw.epilog_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb.sw.epilog_crit_edge ], [ 0, %sw.bb28.sw.epilog_crit_edge ]
  %call34 = tail call i32 @gbaudio_module_update(ptr noundef %5, ptr noundef %w, ptr noundef nonnull %call5, i32 noundef %.sink) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool36.not = icmp eq i32 %call34, 0
  br i1 %tobool36.not, label %sw.epilog.if.end48_crit_edge, label %sw.epilog.do.body38_crit_edge

sw.epilog.do.body38_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

sw.epilog.if.end48_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.body38:                                        ; preds = %sw.epilog.do.body38_crit_edge, %sw.bb28.do.body38_crit_edge, %sw.bb.do.body38_crit_edge
  %ret.095 = phi i32 [ %call34, %sw.epilog.do.body38_crit_edge ], [ %call23, %sw.bb.do.body38_crit_edge ], [ %call31, %sw.bb28.do.body38_crit_edge ]
  %call39 = tail call i32 @___ratelimit(ptr noundef nonnull @gbaudio_widget_event._rs, ptr noundef nonnull @.str.80) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body38.if.end48_crit_edge, label %do.end44

do.body38.if.end48_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.84, i32 noundef %conv.i, i32 noundef %event, i32 noundef %ret.095) #13
  br label %if.end48

if.end48:                                         ; preds = %do.end44, %do.body38.if.end48_crit_edge, %sw.epilog.if.end48_crit_edge, %if.end22.if.end48_crit_edge
  %ret.096 = phi i32 [ %ret.095, %do.body38.if.end48_crit_edge ], [ %ret.095, %do.end44 ], [ 0, %sw.epilog.if.end48_crit_edge ], [ 0, %if.end22.if.end48_crit_edge ]
  %call.i.i87 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i.i87, ptr %last_busy.i.i, align 8
  %call.i1.i = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end11.i.i.i.i.i, %do.end.i85.cleanup_crit_edge, %gbaudio_map_widgetname.exit.thread, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %gbaudio_map_widgetname.exit.thread ], [ %ret.096, %if.end48 ], [ -22, %do.end.cleanup_crit_edge ], [ %call.i.i, %do.end.i85.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gbcodec_event_int_mic(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %k, i32 noundef %event) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gbcodec_event_hp(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %k, i32 noundef %event) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gbcodec_event_spk(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %k, i32 noundef %event) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_enable_widget(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gbaudio_module_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_audio_gb_disable_widget(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !69, !70, !71, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !148, !149, !151, !152, !153, !155, !156, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !194, !195, !197, !198, !199, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1372, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gbaudio_tplg_parse_data._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gbaudio_tplg_parse_data._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1381, i32 3}
!10 = !{ptr @gbaudio_tplg_parse_data._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @gbaudio_tplg_parse_data._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1385, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug260, !13, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1391, i32 3}
!18 = !{ptr @gbaudio_tplg_parse_data._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @gbaudio_tplg_parse_data._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1395, i32 2}
!22 = !{ptr @gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug261, !21, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1401, i32 3}
!25 = !{ptr @gbaudio_tplg_parse_data._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @gbaudio_tplg_parse_data._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1405, i32 2}
!29 = !{ptr @gbaudio_tplg_parse_data.__UNIQUE_ID_ddebug262, !28, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1349, i32 2}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug256, !31, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1350, i32 2}
!36 = !{ptr @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug257, !35, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1352, i32 2}
!39 = !{ptr @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug258, !38, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1353, i32 2}
!42 = !{ptr @gbaudio_tplg_process_header.__UNIQUE_ID_ddebug259, !41, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1168, i32 4}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @gbaudio_tplg_process_kcontrols._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @gbaudio_tplg_process_kcontrols._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1182, i32 44}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1205, i32 3}
!52 = !{ptr @gbaudio_tplg_process_kcontrols.__UNIQUE_ID_ddebug254, !51, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/greybus/audio_topology.c", i32 710, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @gbaudio_tplg_create_kcontrol.__UNIQUE_ID_ddebug247, !54, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/greybus/audio_topology.c", i32 665, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @gbaudio_tplg_create_enum_kctl.__UNIQUE_ID_ddebug245, !58, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/greybus/audio_topology.c", i32 668, i32 3}
!63 = !{ptr @gbaudio_tplg_create_enum_kctl.__UNIQUE_ID_ddebug246, !62, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/greybus/audio_topology.c", i32 580, i32 3}
!66 = !{ptr @gbcodec_enum_ctl_get._rs, !65, !"_rs", i1 false, i1 false}
!67 = !{ptr @__func__.gbcodec_enum_ctl_get, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @gbcodec_enum_ctl_get._entry, !65, !"_entry", i1 false, i1 false}
!70 = !{ptr @gbcodec_enum_ctl_get._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/greybus/audio_topology.c", i32 38, i32 19}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/greybus/audio_topology.c", i32 41, i32 2}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @find_gb_module.__UNIQUE_ID_ddebug239, !74, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/greybus/audio_topology.c", i32 51, i32 2}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @find_gb_module._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @find_gb_module._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/greybus/audio_topology.c", i32 95, i32 2}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @gbaudio_map_controlname._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @gbaudio_map_controlname._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/greybus/bundle.h", i32 53, i32 3}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @gb_pm_runtime_get_sync._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @gb_pm_runtime_get_sync._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @gbcodec_enum_ctl_put._rs, !94, !"_rs", i1 false, i1 false}
!94 = !{!"../drivers/staging/greybus/audio_topology.c", i32 637, i32 3}
!95 = !{ptr @__func__.gbcodec_enum_ctl_put, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @gbcodec_enum_ctl_put._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @gbcodec_enum_ctl_put._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/greybus/audio_topology.c", i32 176, i32 2}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @gbcodec_mixer_ctl_info.__UNIQUE_ID_ddebug240, !99, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/greybus/audio_topology.c", i32 181, i32 3}
!104 = !{ptr @gbcodec_mixer_ctl_info._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @gbcodec_mixer_ctl_info._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/greybus/audio_topology.c", i32 209, i32 3}
!108 = !{ptr @gbcodec_mixer_ctl_info._entry.47, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @gbcodec_mixer_ctl_info._entry_ptr.49, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/greybus/audio_topology.c", i32 228, i32 2}
!112 = !{ptr @gbcodec_mixer_ctl_get.__UNIQUE_ID_ddebug241, !111, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!113 = !{ptr @gbcodec_mixer_ctl_get._rs, !114, !"_rs", i1 false, i1 false}
!114 = !{!"../drivers/staging/greybus/audio_topology.c", i32 247, i32 3}
!115 = !{ptr @gbcodec_mixer_ctl_get._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @gbcodec_mixer_ctl_get._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @gbcodec_mixer_ctl_get._entry.51, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/staging/greybus/audio_topology.c", i32 270, i32 3}
!119 = !{ptr @gbcodec_mixer_ctl_get._entry_ptr.52, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/greybus/audio_topology.c", i32 290, i32 2}
!122 = !{ptr @gbcodec_mixer_ctl_put.__UNIQUE_ID_ddebug242, !121, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!123 = !{ptr @gbcodec_mixer_ctl_put._entry, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/staging/greybus/audio_topology.c", i32 317, i32 3}
!125 = !{ptr @gbcodec_mixer_ctl_put._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @gbcodec_mixer_ctl_put._rs, !127, !"_rs", i1 false, i1 false}
!127 = !{!"../drivers/staging/greybus/audio_topology.c", i32 336, i32 3}
!128 = !{ptr @gbcodec_mixer_ctl_put._entry.54, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @gbcodec_mixer_ctl_put._entry_ptr.55, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1241, i32 4}
!132 = !{ptr @gbaudio_tplg_process_widgets._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @gbaudio_tplg_process_widgets._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1035, i32 3}
!136 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @gbaudio_tplg_create_widget._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @gbaudio_tplg_create_widget._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1056, i32 4}
!141 = !{ptr @gbaudio_tplg_create_widget._entry.59, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @gbaudio_tplg_create_widget._entry_ptr.61, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1094, i32 3}
!145 = !{ptr @gbaudio_tplg_create_widget.__UNIQUE_ID_ddebug252, !144, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1136, i32 2}
!148 = !{ptr @gbaudio_tplg_create_widget.__UNIQUE_ID_ddebug253, !147, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/greybus/audio_topology.c", i32 927, i32 2}
!151 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @gbaudio_tplg_create_wcontrol.__UNIQUE_ID_ddebug250, !150, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/greybus/audio_topology.c", i32 874, i32 2}
!155 = !{ptr @gbaudio_tplg_create_enum_ctl.__UNIQUE_ID_ddebug248, !154, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!156 = !{ptr @gbaudio_tplg_create_enum_ctl.__UNIQUE_ID_ddebug249, !157, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!157 = !{!"../drivers/staging/greybus/audio_topology.c", i32 877, i32 3}
!158 = !{ptr @gbcodec_enum_dapm_ctl_get._rs, !159, !"_rs", i1 false, i1 false}
!159 = !{!"../drivers/staging/greybus/audio_topology.c", i32 747, i32 3}
!160 = !{ptr @__func__.gbcodec_enum_dapm_ctl_get, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @gbcodec_enum_dapm_ctl_get._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @gbcodec_enum_dapm_ctl_get._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.67, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/staging/greybus/audio_topology.c", i32 109, i32 2}
!165 = !{ptr @gbaudio_map_wcontrolname._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @gbaudio_map_wcontrolname._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @gbcodec_enum_dapm_ctl_put._rs, !168, !"_rs", i1 false, i1 false}
!168 = !{!"../drivers/staging/greybus/audio_topology.c", i32 799, i32 3}
!169 = !{ptr @__func__.gbcodec_enum_dapm_ctl_put, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @gbcodec_enum_dapm_ctl_put._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @gbcodec_enum_dapm_ctl_put._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @gbcodec_enum_dapm_ctl_put._rs.68, !173, !"_rs", i1 false, i1 false}
!173 = !{!"../drivers/staging/greybus/audio_topology.c", i32 839, i32 4}
!174 = !{ptr @gbcodec_enum_dapm_ctl_put._entry.69, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @gbcodec_enum_dapm_ctl_put._entry_ptr.70, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/staging/greybus/audio_topology.c", i32 369, i32 34}
!178 = !{ptr @.str.72, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/staging/greybus/audio_topology.c", i32 394, i32 2}
!180 = !{ptr @gbcodec_mixer_dapm_ctl_get.__UNIQUE_ID_ddebug243, !179, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/staging/greybus/audio_topology.c", i32 403, i32 3}
!183 = !{ptr @gbcodec_mixer_dapm_ctl_get._entry, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @gbcodec_mixer_dapm_ctl_get._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @gbcodec_mixer_dapm_ctl_get._rs, !186, !"_rs", i1 false, i1 false}
!186 = !{!"../drivers/staging/greybus/audio_topology.c", i32 417, i32 3}
!187 = !{ptr @gbcodec_mixer_dapm_ctl_get._entry.74, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @gbcodec_mixer_dapm_ctl_get._entry_ptr.75, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/staging/greybus/audio_topology.c", i32 443, i32 2}
!191 = !{ptr @gbcodec_mixer_dapm_ctl_put.__UNIQUE_ID_ddebug244, !190, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!192 = !{ptr @gbcodec_mixer_dapm_ctl_put._entry, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../drivers/staging/greybus/audio_topology.c", i32 453, i32 3}
!194 = !{ptr @gbcodec_mixer_dapm_ctl_put._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @gbcodec_mixer_dapm_ctl_put._rs, !196, !"_rs", i1 false, i1 false}
!196 = !{!"../drivers/staging/greybus/audio_topology.c", i32 489, i32 3}
!197 = !{ptr @gbcodec_mixer_dapm_ctl_put._entry.77, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @gbcodec_mixer_dapm_ctl_put._entry_ptr.78, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @gbaudio_widgets, !200, !"gbaudio_widgets", i1 false, i1 false}
!200 = !{!"../drivers/staging/greybus/audio_topology.c", i32 984, i32 41}
!201 = !{ptr @.str.80, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/staging/greybus/audio_topology.c", i32 942, i32 2}
!203 = !{ptr @.str.81, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @gbaudio_widget_event.__UNIQUE_ID_ddebug251, !202, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!205 = !{ptr @.str.82, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/staging/greybus/audio_topology.c", i32 952, i32 3}
!207 = !{ptr @gbaudio_widget_event._entry, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @gbaudio_widget_event._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @gbaudio_widget_event._rs, !210, !"_rs", i1 false, i1 false}
!210 = !{!"../drivers/staging/greybus/audio_topology.c", i32 975, i32 3}
!211 = !{ptr @.str.84, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @gbaudio_widget_event._entry.83, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @gbaudio_widget_event._entry_ptr.85, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.86, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/staging/greybus/audio_topology.c", i32 123, i32 2}
!216 = !{ptr @.str.87, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @gbaudio_map_widgetname._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @gbaudio_map_widgetname._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.88, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1291, i32 4}
!221 = !{ptr @.str.89, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @gbaudio_tplg_process_routes._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @gbaudio_tplg_process_routes._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.91, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1300, i32 4}
!226 = !{ptr @gbaudio_tplg_process_routes._entry.90, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @gbaudio_tplg_process_routes._entry_ptr.92, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.94, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1312, i32 4}
!230 = !{ptr @gbaudio_tplg_process_routes._entry.93, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @gbaudio_tplg_process_routes._entry_ptr.95, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.96, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/staging/greybus/audio_topology.c", i32 1318, i32 3}
!234 = !{ptr @gbaudio_tplg_process_routes.__UNIQUE_ID_ddebug255, !233, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!235 = !{ptr @.str.97, !233, !"<string literal>", i1 false, i1 false}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 1, !"min_enum_size", i32 4}
!238 = !{i32 8, !"branch-target-enforcement", i32 0}
!239 = !{i32 8, !"sign-return-address", i32 0}
!240 = !{i32 8, !"sign-return-address-all", i32 0}
!241 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!242 = !{i32 7, !"uwtable", i32 1}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!245 = !{i64 2148733696, i64 2148733701, i64 2148733714, i64 2148733758, i64 2148733792, i64 2148733813}
!246 = !{!"auto-init"}
!247 = !{!"branch_weights", i32 1, i32 2000}
!248 = !{i64 2148251300}
!249 = !{i64 736123, i64 736148, i64 736170, i64 736186, i64 736198, i64 736218, i64 736242, i64 736258, i64 736270}
!250 = !{i64 2148251488}
!251 = !{i32 0, i32 33}
