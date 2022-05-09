; ModuleID = '/llk/IR_all_yes/sound/virtio/virtio_pcm.c_pt.bc'
source_filename = "../sound/virtio/virtio_pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtsnd_v2a_rate = type { i32, i32 }
%struct.virtio_snd = type { ptr, [4 x %struct.virtio_snd_queue], ptr, %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, ptr, i32 }
%struct.virtio_snd_queue = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.virtio_pcm = type { %struct.list_head, i32, ptr, [2 x %struct.virtio_pcm_stream] }
%struct.virtio_pcm_stream = type { ptr, i32, ptr, i32 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_pcm_substream = type { ptr, i32, i32, i32, i32, ptr, %struct.snd_pcm_hardware, %struct.work_struct, %struct.spinlock, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.virtio_snd_pcm_info = type { %struct.virtio_snd_info, i32, i64, i64, i8, i8, i8, [5 x i8] }
%struct.virtio_snd_info = type { i32 }
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
%struct.virtio_snd_event = type { %struct.virtio_snd_hdr, i32 }
%struct.virtio_snd_hdr = type { i32 }

@__param_str_pcm_buffer_ms = internal constant [25 x i8] c"virtio_snd.pcm_buffer_ms\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@pcm_buffer_ms = internal global { i32, [28 x i8] } { i32 160, [28 x i8] zeroinitializer }, align 32
@__param_pcm_buffer_ms = internal constant %struct.kernel_param { ptr @__param_str_pcm_buffer_ms, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @pcm_buffer_ms } }, section "__param", align 4
@__UNIQUE_ID_pcm_buffer_mstype233 = internal constant [39 x i8] c"virtio_snd.parmtype=pcm_buffer_ms:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_buffer_ms234 = internal constant [72 x i8] c"virtio_snd.parm=pcm_buffer_ms:PCM substream buffer time in milliseconds\00", section ".modinfo", align 1
@__param_str_pcm_periods_min = internal constant [27 x i8] c"virtio_snd.pcm_periods_min\00", align 1
@pcm_periods_min = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_pcm_periods_min = internal constant %struct.kernel_param { ptr @__param_str_pcm_periods_min, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @pcm_periods_min } }, section "__param", align 4
@__UNIQUE_ID_pcm_periods_mintype235 = internal constant [41 x i8] c"virtio_snd.parmtype=pcm_periods_min:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_periods_min236 = internal constant [62 x i8] c"virtio_snd.parm=pcm_periods_min:Minimum number of PCM periods\00", section ".modinfo", align 1
@__param_str_pcm_periods_max = internal constant [27 x i8] c"virtio_snd.pcm_periods_max\00", align 1
@pcm_periods_max = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_pcm_periods_max = internal constant %struct.kernel_param { ptr @__param_str_pcm_periods_max, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @pcm_periods_max } }, section "__param", align 4
@__UNIQUE_ID_pcm_periods_maxtype237 = internal constant [41 x i8] c"virtio_snd.parmtype=pcm_periods_max:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_periods_max238 = internal constant [62 x i8] c"virtio_snd.parm=pcm_periods_max:Maximum number of PCM periods\00", section ".modinfo", align 1
@__param_str_pcm_period_ms_min = internal constant [29 x i8] c"virtio_snd.pcm_period_ms_min\00", align 1
@pcm_period_ms_min = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_pcm_period_ms_min = internal constant %struct.kernel_param { ptr @__param_str_pcm_period_ms_min, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @pcm_period_ms_min } }, section "__param", align 4
@__UNIQUE_ID_pcm_period_ms_mintype239 = internal constant [43 x i8] c"virtio_snd.parmtype=pcm_period_ms_min:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_period_ms_min240 = internal constant [74 x i8] c"virtio_snd.parm=pcm_period_ms_min:Minimum PCM period time in milliseconds\00", section ".modinfo", align 1
@__param_str_pcm_period_ms_max = internal constant [29 x i8] c"virtio_snd.pcm_period_ms_max\00", align 1
@pcm_period_ms_max = internal global { i32, [28 x i8] } { i32 80, [28 x i8] zeroinitializer }, align 32
@__param_pcm_period_ms_max = internal constant %struct.kernel_param { ptr @__param_str_pcm_period_ms_max, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @pcm_period_ms_max } }, section "__param", align 4
@__UNIQUE_ID_pcm_period_ms_maxtype241 = internal constant [43 x i8] c"virtio_snd.parmtype=pcm_period_ms_max:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_period_ms_max242 = internal constant [74 x i8] c"virtio_snd.parm=pcm_period_ms_max:Maximum PCM period time in milliseconds\00", section ".modinfo", align 1
@virtsnd_pcm_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid range [%u %u] of the number of PCM periods\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virtsnd_pcm_validate\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/virtio/virtio_pcm.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtsnd_pcm_validate._entry_ptr = internal global ptr @virtsnd_pcm_validate._entry, section ".printk_index", align 4
@virtsnd_pcm_validate._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 274, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"invalid range [%u %u] of the size of the PCM period\0A\00", [43 x i8] zeroinitializer }, align 32
@virtsnd_pcm_validate._entry_ptr.7 = internal global ptr @virtsnd_pcm_validate._entry.5, section ".printk_index", align 4
@virtsnd_pcm_validate._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pcm_buffer_ms(=%u) value cannot be < %u ms\0A\00", [52 x i8] zeroinitializer }, align 32
@virtsnd_pcm_validate._entry_ptr.10 = internal global ptr @virtsnd_pcm_validate._entry.8, section ".printk_index", align 4
@virtsnd_pcm_validate._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"pcm_period_ms_max(=%u) value cannot be > %u ms\0A\00", [48 x i8] zeroinitializer }, align 32
@virtsnd_pcm_validate._entry_ptr.13 = internal global ptr @virtsnd_pcm_validate._entry.11, section ".printk_index", align 4
@virtsnd_pcm_parse_cfg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&vss->elapsed_period)\00", [56 x i8] zeroinitializer }, align 32
@virtsnd_pcm_parse_cfg.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vss->msg_empty\00", [16 x i8] zeroinitializer }, align 32
@virtsnd_pcm_parse_cfg.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&vss->lock\00", [21 x i8] zeroinitializer }, align 32
@virtsnd_pcm_parse_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 380, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SID %u: unknown direction (%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"virtsnd_pcm_parse_cfg\00", [42 x i8] zeroinitializer }, align 32
@virtsnd_pcm_parse_cfg._entry_ptr = internal global ptr @virtsnd_pcm_parse_cfg._entry, section ".printk_index", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio-snd\00", [21 x i8] zeroinitializer }, align 32
@virtsnd_pcm_build_devs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 421, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_pcm_new[%u] failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"virtsnd_pcm_build_devs\00", [41 x i8] zeroinitializer }, align 32
@virtsnd_pcm_build_devs._entry_ptr = internal global ptr @virtsnd_pcm_build_devs._entry, section ".printk_index", align 4
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VirtIO PCM %u\00", [18 x i8] zeroinitializer }, align 32
@virtsnd_pcm_ops = external dso_local constant %struct.snd_pcm_ops, align 4
@virtsnd_pcm_build_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SID %u: invalid channel range [%u %u]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virtsnd_pcm_build_hw\00", [43 x i8] zeroinitializer }, align 32
@virtsnd_pcm_build_hw._entry_ptr = internal global ptr @virtsnd_pcm_build_hw._entry, section ".printk_index", align 4
@g_v2a_format_map = internal constant { [25 x i32], [60 x i8] } { [25 x i32] [i32 22, i32 20, i32 21, i32 0, i32 1, i32 2, i32 4, i32 40, i32 42, i32 36, i32 38, i32 32, i32 34, i32 25, i32 27, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 48, i32 49, i32 50, i32 18], [60 x i8] zeroinitializer }, align 32
@virtsnd_pcm_build_hw._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SID %u: no supported PCM sample formats found\0A\00", [49 x i8] zeroinitializer }, align 32
@virtsnd_pcm_build_hw._entry_ptr.29 = internal global ptr @virtsnd_pcm_build_hw._entry.27, section ".printk_index", align 4
@g_v2a_rate_map = internal constant { [13 x %struct.virtsnd_v2a_rate], [56 x i8] } { [13 x %struct.virtsnd_v2a_rate] [%struct.virtsnd_v2a_rate { i32 1, i32 5512 }, %struct.virtsnd_v2a_rate { i32 2, i32 8000 }, %struct.virtsnd_v2a_rate { i32 4, i32 11025 }, %struct.virtsnd_v2a_rate { i32 8, i32 16000 }, %struct.virtsnd_v2a_rate { i32 16, i32 22050 }, %struct.virtsnd_v2a_rate { i32 32, i32 32000 }, %struct.virtsnd_v2a_rate { i32 64, i32 44100 }, %struct.virtsnd_v2a_rate { i32 128, i32 48000 }, %struct.virtsnd_v2a_rate { i32 256, i32 64000 }, %struct.virtsnd_v2a_rate { i32 512, i32 88200 }, %struct.virtsnd_v2a_rate { i32 1024, i32 96000 }, %struct.virtsnd_v2a_rate { i32 2048, i32 176400 }, %struct.virtsnd_v2a_rate { i32 4096, i32 192000 }], [56 x i8] zeroinitializer }, align 32
@virtsnd_pcm_build_hw._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SID %u: no supported PCM frame rates found\0A\00", [52 x i8] zeroinitializer }, align 32
@virtsnd_pcm_build_hw._entry_ptr.32 = internal global ptr @virtsnd_pcm_build_hw._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"pcm_buffer_ms\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 11, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"pcm_periods_min\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 15, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"pcm_periods_max\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 19, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"pcm_period_ms_min\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 23, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"pcm_period_ms_max\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 27, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 265, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 272, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 279, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 286, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 355, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 356, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 357, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 379, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 417, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 420, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 429, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 115, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"g_v2a_format_map\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 32, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 143, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"g_v2a_rate_map\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 67, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [29 x i8] c"../sound/virtio/virtio_pcm.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 166, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_pcm_buffer_ms234, ptr @__UNIQUE_ID_pcm_buffer_mstype233, ptr @__UNIQUE_ID_pcm_period_ms_max242, ptr @__UNIQUE_ID_pcm_period_ms_maxtype241, ptr @__UNIQUE_ID_pcm_period_ms_min240, ptr @__UNIQUE_ID_pcm_period_ms_mintype239, ptr @__UNIQUE_ID_pcm_periods_max238, ptr @__UNIQUE_ID_pcm_periods_maxtype237, ptr @__UNIQUE_ID_pcm_periods_min236, ptr @__UNIQUE_ID_pcm_periods_mintype235, ptr @__param_pcm_buffer_ms, ptr @__param_pcm_period_ms_max, ptr @__param_pcm_period_ms_min, ptr @__param_pcm_periods_max, ptr @__param_pcm_periods_min, ptr @virtsnd_pcm_build_devs._entry, ptr @virtsnd_pcm_build_devs._entry_ptr, ptr @virtsnd_pcm_build_hw._entry, ptr @virtsnd_pcm_build_hw._entry.27, ptr @virtsnd_pcm_build_hw._entry.30, ptr @virtsnd_pcm_build_hw._entry_ptr, ptr @virtsnd_pcm_build_hw._entry_ptr.29, ptr @virtsnd_pcm_build_hw._entry_ptr.32, ptr @virtsnd_pcm_parse_cfg._entry, ptr @virtsnd_pcm_parse_cfg._entry_ptr, ptr @virtsnd_pcm_validate._entry, ptr @virtsnd_pcm_validate._entry.11, ptr @virtsnd_pcm_validate._entry.5, ptr @virtsnd_pcm_validate._entry.8, ptr @virtsnd_pcm_validate._entry_ptr, ptr @virtsnd_pcm_validate._entry_ptr.10, ptr @virtsnd_pcm_validate._entry_ptr.13, ptr @virtsnd_pcm_validate._entry_ptr.7, ptr @pcm_buffer_ms, ptr @pcm_periods_min, ptr @pcm_periods_max, ptr @pcm_period_ms_min, ptr @pcm_period_ms_max, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @virtsnd_pcm_parse_cfg.__key, ptr @.str.14, ptr @virtsnd_pcm_parse_cfg.__key.15, ptr @.str.16, ptr @virtsnd_pcm_parse_cfg.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @g_v2a_format_map, ptr @.str.28, ptr @g_v2a_rate_map, ptr @.str.31], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_buffer_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_periods_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_periods_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_period_ms_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_period_ms_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_validate._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_validate._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_validate._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_parse_cfg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_parse_cfg.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_parse_cfg.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_parse_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_build_devs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_build_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_v2a_format_map to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_build_hw._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_v2a_rate_map to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_build_hw._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtsnd_pcm_find(ptr noundef readonly %snd, i32 noundef %nid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_list = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %vpcm.0.in = phi ptr [ %pcm_list, %entry ], [ %vpcm.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %vpcm.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %vpcm.0 = load ptr, ptr %vpcm.0.in, align 4
  %cmp.not = icmp eq ptr %vpcm.0, %pcm_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %nid2 = getelementptr inbounds %struct.virtio_pcm, ptr %vpcm.0, i32 0, i32 1
  %1 = ptrtoint ptr %nid2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nid2, align 4
  %cmp3 = icmp eq i32 %2, %nid
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %vpcm.0, %for.body.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtsnd_pcm_find_or_create(ptr noundef %snd, i32 noundef %nid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd, align 4
  %pcm_list.i = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %vpcm.0.in.i = phi ptr [ %pcm_list.i, %entry ], [ %vpcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %vpcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %vpcm.0.i = load ptr, ptr %vpcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vpcm.0.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %nid2.i = getelementptr inbounds %struct.virtio_pcm, ptr %vpcm.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %nid2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nid2.i, align 4
  %cmp3.i = icmp eq i32 %4, %nid
  br i1 %cmp3.i, label %virtsnd_pcm_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

virtsnd_pcm_find.exit:                            ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %vpcm.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %virtsnd_pcm_find.exit.if.end_crit_edge, label %virtsnd_pcm_find.exit.cleanup_crit_edge

virtsnd_pcm_find.exit.cleanup_crit_edge:          ; preds = %virtsnd_pcm_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

virtsnd_pcm_find.exit.if.end_crit_edge:           ; preds = %virtsnd_pcm_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %virtsnd_pcm_find.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %dev = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %nid7 = getelementptr inbounds %struct.virtio_pcm, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %nid7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nid, ptr %nid7, align 4
  %prev.i = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %7, ptr noundef %pcm_list.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %prev.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pcm_list.i, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call.i, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %virtsnd_pcm_find.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %vpcm.0.i, %virtsnd_pcm_find.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call.i, %if.end6.cleanup_crit_edge ], [ %call.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_pcm_validate(ptr noundef %vdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pcm_periods_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @pcm_periods_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp1 = icmp ugt i32 %0, %1
  br i1 %cmp1, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %2 = load i32, ptr @pcm_periods_max, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %2) #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr @pcm_period_ms_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.do.end6_crit_edge, label %lor.lhs.false2

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

lor.lhs.false2:                                   ; preds = %if.end
  %4 = load i32, ptr @pcm_period_ms_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp3 = icmp ugt i32 %3, %4
  br i1 %cmp3, label %lor.lhs.false2.do.end6_crit_edge, label %if.end8

lor.lhs.false2.do.end6_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end6:                                          ; preds = %lor.lhs.false2.do.end6_crit_edge, %if.end.do.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %5 = load i32, ptr @pcm_period_ms_max, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.6, i32 noundef %3, i32 noundef %5) #11
  br label %return

if.end8:                                          ; preds = %lor.lhs.false2
  %6 = load i32, ptr @pcm_buffer_ms, align 4
  %mul = mul i32 %3, %0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mul)
  %cmp9 = icmp ult i32 %6, %mul
  br i1 %cmp9, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.9, i32 noundef %6, i32 noundef %mul) #11
  br label %return

if.end15:                                         ; preds = %if.end8
  %div29 = lshr i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %div29)
  %cmp16 = icmp ugt i32 %4, %div29
  br i1 %cmp16, label %do.end19, label %if.end15.return_crit_edge

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.12, i32 noundef %4, i32 noundef %div29) #11
  br label %return

return:                                           ; preds = %do.end19, %if.end15.return_crit_edge, %do.end12, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ -22, %do.end12 ], [ -22, %do.end19 ], [ 0, %if.end15.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_pcm_parse_cfg(ptr noundef %snd) local_unnamed_addr #2 align 64 {
entry:
  %virtio_cread_v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v) #8
  %2 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %virtio_cread_v, align 4, !annotation !109
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 331) #8
  %config = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get, align 4
  call void %6(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %virtio_cread_v, i32 noundef 4) #8
  %7 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virtio_cread_v, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %nsubstreams = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 9
  %10 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nsubstreams, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup74_crit_edge, label %if.end

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6
  %11 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 256) #8
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !110

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %substreams135 = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 8
  %13 = ptrtoint ptr %substreams135 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %substreams135, align 4
  br label %cleanup74

devm_kcalloc.exit:                                ; preds = %if.end
  %14 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %14, i32 noundef 3520) #8
  %substreams = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 8
  %15 = ptrtoint ptr %substreams to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i, ptr %substreams, align 4
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.cleanup74_crit_edge, label %if.end13

devm_kcalloc.exit.cleanup74_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end13:                                         ; preds = %devm_kcalloc.exit
  %16 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nsubstreams, align 4
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 32) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.end13.cleanup74_crit_edge, label %if.end7.i.i, !prof !110

if.end13.cleanup74_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end7.i.i:                                      ; preds = %if.end13
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #12
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.end7.i.i.cleanup74_crit_edge, label %if.end18

if.end7.i.i.cleanup74_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end18:                                         ; preds = %if.end7.i.i
  %21 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nsubstreams, align 4
  %call20 = call i32 @virtsnd_ctl_query_info(ptr noundef %snd, i32 noundef 256, i32 noundef 0, i32 noundef %22, i32 noundef 32, ptr noundef nonnull %call8.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.cond.preheader, label %if.end18.on_exit_crit_edge

if.end18.on_exit_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %on_exit

for.cond.preheader:                               ; preds = %if.end18
  %23 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nsubstreams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp25177.not = icmp eq i32 %24, 0
  br i1 %cmp25177.not, label %for.cond.preheader.on_exit_crit_edge, label %for.body.lr.ph

for.cond.preheader.on_exit_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %on_exit

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pcm_list.i.i = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 5, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc73, %for.inc.for.body_crit_edge ]
  %25 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %substreams, align 4
  %arrayidx = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %snd, ptr %arrayidx, align 8
  %sid = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 2
  %28 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.0178, ptr %sid, align 8
  %elapsed_period = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 7
  call void @__init_work(ptr noundef %elapsed_period, i32 noundef 0) #8
  %29 = ptrtoint ptr %elapsed_period to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -64, ptr %elapsed_period, align 8
  %lockdep_map = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 7, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @virtsnd_pcm_parse_cfg.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry33 = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 7, i32 1
  %30 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 7, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry33, ptr %prev.i, align 4
  %func = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 7, i32 2
  %32 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @virtsnd_pcm_period_elapsed, ptr %func, align 4
  %msg_empty = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 19
  call void @__init_waitqueue_head(ptr noundef %msg_empty, ptr noundef nonnull @.str.16, ptr noundef nonnull @virtsnd_pcm_parse_cfg.__key.15) #8
  %lock = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 8
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @virtsnd_pcm_parse_cfg.__key.17, i16 noundef signext 3) #8
  %arrayidx44 = getelementptr %struct.virtio_snd_pcm_info, ptr %call8.i.i, i32 %i.0178
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %features.i = getelementptr %struct.virtio_snd_pcm_info, ptr %call8.i.i, i32 %i.0178, i32 1
  %37 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %features.i, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #8
  %features2.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 4
  %40 = ptrtoint ptr %features2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %features2.i, align 8
  %hw.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6
  %41 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 590099, ptr %hw.i, align 8
  %channels_min.i = getelementptr %struct.virtio_snd_pcm_info, ptr %call8.i.i, i32 %i.0178, i32 5
  %42 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %channels_min.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %for.body.do.end.i_crit_edge, label %lor.lhs.false.i

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %for.body
  %channels_max.i = getelementptr %struct.virtio_snd_pcm_info, ptr %call8.i.i, i32 %i.0178, i32 6
  %44 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %channels_max.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp.i = icmp ugt i8 %43, %45
  br i1 %cmp.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.virtio_device, ptr %36, i32 0, i32 6
  %46 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sid, align 8
  %conv8.i = zext i8 %43 to i32
  %channels_max9.i = getelementptr %struct.virtio_snd_pcm_info, ptr %call8.i.i, i32 %i.0178, i32 6
  %48 = ptrtoint ptr %channels_max9.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %channels_max9.i, align 2
  %conv10.i = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %47, i32 noundef %conv8.i, i32 noundef %conv10.i) #11
  br label %on_exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %conv.i = zext i8 %43 to i32
  %channels_min14.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6, i32 5
  %50 = ptrtoint ptr %channels_min14.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv.i, ptr %channels_min14.i, align 4
  %51 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %channels_max.i, align 2
  %conv16.i = zext i8 %52 to i32
  %channels_max18.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6, i32 6
  %53 = ptrtoint ptr %channels_max18.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv16.i, ptr %channels_max18.i, align 8
  %formats.i = getelementptr %struct.virtio_snd_pcm_info, ptr %call8.i.i, i32 %i.0178, i32 2
  %54 = ptrtoint ptr %formats.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %formats.i, align 8
  %56 = call i64 @llvm.bswap.i64(i64 %55) #8
  %formats20.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6, i32 1
  %57 = ptrtoint ptr %formats20.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 0, ptr %formats20.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %sample_min.0201.i = phi i32 [ 0, %if.end.i ], [ %sample_min.2.i, %for.inc.i.for.body.i_crit_edge ]
  %sample_max.0200.i = phi i32 [ 0, %if.end.i ], [ %sample_max.2.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0198.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %sh_prom.i = zext i32 %i.0198.i to i64
  %shl.i = shl nuw nsw i64 1, %sh_prom.i
  %and.i = and i64 %shl.i, %56
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool23.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool23.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then24.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then24.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [25 x i32], ptr @g_v2a_format_map, i32 0, i32 %i.0198.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %call.i = call i32 @snd_pcm_format_physical_width(i32 noundef %59) #8
  %div.i = sdiv i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sample_min.0201.i)
  %tobool25.not.i = icmp eq i32 %sample_min.0201.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sample_min.0201.i, i32 %div.i)
  %cmp27.i = icmp ugt i32 %sample_min.0201.i, %div.i
  %or.cond.i = select i1 %tobool25.not.i, i1 true, i1 %cmp27.i
  %sample_min.1.i = select i1 %or.cond.i, i32 %div.i, i32 %sample_min.0201.i
  %60 = call i32 @llvm.umax.i32(i32 %sample_max.0200.i, i32 %div.i) #8
  %sh_prom.i.i = zext i32 %59 to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %61 = ptrtoint ptr %formats20.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %formats20.i, align 8
  %or.i = or i64 %62, %shl.i.i
  store i64 %or.i, ptr %formats20.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then24.i, %for.body.i.for.inc.i_crit_edge
  %sample_max.2.i = phi i32 [ %60, %if.then24.i ], [ %sample_max.0200.i, %for.body.i.for.inc.i_crit_edge ]
  %sample_min.2.i = phi i32 [ %sample_min.1.i, %if.then24.i ], [ %sample_min.0201.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0198.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %63 = ptrtoint ptr %formats20.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %formats20.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %tobool41.not.i = icmp eq i64 %64, 0
  br i1 %tobool41.not.i, label %do.end45.i, label %if.end48.i

do.end45.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev46.i = getelementptr inbounds %struct.virtio_device, ptr %36, i32 0, i32 6
  %65 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46.i, ptr noundef nonnull @.str.28, i32 noundef %66) #11
  br label %on_exit

if.end48.i:                                       ; preds = %for.end.i
  %rates.i = getelementptr %struct.virtio_snd_pcm_info, ptr %call8.i.i, i32 %i.0178, i32 3
  %67 = ptrtoint ptr %rates.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %rates.i, align 16
  %69 = call i64 @llvm.bswap.i64(i64 %68) #8
  %rates50.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6, i32 2
  %70 = ptrtoint ptr %rates50.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %rates50.i, align 8
  %rate_min.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6, i32 3
  %rate_max.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6, i32 4
  br label %for.body54.i

for.body54.i:                                     ; preds = %for.inc90.i.for.body54.i_crit_edge, %if.end48.i
  %i.1202.i = phi i32 [ 0, %if.end48.i ], [ %inc91.i, %for.inc90.i.for.body54.i_crit_edge ]
  %sh_prom55.i = zext i32 %i.1202.i to i64
  %shl56.i = shl nuw nsw i64 1, %sh_prom55.i
  %and57.i = and i64 %shl56.i, %69
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57.i)
  %tobool58.not.i = icmp eq i64 %and57.i, 0
  br i1 %tobool58.not.i, label %for.body54.i.for.inc90.i_crit_edge, label %if.then59.i

for.body54.i.for.inc90.i_crit_edge:               ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc90.i

if.then59.i:                                      ; preds = %for.body54.i
  %71 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rate_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool61.not.i = icmp eq i32 %72, 0
  br i1 %tobool61.not.i, label %if.then59.i.if.then68.i_crit_edge, label %lor.lhs.false62.i

if.then59.i.if.then68.i_crit_edge:                ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68.i

lor.lhs.false62.i:                                ; preds = %if.then59.i
  %rate.i = getelementptr [13 x %struct.virtsnd_v2a_rate], ptr @g_v2a_rate_map, i32 0, i32 %i.1202.i, i32 1
  %73 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp66.i = icmp ugt i32 %72, %74
  br i1 %cmp66.i, label %lor.lhs.false62.i.if.then68.i_crit_edge, label %lor.lhs.false62.i.if.end73.i_crit_edge

lor.lhs.false62.i.if.end73.i_crit_edge:           ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

lor.lhs.false62.i.if.then68.i_crit_edge:          ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then68.i

if.then68.i:                                      ; preds = %lor.lhs.false62.i.if.then68.i_crit_edge, %if.then59.i.if.then68.i_crit_edge
  %rate70.i = getelementptr [13 x %struct.virtsnd_v2a_rate], ptr @g_v2a_rate_map, i32 0, i32 %i.1202.i, i32 1
  %75 = ptrtoint ptr %rate70.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rate70.i, align 4
  %77 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %rate_min.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then68.i, %lor.lhs.false62.i.if.end73.i_crit_edge
  %78 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rate_max.i, align 8
  %arrayidx75.i = getelementptr [13 x %struct.virtsnd_v2a_rate], ptr @g_v2a_rate_map, i32 0, i32 %i.1202.i
  %rate76.i = getelementptr [13 x %struct.virtsnd_v2a_rate], ptr @g_v2a_rate_map, i32 0, i32 %i.1202.i, i32 1
  %80 = ptrtoint ptr %rate76.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rate76.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp77.i = icmp ult i32 %79, %81
  br i1 %cmp77.i, label %if.then79.i, label %if.end73.i.if.end84.i_crit_edge

if.end73.i.if.end84.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84.i

if.then79.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %rate_max.i, align 8
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then79.i, %if.end73.i.if.end84.i_crit_edge
  %83 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx75.i, align 4
  %85 = ptrtoint ptr %rates50.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rates50.i, align 8
  %or88.i = or i32 %86, %84
  store i32 %or88.i, ptr %rates50.i, align 8
  br label %for.inc90.i

for.inc90.i:                                      ; preds = %if.end84.i, %for.body54.i.for.inc90.i_crit_edge
  %inc91.i = add nuw nsw i32 %i.1202.i, 1
  %exitcond206.not.i = icmp eq i32 %inc91.i, 13
  br i1 %exitcond206.not.i, label %for.end92.i, label %for.inc90.i.for.body54.i_crit_edge

for.inc90.i.for.body54.i_crit_edge:               ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54.i

for.end92.i:                                      ; preds = %for.inc90.i
  %87 = ptrtoint ptr %rates50.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rates50.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool95.not.i = icmp eq i32 %88, 0
  br i1 %tobool95.not.i, label %do.end99.i, label %if.end48

do.end99.i:                                       ; preds = %for.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev100.i = getelementptr inbounds %struct.virtio_device, ptr %36, i32 0, i32 6
  %89 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100.i, ptr noundef nonnull @.str.31, i32 noundef %90) #11
  br label %on_exit

if.end48:                                         ; preds = %for.end92.i
  %91 = load i32, ptr @pcm_periods_min, align 4
  %periods_min.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6, i32 10
  %92 = ptrtoint ptr %periods_min.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %periods_min.i, align 8
  %93 = load i32, ptr @pcm_periods_max, align 4
  %periods_max.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6, i32 11
  %94 = ptrtoint ptr %periods_max.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %periods_max.i, align 4
  %95 = ptrtoint ptr %channels_max18.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %channels_max18.i, align 8
  %mul.i = mul i32 %96, %sample_max.2.i
  %97 = load i32, ptr @pcm_buffer_ms, align 4
  %98 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rate_max.i, align 8
  %div110.i = udiv i32 %99, 1000
  %mul107.i = mul i32 %mul.i, %div110.i
  %mul111.i = mul i32 %mul107.i, %97
  %add.i = add i32 %mul111.i, 4095
  %and112.i = and i32 %add.i, -4096
  %buffer_bytes_max.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6, i32 7
  %100 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %and112.i, ptr %buffer_bytes_max.i, align 4
  %101 = ptrtoint ptr %channels_min14.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %channels_min14.i, align 4
  %mul116.i = mul i32 %102, %sample_min.2.i
  %103 = load i32, ptr @pcm_period_ms_min, align 4
  %mul117.i = mul i32 %mul116.i, %103
  %104 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rate_min.i, align 4
  %div120.i = udiv i32 %105, 1000
  %mul121.i = mul i32 %mul117.i, %div120.i
  %period_bytes_min.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6, i32 8
  %106 = ptrtoint ptr %period_bytes_min.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %mul121.i, ptr %period_bytes_min.i, align 8
  %107 = load i32, ptr @pcm_period_ms_max, align 4
  %mul130.i = mul i32 %107, %mul107.i
  %period_bytes_max.i = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 6, i32 9
  %108 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %mul130.i, ptr %period_bytes_max.i, align 4
  %109 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx44, align 32
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %nid = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 1
  %112 = ptrtoint ptr %nid to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %nid, align 4
  %113 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %snd, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end48
  %vpcm.0.in.i.i = phi ptr [ %pcm_list.i.i, %if.end48 ], [ %vpcm.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %115 = ptrtoint ptr %vpcm.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %vpcm.0.i.i = load ptr, ptr %vpcm.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %vpcm.0.i.i, %pcm_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end.i130_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i130_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i130

for.body.i.i:                                     ; preds = %for.cond.i.i
  %nid2.i.i = getelementptr inbounds %struct.virtio_pcm, ptr %vpcm.0.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %nid2.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nid2.i.i, align 4
  %cmp3.i.i = icmp eq i32 %117, %111
  br i1 %cmp3.i.i, label %virtsnd_pcm_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

virtsnd_pcm_find.exit.i:                          ; preds = %for.body.i.i
  %cmp.i.i = icmp ugt ptr %vpcm.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %virtsnd_pcm_find.exit.i.if.end.i130_crit_edge, label %virtsnd_pcm_find.exit.i.virtsnd_pcm_find_or_create.exit_crit_edge

virtsnd_pcm_find.exit.i.virtsnd_pcm_find_or_create.exit_crit_edge: ; preds = %virtsnd_pcm_find.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtsnd_pcm_find_or_create.exit

virtsnd_pcm_find.exit.i.if.end.i130_crit_edge:    ; preds = %virtsnd_pcm_find.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i130

if.end.i130:                                      ; preds = %virtsnd_pcm_find.exit.i.if.end.i130_crit_edge, %for.cond.i.i.if.end.i130_crit_edge
  %dev.i128 = getelementptr inbounds %struct.virtio_device, ptr %114, i32 0, i32 6
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i128, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not.i129 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i129, label %if.end.i130.if.then53_crit_edge, label %if.end6.i

if.end.i130.if.then53_crit_edge:                  ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.end6.i:                                        ; preds = %if.end.i130
  %nid7.i = getelementptr inbounds %struct.virtio_pcm, ptr %call.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %nid7.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %111, ptr %nid7.i, align 4
  %119 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %120, ptr noundef %pcm_list.i.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i131, label %if.end6.i.virtsnd_pcm_find_or_create.exit_crit_edge

if.end6.i.virtsnd_pcm_find_or_create.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtsnd_pcm_find_or_create.exit

if.end.i.i.i131:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %122 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %pcm_list.i.i, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev3.i.i.i, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %call.i.i, ptr %120, align 4
  br label %virtsnd_pcm_find_or_create.exit

virtsnd_pcm_find_or_create.exit:                  ; preds = %if.end.i.i.i131, %if.end6.i.virtsnd_pcm_find_or_create.exit_crit_edge, %virtsnd_pcm_find.exit.i.virtsnd_pcm_find_or_create.exit_crit_edge
  %retval.0.i132 = phi ptr [ %vpcm.0.i.i, %virtsnd_pcm_find.exit.i.virtsnd_pcm_find_or_create.exit_crit_edge ], [ %call.i.i, %if.end6.i.virtsnd_pcm_find_or_create.exit_crit_edge ], [ %call.i.i, %if.end.i.i.i131 ]
  %cmp.i133 = icmp ugt ptr %retval.0.i132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %virtsnd_pcm_find_or_create.exit.if.then53_crit_edge, label %if.end55

virtsnd_pcm_find_or_create.exit.if.then53_crit_edge: ; preds = %virtsnd_pcm_find_or_create.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.then53:                                        ; preds = %virtsnd_pcm_find_or_create.exit.if.then53_crit_edge, %if.end.i130.if.then53_crit_edge
  %retval.0.i132148 = phi ptr [ %retval.0.i132, %virtsnd_pcm_find_or_create.exit.if.then53_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i130.if.then53_crit_edge ]
  %125 = ptrtoint ptr %retval.0.i132148 to i32
  br label %on_exit

if.end55:                                         ; preds = %virtsnd_pcm_find_or_create.exit
  %direction = getelementptr %struct.virtio_snd_pcm_info, ptr %call8.i.i, i32 %i.0178, i32 4
  %126 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %direction, align 8
  %128 = zext i8 %127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values)
  switch i8 %127, label %do.end63 [
    i8 0, label %if.end55.for.inc_crit_edge
    i8 1, label %sw.bb59
  ]

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb59:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %conv57 = zext i8 %127 to i32
  %129 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %130, i32 noundef %conv57) #11
  br label %on_exit

for.inc:                                          ; preds = %sw.bb59, %if.end55.for.inc_crit_edge
  %.sink = phi i32 [ 1, %sw.bb59 ], [ 0, %if.end55.for.inc_crit_edge ]
  %direction60 = getelementptr %struct.virtio_pcm_substream, ptr %26, i32 %i.0178, i32 3
  %131 = ptrtoint ptr %direction60 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %.sink, ptr %direction60, align 4
  %nsubstreams71 = getelementptr %struct.virtio_pcm, ptr %retval.0.i132, i32 0, i32 3, i32 %.sink, i32 1
  %132 = ptrtoint ptr %nsubstreams71 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %nsubstreams71, align 4
  %inc = add i32 %133, 1
  store i32 %inc, ptr %nsubstreams71, align 4
  %inc73 = add nuw i32 %i.0178, 1
  %134 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %nsubstreams, align 4
  %cmp25 = icmp ult i32 %inc73, %135
  br i1 %cmp25, label %for.inc.for.body_crit_edge, label %for.inc.on_exit_crit_edge

for.inc.on_exit_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %on_exit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

on_exit:                                          ; preds = %for.inc.on_exit_crit_edge, %do.end63, %if.then53, %do.end99.i, %do.end45.i, %do.end.i, %for.cond.preheader.on_exit_crit_edge, %if.end18.on_exit_crit_edge
  %rc.2 = phi i32 [ %call20, %if.end18.on_exit_crit_edge ], [ -22, %do.end63 ], [ %125, %if.then53 ], [ -22, %do.end.i ], [ -22, %do.end99.i ], [ -22, %do.end45.i ], [ 0, %for.cond.preheader.on_exit_crit_edge ], [ 0, %for.inc.on_exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup74

cleanup74:                                        ; preds = %on_exit, %if.end7.i.i.cleanup74_crit_edge, %if.end13.cleanup74_crit_edge, %devm_kcalloc.exit.cleanup74_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup74_crit_edge
  %retval.0 = phi i32 [ %rc.2, %on_exit ], [ 0, %entry.cleanup74_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup74_crit_edge ], [ -12, %if.end7.i.i.cleanup74_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %if.end13.cleanup74_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtsnd_ctl_query_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtsnd_pcm_period_elapsed(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr i8, ptr %work, i32 -68
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_pcm_build_devs(ptr noundef readonly %snd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_list = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 5
  %0 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %vpcm.0210 = load ptr, ptr %pcm_list, align 4
  %cmp.not211 = icmp eq ptr %vpcm.0210, %pcm_list
  br i1 %cmp.not211, label %entry.for.cond47.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond47.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond47.preheader

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %snd, align 4
  %card = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 2
  %dev28 = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 6
  br label %for.body

for.cond47.preheader:                             ; preds = %for.inc40.for.cond47.preheader_crit_edge, %entry.for.cond47.preheader_crit_edge
  %nsubstreams48 = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 9
  %3 = ptrtoint ptr %nsubstreams48 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nsubstreams48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp49213.not = icmp eq i32 %4, 0
  br i1 %cmp49213.not, label %for.cond47.preheader.for.cond77.preheader_crit_edge, label %for.body50.lr.ph

for.cond47.preheader.for.cond77.preheader_crit_edge: ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond77.preheader

for.body50.lr.ph:                                 ; preds = %for.cond47.preheader
  %substreams51 = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 8
  br label %for.body50

for.body:                                         ; preds = %for.inc40.for.body_crit_edge, %for.body.lr.ph
  %vpcm.0212 = phi ptr [ %vpcm.0210, %for.body.lr.ph ], [ %vpcm.0, %for.inc40.for.body_crit_edge ]
  %nsubstreams = getelementptr %struct.virtio_pcm, ptr %vpcm.0212, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nsubstreams, align 4
  %nsubstreams5 = getelementptr %struct.virtio_pcm, ptr %vpcm.0212, i32 0, i32 3, i32 1, i32 1
  %7 = ptrtoint ptr %nsubstreams5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nsubstreams5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  %or.cond = select i1 %tobool.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %for.body.for.inc40_crit_edge, label %if.end

for.body.for.inc40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc40

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %nid = getelementptr inbounds %struct.virtio_pcm, ptr %vpcm.0212, i32 0, i32 1
  %11 = ptrtoint ptr %nid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nid, align 4
  %pcm = getelementptr inbounds %struct.virtio_pcm, ptr %vpcm.0212, i32 0, i32 2
  %call = tail call i32 @snd_pcm_new(ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef %12, i32 noundef %6, i32 noundef %8, ptr noundef %pcm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %nid.le = getelementptr inbounds %struct.virtio_pcm, ptr %vpcm.0212, i32 0, i32 1
  %13 = ptrtoint ptr %nid.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nid.le, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.22, i32 noundef %14, i32 noundef %call) #11
  br label %cleanup123

if.end10:                                         ; preds = %if.end
  %15 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %info_flags, align 8
  %18 = load ptr, ptr %pcm, align 4
  %dev_class = getelementptr inbounds %struct.snd_pcm, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %dev_class to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %dev_class, align 4
  %20 = load ptr, ptr %pcm, align 4
  %dev_subclass = getelementptr inbounds %struct.snd_pcm, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dev_subclass to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %dev_subclass, align 2
  %22 = load ptr, ptr %pcm, align 4
  %name = getelementptr inbounds %struct.snd_pcm, ptr %22, i32 0, i32 7
  %device = getelementptr inbounds %struct.snd_pcm, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device, align 4
  %call16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 80, ptr noundef nonnull @.str.24, i32 noundef %24)
  %25 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vpcm.0212, ptr %private_data, align 8
  %28 = load ptr, ptr %pcm, align 4
  %nonatomic = getelementptr inbounds %struct.snd_pcm, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %nonatomic to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %nonatomic, align 1
  %30 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nsubstreams, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool25.not = icmp eq i32 %31, 0
  br i1 %tobool25.not, label %if.end10.for.inc_crit_edge, label %if.end27

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end27:                                         ; preds = %if.end10
  %arrayidx23 = getelementptr %struct.virtio_pcm, ptr %vpcm.0212, i32 0, i32 3, i32 0
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 4) #8
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %if.end27.devm_kcalloc.exit.thread_crit_edge, label %devm_kcalloc.exit, !prof !110

if.end27.devm_kcalloc.exit.thread_crit_edge:      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit.thread

devm_kcalloc.exit.thread:                         ; preds = %if.end27.1.devm_kcalloc.exit.thread_crit_edge, %if.end27.devm_kcalloc.exit.thread_crit_edge
  %arrayidx23.lcssa = phi ptr [ %arrayidx23, %if.end27.devm_kcalloc.exit.thread_crit_edge ], [ %arrayidx23.1, %if.end27.1.devm_kcalloc.exit.thread_crit_edge ]
  %34 = ptrtoint ptr %arrayidx23.lcssa to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx23.lcssa, align 4
  br label %cleanup123

devm_kcalloc.exit:                                ; preds = %if.end27
  %35 = extractvalue { i32, i1 } %32, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev28, i32 noundef %35, i32 noundef 3520) #8
  %36 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i.i, ptr %arrayidx23, align 4
  %tobool32.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool32.not, label %devm_kcalloc.exit.cleanup123_crit_edge, label %if.end34

devm_kcalloc.exit.cleanup123_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

if.end34:                                         ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %nsubstreams, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %if.end10.for.inc_crit_edge
  %38 = ptrtoint ptr %nsubstreams5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nsubstreams5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool25.not.1 = icmp eq i32 %39, 0
  br i1 %tobool25.not.1, label %for.inc.for.inc40_crit_edge, label %if.end27.1

for.inc.for.inc40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc40

if.end27.1:                                       ; preds = %for.inc
  %arrayidx23.1 = getelementptr %struct.virtio_pcm, ptr %vpcm.0212, i32 0, i32 3, i32 1
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 4) #8
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %if.end27.1.devm_kcalloc.exit.thread_crit_edge, label %devm_kcalloc.exit.1, !prof !110

if.end27.1.devm_kcalloc.exit.thread_crit_edge:    ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit.thread

devm_kcalloc.exit.1:                              ; preds = %if.end27.1
  %42 = extractvalue { i32, i1 } %40, 0
  %call5.i.i.1 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev28, i32 noundef %42, i32 noundef 3520) #8
  %43 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5.i.i.1, ptr %arrayidx23.1, align 4
  %tobool32.not.1 = icmp eq ptr %call5.i.i.1, null
  br i1 %tobool32.not.1, label %devm_kcalloc.exit.1.cleanup123_crit_edge, label %if.end34.1

devm_kcalloc.exit.1.cleanup123_crit_edge:         ; preds = %devm_kcalloc.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

if.end34.1:                                       ; preds = %devm_kcalloc.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %nsubstreams5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %nsubstreams5, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %if.end34.1, %for.inc.for.inc40_crit_edge, %for.body.for.inc40_crit_edge
  %45 = ptrtoint ptr %vpcm.0212 to i32
  call void @__asan_load4_noabort(i32 %45)
  %vpcm.0 = load ptr, ptr %vpcm.0212, align 4
  %cmp.not = icmp eq ptr %vpcm.0, %pcm_list
  br i1 %cmp.not, label %for.inc40.for.cond47.preheader_crit_edge, label %for.inc40.for.body_crit_edge

for.inc40.for.body_crit_edge:                     ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc40.for.cond47.preheader_crit_edge:         ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond47.preheader

for.cond77.preheader:                             ; preds = %for.inc69.for.cond77.preheader_crit_edge, %for.cond47.preheader.for.cond77.preheader_crit_edge
  %46 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %vpcm.1220 = load ptr, ptr %pcm_list, align 4
  %cmp80.not221 = icmp eq ptr %vpcm.1220, %pcm_list
  br i1 %cmp80.not221, label %for.cond77.preheader.cleanup123_crit_edge, label %for.cond77.preheader.for.cond83.preheader_crit_edge

for.cond77.preheader.for.cond83.preheader_crit_edge: ; preds = %for.cond77.preheader
  br label %for.cond83.preheader

for.cond77.preheader.cleanup123_crit_edge:        ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

for.body50:                                       ; preds = %for.inc69.for.body50_crit_edge, %for.body50.lr.ph
  %i.1214 = phi i32 [ 0, %for.body50.lr.ph ], [ %inc70, %for.inc69.for.body50_crit_edge ]
  %47 = ptrtoint ptr %substreams51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %substreams51, align 4
  %nid53 = getelementptr %struct.virtio_pcm_substream, ptr %48, i32 %i.1214, i32 1
  %49 = ptrtoint ptr %nid53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nid53, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body50
  %vpcm.0.in.i = phi ptr [ %pcm_list, %for.body50 ], [ %vpcm.0.i, %for.body.i.for.cond.i_crit_edge ]
  %51 = ptrtoint ptr %vpcm.0.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %vpcm.0.i = load ptr, ptr %vpcm.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %vpcm.0.i, %pcm_list
  br i1 %cmp.not.i, label %for.cond.i.cleanup65.thread_crit_edge, label %for.body.i

for.cond.i.cleanup65.thread_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65.thread

for.body.i:                                       ; preds = %for.cond.i
  %nid2.i = getelementptr inbounds %struct.virtio_pcm, ptr %vpcm.0.i, i32 0, i32 1
  %52 = ptrtoint ptr %nid2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nid2.i, align 4
  %cmp3.i = icmp eq i32 %53, %50
  br i1 %cmp3.i, label %virtsnd_pcm_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

virtsnd_pcm_find.exit:                            ; preds = %for.body.i
  %cmp.i = icmp ugt ptr %vpcm.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %virtsnd_pcm_find.exit.cleanup65.thread_crit_edge, label %for.inc69

virtsnd_pcm_find.exit.cleanup65.thread_crit_edge: ; preds = %virtsnd_pcm_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65.thread

cleanup65.thread:                                 ; preds = %virtsnd_pcm_find.exit.cleanup65.thread_crit_edge, %for.cond.i.cleanup65.thread_crit_edge
  %retval.0.i195 = phi ptr [ inttoptr (i32 -2 to ptr), %for.cond.i.cleanup65.thread_crit_edge ], [ %vpcm.0.i, %virtsnd_pcm_find.exit.cleanup65.thread_crit_edge ]
  %54 = ptrtoint ptr %retval.0.i195 to i32
  br label %cleanup123

for.inc69:                                        ; preds = %virtsnd_pcm_find.exit
  %arrayidx52 = getelementptr %struct.virtio_pcm_substream, ptr %48, i32 %i.1214
  %direction = getelementptr %struct.virtio_pcm_substream, ptr %48, i32 %i.1214, i32 3
  %55 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %direction, align 4
  %arrayidx60 = getelementptr %struct.virtio_pcm, ptr %vpcm.0.i, i32 0, i32 3, i32 %56
  %57 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx60, align 4
  %nsubstreams62 = getelementptr %struct.virtio_pcm, ptr %vpcm.0.i, i32 0, i32 3, i32 %56, i32 1
  %59 = ptrtoint ptr %nsubstreams62 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nsubstreams62, align 4
  %inc63 = add i32 %60, 1
  store i32 %inc63, ptr %nsubstreams62, align 4
  %arrayidx64 = getelementptr ptr, ptr %58, i32 %60
  %61 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx52, ptr %arrayidx64, align 4
  %inc70 = add nuw i32 %i.1214, 1
  %62 = ptrtoint ptr %nsubstreams48 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nsubstreams48, align 4
  %cmp49 = icmp ult i32 %inc70, %63
  br i1 %cmp49, label %for.inc69.for.body50_crit_edge, label %for.inc69.for.cond77.preheader_crit_edge

for.inc69.for.cond77.preheader_crit_edge:         ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond77.preheader

for.inc69.for.body50_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body50

for.cond83.preheader:                             ; preds = %cleanup106.1.for.cond83.preheader_crit_edge, %for.cond77.preheader.for.cond83.preheader_crit_edge
  %vpcm.1222 = phi ptr [ %vpcm.1, %cleanup106.1.for.cond83.preheader_crit_edge ], [ %vpcm.1220, %for.cond77.preheader.for.cond83.preheader_crit_edge ]
  %pcm89 = getelementptr inbounds %struct.virtio_pcm, ptr %vpcm.1222, i32 0, i32 2
  %arrayidx88 = getelementptr %struct.virtio_pcm, ptr %vpcm.1222, i32 0, i32 3, i32 0
  %nsubstreams92 = getelementptr %struct.virtio_pcm, ptr %vpcm.1222, i32 0, i32 3, i32 0, i32 1
  %64 = ptrtoint ptr %nsubstreams92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nsubstreams92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool93.not = icmp eq i32 %65, 0
  br i1 %tobool93.not, label %for.cond83.preheader.cleanup106_crit_edge, label %if.end95

for.cond83.preheader.cleanup106_crit_edge:        ; preds = %for.cond83.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.end95:                                         ; preds = %for.cond83.preheader
  %66 = ptrtoint ptr %pcm89 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcm89, align 4
  %substream = getelementptr %struct.snd_pcm, ptr %67, i32 0, i32 8, i32 0, i32 4
  %68 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %68)
  %kss.0215 = load ptr, ptr %substream, align 4
  %tobool97.not216 = icmp eq ptr %kss.0215, null
  br i1 %tobool97.not216, label %if.end95.for.end104_crit_edge, label %if.end95.for.body98_crit_edge

if.end95.for.body98_crit_edge:                    ; preds = %if.end95
  br label %for.body98

if.end95.for.end104_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end104

for.body98:                                       ; preds = %for.body98.for.body98_crit_edge, %if.end95.for.body98_crit_edge
  %kss.0217 = phi ptr [ %kss.0, %for.body98.for.body98_crit_edge ], [ %kss.0215, %if.end95.for.body98_crit_edge ]
  %69 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx88, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %kss.0217, i32 0, i32 3
  %71 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %number, align 4
  %arrayidx100 = getelementptr ptr, ptr %70, i32 %72
  %73 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx100, align 4
  %substream101 = getelementptr inbounds %struct.virtio_pcm_substream, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %substream101 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %kss.0217, ptr %substream101, align 4
  %next103 = getelementptr inbounds %struct.snd_pcm_substream, ptr %kss.0217, i32 0, i32 15
  %76 = ptrtoint ptr %next103 to i32
  call void @__asan_load4_noabort(i32 %76)
  %kss.0 = load ptr, ptr %next103, align 4
  %tobool97.not = icmp eq ptr %kss.0, null
  br i1 %tobool97.not, label %for.body98.for.end104_crit_edge, label %for.body98.for.body98_crit_edge

for.body98.for.body98_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body98

for.body98.for.end104_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end104

for.end104:                                       ; preds = %for.body98.for.end104_crit_edge, %if.end95.for.end104_crit_edge
  %77 = ptrtoint ptr %pcm89 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcm89, align 4
  tail call void @snd_pcm_set_ops(ptr noundef %78, i32 noundef 0, ptr noundef nonnull @virtsnd_pcm_ops) #8
  br label %cleanup106

cleanup106:                                       ; preds = %for.end104, %for.cond83.preheader.cleanup106_crit_edge
  %arrayidx88.1 = getelementptr %struct.virtio_pcm, ptr %vpcm.1222, i32 0, i32 3, i32 1
  %nsubstreams92.1 = getelementptr %struct.virtio_pcm, ptr %vpcm.1222, i32 0, i32 3, i32 1, i32 1
  %79 = ptrtoint ptr %nsubstreams92.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nsubstreams92.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool93.not.1 = icmp eq i32 %80, 0
  br i1 %tobool93.not.1, label %cleanup106.cleanup106.1_crit_edge, label %if.end95.1

cleanup106.cleanup106.1_crit_edge:                ; preds = %cleanup106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106.1

if.end95.1:                                       ; preds = %cleanup106
  %81 = ptrtoint ptr %pcm89 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcm89, align 4
  %substream.1 = getelementptr %struct.snd_pcm, ptr %82, i32 0, i32 8, i32 1, i32 4
  %83 = ptrtoint ptr %substream.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %kss.0215.1 = load ptr, ptr %substream.1, align 4
  %tobool97.not216.1 = icmp eq ptr %kss.0215.1, null
  br i1 %tobool97.not216.1, label %if.end95.1.for.end104.1_crit_edge, label %if.end95.1.for.body98.1_crit_edge

if.end95.1.for.body98.1_crit_edge:                ; preds = %if.end95.1
  br label %for.body98.1

if.end95.1.for.end104.1_crit_edge:                ; preds = %if.end95.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end104.1

for.body98.1:                                     ; preds = %for.body98.1.for.body98.1_crit_edge, %if.end95.1.for.body98.1_crit_edge
  %kss.0217.1 = phi ptr [ %kss.0.1, %for.body98.1.for.body98.1_crit_edge ], [ %kss.0215.1, %if.end95.1.for.body98.1_crit_edge ]
  %84 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx88.1, align 4
  %number.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %kss.0217.1, i32 0, i32 3
  %86 = ptrtoint ptr %number.1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %number.1, align 4
  %arrayidx100.1 = getelementptr ptr, ptr %85, i32 %87
  %88 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx100.1, align 4
  %substream101.1 = getelementptr inbounds %struct.virtio_pcm_substream, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %substream101.1 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %kss.0217.1, ptr %substream101.1, align 4
  %next103.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %kss.0217.1, i32 0, i32 15
  %91 = ptrtoint ptr %next103.1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %kss.0.1 = load ptr, ptr %next103.1, align 4
  %tobool97.not.1 = icmp eq ptr %kss.0.1, null
  br i1 %tobool97.not.1, label %for.body98.1.for.end104.1_crit_edge, label %for.body98.1.for.body98.1_crit_edge

for.body98.1.for.body98.1_crit_edge:              ; preds = %for.body98.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body98.1

for.body98.1.for.end104.1_crit_edge:              ; preds = %for.body98.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end104.1

for.end104.1:                                     ; preds = %for.body98.1.for.end104.1_crit_edge, %if.end95.1.for.end104.1_crit_edge
  %92 = ptrtoint ptr %pcm89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pcm89, align 4
  tail call void @snd_pcm_set_ops(ptr noundef %93, i32 noundef 1, ptr noundef nonnull @virtsnd_pcm_ops) #8
  br label %cleanup106.1

cleanup106.1:                                     ; preds = %for.end104.1, %cleanup106.cleanup106.1_crit_edge
  %94 = ptrtoint ptr %pcm89 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pcm89, align 4
  %call115 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %95, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %96 = ptrtoint ptr %vpcm.1222 to i32
  call void @__asan_load4_noabort(i32 %96)
  %vpcm.1 = load ptr, ptr %vpcm.1222, align 4
  %cmp80.not = icmp eq ptr %vpcm.1, %pcm_list
  br i1 %cmp80.not, label %cleanup106.1.cleanup123_crit_edge, label %cleanup106.1.for.cond83.preheader_crit_edge

cleanup106.1.for.cond83.preheader_crit_edge:      ; preds = %cleanup106.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond83.preheader

cleanup106.1.cleanup123_crit_edge:                ; preds = %cleanup106.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

cleanup123:                                       ; preds = %cleanup106.1.cleanup123_crit_edge, %cleanup65.thread, %for.cond77.preheader.cleanup123_crit_edge, %devm_kcalloc.exit.1.cleanup123_crit_edge, %devm_kcalloc.exit.cleanup123_crit_edge, %devm_kcalloc.exit.thread, %do.end
  %retval.6 = phi i32 [ %54, %cleanup65.thread ], [ %call, %do.end ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %for.cond77.preheader.cleanup123_crit_edge ], [ 0, %cleanup106.1.cleanup123_crit_edge ], [ -12, %devm_kcalloc.exit.1.cleanup123_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup123_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtsnd_pcm_event(ptr nocapture noundef readonly %snd, ptr nocapture noundef readonly %event) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.virtio_snd_event, ptr %event, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %nsubstreams = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 9
  %3 = ptrtoint ptr %nsubstreams to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nsubstreams, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not = icmp ult i32 %2, %4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %substreams = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 8
  %5 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %substreams, align 4
  %7 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17891328, i32 %8)
  %cond = icmp eq i32 %8, 17891328
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %lock = getelementptr %struct.virtio_pcm_substream, ptr %6, i32 %2, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %xfer_enabled = getelementptr %struct.virtio_pcm_substream, ptr %6, i32 %2, i32 11
  %9 = ptrtoint ptr %xfer_enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %xfer_enabled, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %sw.bb.if.end2_crit_edge, label %if.then1

sw.bb.if.end2_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then1:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %xfer_xrun = getelementptr %struct.virtio_pcm_substream, ptr %6, i32 %2, i32 12
  %11 = ptrtoint ptr %xfer_xrun to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %xfer_xrun, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %sw.bb.if.end2_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__param_pcm_buffer_ms, !1, !"__param_pcm_buffer_ms", i1 false, i1 false}
!1 = !{!"../sound/virtio/virtio_pcm.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_pcm_buffer_mstype233, !1, !"__UNIQUE_ID_pcm_buffer_mstype233", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_pcm_buffer_ms234, !4, !"__UNIQUE_ID_pcm_buffer_ms234", i1 false, i1 false}
!4 = !{!"../sound/virtio/virtio_pcm.c", i32 13, i32 1}
!5 = !{ptr @__param_pcm_periods_min, !6, !"__param_pcm_periods_min", i1 false, i1 false}
!6 = !{!"../sound/virtio/virtio_pcm.c", i32 16, i32 1}
!7 = !{ptr @__UNIQUE_ID_pcm_periods_mintype235, !6, !"__UNIQUE_ID_pcm_periods_mintype235", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_pcm_periods_min236, !9, !"__UNIQUE_ID_pcm_periods_min236", i1 false, i1 false}
!9 = !{!"../sound/virtio/virtio_pcm.c", i32 17, i32 1}
!10 = !{ptr @__param_pcm_periods_max, !11, !"__param_pcm_periods_max", i1 false, i1 false}
!11 = !{!"../sound/virtio/virtio_pcm.c", i32 20, i32 1}
!12 = !{ptr @__UNIQUE_ID_pcm_periods_maxtype237, !11, !"__UNIQUE_ID_pcm_periods_maxtype237", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pcm_periods_max238, !14, !"__UNIQUE_ID_pcm_periods_max238", i1 false, i1 false}
!14 = !{!"../sound/virtio/virtio_pcm.c", i32 21, i32 1}
!15 = !{ptr @__param_pcm_period_ms_min, !16, !"__param_pcm_period_ms_min", i1 false, i1 false}
!16 = !{!"../sound/virtio/virtio_pcm.c", i32 24, i32 1}
!17 = !{ptr @__UNIQUE_ID_pcm_period_ms_mintype239, !16, !"__UNIQUE_ID_pcm_period_ms_mintype239", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_pcm_period_ms_min240, !19, !"__UNIQUE_ID_pcm_period_ms_min240", i1 false, i1 false}
!19 = !{!"../sound/virtio/virtio_pcm.c", i32 25, i32 1}
!20 = !{ptr @__param_pcm_period_ms_max, !21, !"__param_pcm_period_ms_max", i1 false, i1 false}
!21 = !{!"../sound/virtio/virtio_pcm.c", i32 28, i32 1}
!22 = !{ptr @__UNIQUE_ID_pcm_period_ms_maxtype241, !21, !"__UNIQUE_ID_pcm_period_ms_maxtype241", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_pcm_period_ms_max242, !24, !"__UNIQUE_ID_pcm_period_ms_max242", i1 false, i1 false}
!24 = !{!"../sound/virtio/virtio_pcm.c", i32 29, i32 1}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/virtio/virtio_pcm.c", i32 265, i32 3}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @virtsnd_pcm_validate._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @virtsnd_pcm_validate._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/virtio/virtio_pcm.c", i32 272, i32 3}
!35 = !{ptr @virtsnd_pcm_validate._entry.5, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @virtsnd_pcm_validate._entry_ptr.7, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/virtio/virtio_pcm.c", i32 279, i32 3}
!39 = !{ptr @virtsnd_pcm_validate._entry.8, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @virtsnd_pcm_validate._entry_ptr.10, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/virtio/virtio_pcm.c", i32 286, i32 3}
!43 = !{ptr @virtsnd_pcm_validate._entry.11, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @virtsnd_pcm_validate._entry_ptr.13, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @virtsnd_pcm_parse_cfg.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../sound/virtio/virtio_pcm.c", i32 355, i32 3}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @virtsnd_pcm_parse_cfg.__key.15, !49, !"__key", i1 false, i1 false}
!49 = !{!"../sound/virtio/virtio_pcm.c", i32 356, i32 3}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @virtsnd_pcm_parse_cfg.__key.17, !52, !"__key", i1 false, i1 false}
!52 = !{!"../sound/virtio/virtio_pcm.c", i32 357, i32 3}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/virtio/virtio_pcm.c", i32 379, i32 4}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @virtsnd_pcm_parse_cfg._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @virtsnd_pcm_parse_cfg._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/virtio/virtio_pcm.c", i32 417, i32 31}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/virtio/virtio_pcm.c", i32 420, i32 4}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @virtsnd_pcm_build_devs._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @virtsnd_pcm_build_devs._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/virtio/virtio_pcm.c", i32 429, i32 5}
!68 = !{ptr @__param_str_pcm_buffer_ms, !1, !"__param_str_pcm_buffer_ms", i1 false, i1 false}
!69 = !{ptr @pcm_buffer_ms, !70, !"pcm_buffer_ms", i1 false, i1 false}
!70 = !{!"../sound/virtio/virtio_pcm.c", i32 11, i32 12}
!71 = !{ptr @__param_str_pcm_periods_min, !6, !"__param_str_pcm_periods_min", i1 false, i1 false}
!72 = !{ptr @pcm_periods_min, !73, !"pcm_periods_min", i1 false, i1 false}
!73 = !{!"../sound/virtio/virtio_pcm.c", i32 15, i32 12}
!74 = !{ptr @__param_str_pcm_periods_max, !11, !"__param_str_pcm_periods_max", i1 false, i1 false}
!75 = !{ptr @pcm_periods_max, !76, !"pcm_periods_max", i1 false, i1 false}
!76 = !{!"../sound/virtio/virtio_pcm.c", i32 19, i32 12}
!77 = !{ptr @__param_str_pcm_period_ms_min, !16, !"__param_str_pcm_period_ms_min", i1 false, i1 false}
!78 = !{ptr @pcm_period_ms_min, !79, !"pcm_period_ms_min", i1 false, i1 false}
!79 = !{!"../sound/virtio/virtio_pcm.c", i32 23, i32 12}
!80 = !{ptr @__param_str_pcm_period_ms_max, !21, !"__param_str_pcm_period_ms_max", i1 false, i1 false}
!81 = !{ptr @pcm_period_ms_max, !82, !"pcm_period_ms_max", i1 false, i1 false}
!82 = !{!"../sound/virtio/virtio_pcm.c", i32 27, i32 12}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/virtio/virtio_pcm.c", i32 115, i32 3}
!85 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @virtsnd_pcm_build_hw._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @virtsnd_pcm_build_hw._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/virtio/virtio_pcm.c", i32 143, i32 3}
!90 = !{ptr @virtsnd_pcm_build_hw._entry.27, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @virtsnd_pcm_build_hw._entry_ptr.29, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/virtio/virtio_pcm.c", i32 166, i32 3}
!94 = !{ptr @virtsnd_pcm_build_hw._entry.30, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @virtsnd_pcm_build_hw._entry_ptr.32, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @g_v2a_format_map, !97, !"g_v2a_format_map", i1 false, i1 false}
!97 = !{!"../sound/virtio/virtio_pcm.c", i32 32, i32 31}
!98 = !{ptr @g_v2a_rate_map, !99, !"g_v2a_rate_map", i1 false, i1 false}
!99 = !{!"../sound/virtio/virtio_pcm.c", i32 67, i32 38}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{!"branch_weights", i32 1, i32 2000}
!111 = !{i8 0, i8 2}
