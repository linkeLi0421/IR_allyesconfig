; ModuleID = '/llk/IR_all_yes/sound/soc/soc-topology.c_pt.bc'
source_filename = "../sound/soc/soc-topology.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_tplg_widget_bind_event\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_tplg_widget_bind_event\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_tplg_widget_bind_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_tplg_widget_bind_event:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_tplg_widget_bind_event\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_tplg_widget_bind_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_tplg_component_load\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_tplg_component_load\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_tplg_component_load\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_tplg_component_load:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_tplg_component_load\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_tplg_component_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_tplg_component_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_tplg_component_remove\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_tplg_component_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_tplg_component_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_tplg_component_remove\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_tplg_component_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_soc_tplg_kcontrol_ops = type { i32, ptr, ptr, ptr }
%struct.soc_tplg_map = type { i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_tplg_widget_events = type { i16, ptr }
%struct.soc_tplg = type { ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_tplg_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_soc_tplg_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_soc_tplg_ctl_hdr = type { i32, i32, [44 x i8], i32, %struct.snd_soc_tplg_io_ops, %struct.snd_soc_tplg_ctl_tlv }
%struct.snd_soc_tplg_io_ops = type { i32, i32, i32 }
%struct.snd_soc_tplg_ctl_tlv = type { i32, i32, %union.anon.84 }
%union.anon.84 = type { [32 x i32] }
%struct.snd_soc_tplg_dapm_graph_elem = type { [44 x i8], [44 x i8], [44 x i8] }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_tplg_dapm_widget = type { i32, i32, [44 x i8], [44 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_private = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.anon.88 }
%struct.anon.88 = type { %struct.anon.89, [0 x %struct.snd_soc_tplg_vendor_array] }
%struct.anon.89 = type {}
%struct.snd_soc_tplg_vendor_array = type { i32, i32, i32, %union.anon.90 }
%union.anon.90 = type { [0 x %struct.snd_soc_tplg_vendor_uuid_elem] }
%struct.snd_soc_tplg_vendor_uuid_elem = type { i32, [16 x i8] }
%struct.snd_soc_tplg_pcm = type <{ i32, [44 x i8], [44 x i8], i32, i32, i32, i32, i32, [8 x %struct.snd_soc_tplg_stream], i32, [2 x %struct.snd_soc_tplg_stream_caps], i32, i32, %struct.snd_soc_tplg_private }>
%struct.snd_soc_tplg_stream = type { i32, [44 x i8], i64, i32, i32, i32, i32 }
%struct.snd_soc_tplg_stream_caps = type { i32, [44 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_tplg_pcm_v4 = type <{ i32, [44 x i8], [44 x i8], i32, i32, i32, i32, i32, [8 x %struct.snd_soc_tplg_stream], i32, [2 x %struct.snd_soc_tplg_stream_caps_v4] }>
%struct.snd_soc_tplg_stream_caps_v4 = type <{ i32, [44 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_tplg_dai = type <{ i32, [44 x i8], i32, i32, i32, [2 x %struct.snd_soc_tplg_stream_caps], i32, i32, %struct.snd_soc_tplg_private }>
%struct.snd_soc_tplg_link_config_v4 = type <{ i32, i32, [8 x %struct.snd_soc_tplg_stream], i32 }>
%struct.snd_soc_tplg_link_config = type { i32, i32, [44 x i8], [44 x i8], [8 x %struct.snd_soc_tplg_stream], i32, [8 x %struct.snd_soc_tplg_hw_config], i32, i32, i32, i32, %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_hw_config = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, [8 x i32] }
%struct.snd_soc_tplg_manifest_v4 = type { i32, i32, i32, i32, i32, i32, %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_manifest = type { i32, i32, i32, i32, i32, i32, i32, [20 x i32], %struct.snd_soc_tplg_private }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_tplg_mixer_control = type { %struct.snd_soc_tplg_ctl_hdr, i32, i32, i32, i32, i32, i32, [8 x %struct.snd_soc_tplg_channel], %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_channel = type { i32, i32, i32, i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_tplg_enum_control = type { %struct.snd_soc_tplg_ctl_hdr, i32, i32, [8 x %struct.snd_soc_tplg_channel], i32, i32, i32, [16 x [44 x i8]], [176 x i32], %struct.snd_soc_tplg_private }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_tplg_bytes_control = type { %struct.snd_soc_tplg_ctl_hdr, i32, i32, i32, i32, i32, %struct.snd_soc_tplg_io_ops, %struct.snd_soc_tplg_private }
%struct.soc_bytes_ext = type { i32, %struct.snd_soc_dobj, ptr, ptr }
%struct.snd_soc_tplg_bytes_ext_ops = type { i32, ptr, ptr }

@__kstrtab_snd_soc_tplg_widget_bind_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_tplg_widget_bind_event = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_tplg_widget_bind_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_tplg_widget_bind_event to i32), ptr @__kstrtab_snd_soc_tplg_widget_bind_event, ptr @__kstrtabns_snd_soc_tplg_widget_bind_event }, section "___ksymtab_gpl+snd_soc_tplg_widget_bind_event", align 4
@__kstrtab_snd_soc_tplg_component_load = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_tplg_component_load = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_tplg_component_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_tplg_component_load to i32), ptr @__kstrtab_snd_soc_tplg_component_load, ptr @__kstrtabns_snd_soc_tplg_component_load }, section "___ksymtab_gpl+snd_soc_tplg_component_load", align 4
@snd_soc_tplg_component_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2746, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ASoC: invalid component type %d for removal\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_soc_tplg_component_remove\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/soc-topology.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_soc_tplg_component_remove._entry_ptr = internal global ptr @snd_soc_tplg_component_remove._entry, section ".printk_index", align 4
@__kstrtab_snd_soc_tplg_component_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_tplg_component_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_tplg_component_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_tplg_component_remove to i32), ptr @__kstrtab_snd_soc_tplg_component_remove, ptr @__kstrtabns_snd_soc_tplg_component_remove }, section "___ksymtab_gpl+snd_soc_tplg_component_remove", align 4
@soc_tplg_process_headers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 2617, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ASoC: topology: invalid header: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"soc_tplg_process_headers\00", [39 x i8] zeroinitializer }, align 32
@soc_tplg_process_headers._entry_ptr = internal global ptr @soc_tplg_process_headers._entry, section ".printk_index", align 4
@soc_tplg_process_headers._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 2627, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ASoC: topology: could not load header: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@soc_tplg_process_headers._entry_ptr.9 = internal global ptr @soc_tplg_process_headers._entry.7, section ".printk_index", align 4
@soc_tplg_process_headers._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 2645, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ASoC: failed to initialise DAPM from Firmware\0A\00", [49 x i8] zeroinitializer }, align 32
@soc_tplg_process_headers._entry_ptr.12 = internal global ptr @soc_tplg_process_headers._entry.10, section ".printk_index", align 4
@soc_valid_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 2485, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ASoC: invalid header size for type %d at offset 0x%lx size 0x%zx.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"soc_valid_header\00", [47 x i8] zeroinitializer }, align 32
@soc_valid_header._entry_ptr = internal global ptr @soc_valid_header._entry, section ".printk_index", align 4
@soc_valid_header._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 2493, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ASoC: invalid header of type %d at offset %ld payload_size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@soc_valid_header._entry_ptr.17 = internal global ptr @soc_valid_header._entry.15, section ".printk_index", align 4
@soc_valid_header._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 2502, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"ASoC: pass %d big endian not supported header got %x at offset 0x%lx size 0x%zx.\0A\00", [46 x i8] zeroinitializer }, align 32
@soc_valid_header._entry_ptr.20 = internal global ptr @soc_valid_header._entry.18, section ".printk_index", align 4
@soc_valid_header._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 2510, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"ASoC: pass %d does not have a valid header got %x at offset 0x%lx size 0x%zx.\0A\00", [49 x i8] zeroinitializer }, align 32
@soc_valid_header._entry_ptr.23 = internal global ptr @soc_valid_header._entry.21, section ".printk_index", align 4
@soc_valid_header._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 2521, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"ASoC: pass %d invalid ABI version got 0x%x need 0x%x at offset 0x%lx size 0x%zx.\0A\00", [46 x i8] zeroinitializer }, align 32
@soc_valid_header._entry_ptr.26 = internal global ptr @soc_valid_header._entry.24, section ".printk_index", align 4
@soc_valid_header._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.2, i32 2527, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ASoC: header has 0 size at offset 0x%lx.\0A\00", [54 x i8] zeroinitializer }, align 32
@soc_valid_header._entry_ptr.29 = internal global ptr @soc_valid_header._entry.27, section ".printk_index", align 4
@soc_tplg_load_header.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 2, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_soc_core\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"soc_tplg_load_header\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ASoC: Got 0x%x bytes of type %d version %d vendor %d at pass %d\0A\00", [63 x i8] zeroinitializer }, align 32
@soc_tplg_kcontrol_elems_load.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"soc_tplg_kcontrol_elems_load\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ASoC: adding %d kcontrols at 0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@soc_tplg_kcontrol_elems_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 1050, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ASoC: invalid control size\0A\00", [36 x i8] zeroinitializer }, align 32
@soc_tplg_kcontrol_elems_load._entry_ptr = internal global ptr @soc_tplg_kcontrol_elems_load._entry, section ".printk_index", align 4
@soc_tplg_kcontrol_elems_load._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.2, i32 1082, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ASoC: invalid control\0A\00", [41 x i8] zeroinitializer }, align 32
@soc_tplg_kcontrol_elems_load._entry_ptr.38 = internal global ptr @soc_tplg_kcontrol_elems_load._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mixers\00", [25 x i8] zeroinitializer }, align 32
@soc_tplg_dmixer_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 770, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ASoC: invalid count %d for controls\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"soc_tplg_dmixer_create\00", [41 x i8] zeroinitializer }, align 32
@soc_tplg_dmixer_create._entry_ptr = internal global ptr @soc_tplg_dmixer_create._entry, section ".printk_index", align 4
@soc_tplg_dmixer_create.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ASoC: adding mixer kcontrol %s with access 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@soc_tplg_dmixer_create._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.2, i32 828, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ASoC: failed to create TLV %s\0A\00", [33 x i8] zeroinitializer }, align 32
@soc_tplg_dmixer_create._entry_ptr.45 = internal global ptr @soc_tplg_dmixer_create._entry.43, section ".printk_index", align 4
@soc_tplg_dmixer_create._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.41, ptr @.str.2, i32 837, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ASoC: failed to init %s\0A\00", [39 x i8] zeroinitializer }, align 32
@soc_tplg_dmixer_create._entry_ptr.48 = internal global ptr @soc_tplg_dmixer_create._entry.46, section ".printk_index", align 4
@soc_tplg_dmixer_create._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.41, ptr @.str.2, i32 846, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ASoC: failed to add %s\0A\00", [40 x i8] zeroinitializer }, align 32
@soc_tplg_dmixer_create._entry_ptr.51 = internal global ptr @soc_tplg_dmixer_create._entry.49, section ".printk_index", align 4
@soc_tplg_check_elem_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 91, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ASoC: %s overflow end of data\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"soc_tplg_check_elem_count\00", [38 x i8] zeroinitializer }, align 32
@soc_tplg_check_elem_count._entry_ptr = internal global ptr @soc_tplg_check_elem_count._entry, section ".printk_index", align 4
@soc_tplg_check_elem_count._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ASoC: %s count %d of size %zu is bigger than chunk %zu\0A\00", [40 x i8] zeroinitializer }, align 32
@soc_tplg_check_elem_count._entry_ptr.56 = internal global ptr @soc_tplg_check_elem_count._entry.54, section ".printk_index", align 4
@io_ops = internal constant { [13 x %struct.snd_soc_tplg_kcontrol_ops], [48 x i8] } { [13 x %struct.snd_soc_tplg_kcontrol_ops] [%struct.snd_soc_tplg_kcontrol_ops { i32 1, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, ptr @snd_soc_info_volsw }, %struct.snd_soc_tplg_kcontrol_ops { i32 2, ptr @snd_soc_get_volsw_sx, ptr @snd_soc_put_volsw_sx, ptr null }, %struct.snd_soc_tplg_kcontrol_ops { i32 4, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, ptr @snd_soc_info_enum_double }, %struct.snd_soc_tplg_kcontrol_ops { i32 6, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, ptr null }, %struct.snd_soc_tplg_kcontrol_ops { i32 5, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, ptr @snd_soc_bytes_info }, %struct.snd_soc_tplg_kcontrol_ops { i32 7, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, ptr @snd_soc_info_volsw_range }, %struct.snd_soc_tplg_kcontrol_ops { i32 3, ptr @snd_soc_get_xr_sx, ptr @snd_soc_put_xr_sx, ptr @snd_soc_info_xr_sx }, %struct.snd_soc_tplg_kcontrol_ops { i32 8, ptr @snd_soc_get_strobe, ptr @snd_soc_put_strobe, ptr null }, %struct.snd_soc_tplg_kcontrol_ops { i32 64, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, ptr @snd_soc_info_volsw }, %struct.snd_soc_tplg_kcontrol_ops { i32 65, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, ptr @snd_soc_info_enum_double }, %struct.snd_soc_tplg_kcontrol_ops { i32 66, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, ptr null }, %struct.snd_soc_tplg_kcontrol_ops { i32 67, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, ptr null }, %struct.snd_soc_tplg_kcontrol_ops { i32 68, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, ptr @snd_soc_dapm_info_pin_switch }], [48 x i8] zeroinitializer }, align 32
@soc_control_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"ASoC: no complete mixer IO handler for %s type (g,p,i) %d:%d:%d at 0x%lx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"soc_control_err\00", [16 x i8] zeroinitializer }, align 32
@soc_control_err._entry_ptr = internal global ptr @soc_control_err._entry, section ".printk_index", align 4
@soc_tplg_create_tlv.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"soc_tplg_create_tlv\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported TLV type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@soc_tplg_add_dcontrol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ASoC: Failed to create new kcontrol %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"soc_tplg_add_dcontrol\00", [42 x i8] zeroinitializer }, align 32
@soc_tplg_add_dcontrol._entry_ptr = internal global ptr @soc_tplg_add_dcontrol._entry, section ".printk_index", align 4
@soc_tplg_add_dcontrol._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ASoC: Failed to add %s: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@soc_tplg_add_dcontrol._entry_ptr.65 = internal global ptr @soc_tplg_add_dcontrol._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"enums\00", [26 x i8] zeroinitializer }, align 32
@soc_tplg_denum_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 934, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ASoC: invalid count %d for enum controls\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"soc_tplg_denum_create\00", [42 x i8] zeroinitializer }, align 32
@soc_tplg_denum_create._entry_ptr = internal global ptr @soc_tplg_denum_create._entry, section ".printk_index", align 4
@soc_tplg_denum_create.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ASoC: adding enum kcontrol %s size %d\0A\00", [57 x i8] zeroinitializer }, align 32
@soc_tplg_denum_create._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.68, ptr @.str.2, i32 981, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ASoC: could not create values for %s\0A\00", [58 x i8] zeroinitializer }, align 32
@soc_tplg_denum_create._entry_ptr.72 = internal global ptr @soc_tplg_denum_create._entry.70, section ".printk_index", align 4
@soc_tplg_denum_create._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.68, ptr @.str.2, i32 992, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ASoC: could not create texts for %s\0A\00", [59 x i8] zeroinitializer }, align 32
@soc_tplg_denum_create._entry_ptr.75 = internal global ptr @soc_tplg_denum_create._entry.73, section ".printk_index", align 4
@soc_tplg_denum_create._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.68, ptr @.str.2, i32 1000, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ASoC: invalid enum control type %d for %s\0A\00", [53 x i8] zeroinitializer }, align 32
@soc_tplg_denum_create._entry_ptr.78 = internal global ptr @soc_tplg_denum_create._entry.76, section ".printk_index", align 4
@soc_tplg_denum_create._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.68, ptr @.str.2, i32 1016, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@soc_tplg_denum_create._entry_ptr.80 = internal global ptr @soc_tplg_denum_create._entry.79, section ".printk_index", align 4
@soc_tplg_denum_create._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.68, ptr @.str.2, i32 1025, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ASoC: could not add kcontrol %s\0A\00", [63 x i8] zeroinitializer }, align 32
@soc_tplg_denum_create._entry_ptr.83 = internal global ptr @soc_tplg_denum_create._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mixer bytes\00", [20 x i8] zeroinitializer }, align 32
@soc_tplg_dbytes_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 691, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ASoC: Invalid count %d for byte control\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"soc_tplg_dbytes_create\00", [41 x i8] zeroinitializer }, align 32
@soc_tplg_dbytes_create._entry_ptr = internal global ptr @soc_tplg_dbytes_create._entry, section ".printk_index", align 4
@soc_tplg_dbytes_create.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ASoC: adding bytes kcontrol %s with access 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@soc_tplg_dbytes_create._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.86, ptr @.str.2, i32 737, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@soc_tplg_dbytes_create._entry_ptr.89 = internal global ptr @soc_tplg_dbytes_create._entry.88, section ".printk_index", align 4
@soc_tplg_dbytes_create._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.86, ptr @.str.2, i32 746, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@soc_tplg_dbytes_create._entry_ptr.91 = internal global ptr @soc_tplg_dbytes_create._entry.90, section ".printk_index", align 4
@soc_bind_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ASoC: invalid control type (g,p,i) %d:%d:%d index %d at 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"soc_bind_err\00", [19 x i8] zeroinitializer }, align 32
@soc_bind_err._entry_ptr = internal global ptr @soc_bind_err._entry, section ".printk_index", align 4
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"graph\00", [26 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_graph_elems_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ASoC: invalid count %d for DAPM routes\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"soc_tplg_dapm_graph_elems_load\00", [33 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_graph_elems_load._entry_ptr = internal global ptr @soc_tplg_dapm_graph_elems_load._entry, section ".printk_index", align 4
@soc_tplg_dapm_graph_elems_load.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 1, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ASoC: adding %d DAPM routes for index %d\0A\00", [54 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_graph_elems_load._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.96, ptr @.str.2, i32 1181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ASoC: topology: add_route failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_graph_elems_load._entry_ptr.100 = internal global ptr @soc_tplg_dapm_graph_elems_load._entry.98, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@soc_tplg_dapm_widget_elems_load.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 1, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"soc_tplg_dapm_widget_elems_load\00", [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ASoC: adding %d DAPM widgets\0A\00", [34 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_elems_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 1600, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ASoC: invalid widget data size\0A\00", [32 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_elems_load._entry_ptr = internal global ptr @soc_tplg_dapm_widget_elems_load._entry, section ".printk_index", align 4
@soc_tplg_dapm_widget_elems_load._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.101, ptr @.str.2, i32 1606, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ASoC: invalid widget size\0A\00", [37 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_elems_load._entry_ptr.106 = internal global ptr @soc_tplg_dapm_widget_elems_load._entry.104, section ".printk_index", align 4
@soc_tplg_dapm_widget_elems_load._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.101, ptr @.str.2, i32 1612, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ASoC: invalid widget private data size\0A\00", [56 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_elems_load._entry_ptr.109 = internal global ptr @soc_tplg_dapm_widget_elems_load._entry.107, section ".printk_index", align 4
@soc_tplg_dapm_widget_elems_load._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.101, ptr @.str.2, i32 1619, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ASoC: failed to load widget %s\0A\00", [32 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_elems_load._entry_ptr.112 = internal global ptr @soc_tplg_dapm_widget_elems_load._entry.110, section ".printk_index", align 4
@soc_tplg_dapm_widget_create.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 1, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"soc_tplg_dapm_widget_create\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ASoC: creating DAPM widget %s id %d\0A\00", [59 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.2, i32 1530, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ASoC: invalid widget control type %d:%d:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_create._entry_ptr = internal global ptr @soc_tplg_dapm_widget_create._entry, section ".printk_index", align 4
@soc_tplg_dapm_widget_create.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.113, ptr @.str.2, ptr @.str.116, i8 1, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ASoC: template %s with %d/%d/%d (mixer/enum/bytes) control\0A\00", [36 x i8] zeroinitializer }, align 32
@dapm_map = internal constant { [24 x %struct.soc_tplg_map], [32 x i8] } { [24 x %struct.soc_tplg_map] [%struct.soc_tplg_map zeroinitializer, %struct.soc_tplg_map { i32 1, i32 1 }, %struct.soc_tplg_map { i32 2, i32 2 }, %struct.soc_tplg_map { i32 3, i32 4 }, %struct.soc_tplg_map { i32 4, i32 6 }, %struct.soc_tplg_map { i32 5, i32 7 }, %struct.soc_tplg_map { i32 6, i32 8 }, %struct.soc_tplg_map { i32 7, i32 9 }, %struct.soc_tplg_map { i32 8, i32 15 }, %struct.soc_tplg_map { i32 9, i32 17 }, %struct.soc_tplg_map { i32 10, i32 18 }, %struct.soc_tplg_map { i32 11, i32 23 }, %struct.soc_tplg_map { i32 12, i32 24 }, %struct.soc_tplg_map { i32 13, i32 27 }, %struct.soc_tplg_map { i32 14, i32 28 }, %struct.soc_tplg_map { i32 15, i32 29 }, %struct.soc_tplg_map { i32 16, i32 31 }, %struct.soc_tplg_map { i32 17, i32 32 }, %struct.soc_tplg_map { i32 18, i32 33 }, %struct.soc_tplg_map { i32 19, i32 25 }, %struct.soc_tplg_map { i32 20, i32 34 }, %struct.soc_tplg_map { i32 21, i32 35 }, %struct.soc_tplg_map { i32 22, i32 36 }, %struct.soc_tplg_map { i32 23, i32 37 }], [32 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_dmixer_create.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.117, ptr @.str.2, ptr @.str.118, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"soc_tplg_dapm_widget_dmixer_create\00", [61 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" adding DAPM widget mixer control %s\0A\00", [58 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_dmixer_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.117, ptr @.str.2, i32 1264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_dmixer_create._entry_ptr = internal global ptr @soc_tplg_dapm_widget_dmixer_create._entry, section ".printk_index", align 4
@soc_tplg_dapm_widget_dmixer_create._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.117, ptr @.str.2, i32 1273, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_dmixer_create._entry_ptr.120 = internal global ptr @soc_tplg_dapm_widget_dmixer_create._entry.119, section ".printk_index", align 4
@soc_tplg_dapm_widget_denum_create.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.121, ptr @.str.2, ptr @.str.122, i8 1, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"soc_tplg_dapm_widget_denum_create\00", [62 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c" adding DAPM widget enum control %s\0A\00", [59 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_denum_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.121, ptr @.str.2, i32 1326, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_denum_create._entry_ptr = internal global ptr @soc_tplg_dapm_widget_denum_create._entry, section ".printk_index", align 4
@soc_tplg_dapm_widget_denum_create._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.121, ptr @.str.2, i32 1336, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_denum_create._entry_ptr.124 = internal global ptr @soc_tplg_dapm_widget_denum_create._entry.123, section ".printk_index", align 4
@soc_tplg_dapm_widget_denum_create._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.121, ptr @.str.2, i32 1342, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_denum_create._entry_ptr.126 = internal global ptr @soc_tplg_dapm_widget_denum_create._entry.125, section ".printk_index", align 4
@soc_tplg_dapm_widget_denum_create._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.121, ptr @.str.2, i32 1358, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_denum_create._entry_ptr.128 = internal global ptr @soc_tplg_dapm_widget_denum_create._entry.127, section ".printk_index", align 4
@soc_tplg_dapm_widget_dbytes_create.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.129, ptr @.str.2, ptr @.str.87, i8 1, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"soc_tplg_dapm_widget_dbytes_create\00", [61 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_dbytes_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.129, ptr @.str.2, i32 1411, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_widget_dbytes_create._entry_ptr = internal global ptr @soc_tplg_dapm_widget_dbytes_create._entry, section ".printk_index", align 4
@soc_tplg_pcm_elems_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 1961, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ASoC: invalid size %d for PCM elems\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"soc_tplg_pcm_elems_load\00", [40 x i8] zeroinitializer }, align 32
@soc_tplg_pcm_elems_load._entry_ptr = internal global ptr @soc_tplg_pcm_elems_load._entry, section ".printk_index", align 4
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCM DAI\00", [24 x i8] zeroinitializer }, align 32
@soc_tplg_pcm_elems_load._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.131, ptr @.str.2, i32 1970, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ASoC: invalid count %d for PCM DAI elems\0A\00", [54 x i8] zeroinitializer }, align 32
@soc_tplg_pcm_elems_load._entry_ptr.135 = internal global ptr @soc_tplg_pcm_elems_load._entry.133, section ".printk_index", align 4
@soc_tplg_pcm_elems_load.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.131, ptr @.str.2, ptr @.str.136, i8 1, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ASoC: adding %d PCM DAIs\0A\00", [38 x i8] zeroinitializer }, align 32
@pcm_new_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 1913, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ASoC: invalid PCM size\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcm_new_ver\00", [20 x i8] zeroinitializer }, align 32
@pcm_new_ver._entry_ptr = internal global ptr @pcm_new_ver._entry, section ".printk_index", align 4
@pcm_new_ver._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.2, i32 1917, ptr @.str.141, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ASoC: old version of PCM\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pcm_new_ver._entry_ptr.142 = internal global ptr @pcm_new_ver._entry.139, section ".printk_index", align 4
@soc_tplg_dai_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 1731, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ASoC: DAI loading failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"soc_tplg_dai_create\00", [44 x i8] zeroinitializer }, align 32
@soc_tplg_dai_create._entry_ptr = internal global ptr @soc_tplg_dai_create._entry, section ".printk_index", align 4
@soc_tplg_dai_create._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.2, i32 1748, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to create DAI widgets %d\0A\00", [63 x i8] zeroinitializer }, align 32
@soc_tplg_dai_create._entry_ptr.147 = internal global ptr @soc_tplg_dai_create._entry.145, section ".printk_index", align 4
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@soc_tplg_fe_link_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 1844, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ASoC: FE link loading failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"soc_tplg_fe_link_create\00", [40 x i8] zeroinitializer }, align 32
@soc_tplg_fe_link_create._entry_ptr = internal global ptr @soc_tplg_fe_link_create._entry, section ".printk_index", align 4
@soc_tplg_fe_link_create._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 1850, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ASoC: adding FE link failed\0A\00", [35 x i8] zeroinitializer }, align 32
@soc_tplg_fe_link_create._entry_ptr.154 = internal global ptr @soc_tplg_fe_link_create._entry.152, section ".printk_index", align 4
@soc_tplg_dai_elems_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 2375, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ASoC: invalid physical DAI size\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"soc_tplg_dai_elems_load\00", [40 x i8] zeroinitializer }, align 32
@soc_tplg_dai_elems_load._entry_ptr = internal global ptr @soc_tplg_dai_elems_load._entry, section ".printk_index", align 4
@soc_tplg_dai_elems_load._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.2, i32 2381, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ASoC: failed to configure DAI\0A\00", [33 x i8] zeroinitializer }, align 32
@soc_tplg_dai_elems_load._entry_ptr.159 = internal global ptr @soc_tplg_dai_elems_load._entry.157, section ".printk_index", align 4
@soc_tplg_dai_elems_load.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.156, ptr @.str.2, ptr @.str.160, i8 2, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ASoC: Configure %d BE DAIs\0A\00", [36 x i8] zeroinitializer }, align 32
@soc_tplg_dai_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 2312, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ASoC: physical DAI %s not registered\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"soc_tplg_dai_config\00", [44 x i8] zeroinitializer }, align 32
@soc_tplg_dai_config._entry_ptr = internal global ptr @soc_tplg_dai_config._entry, section ".printk_index", align 4
@soc_tplg_dai_config._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.2, i32 2318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ASoC: physical DAI %s id mismatch\0A\00", [61 x i8] zeroinitializer }, align 32
@soc_tplg_dai_config._entry_ptr.165 = internal global ptr @soc_tplg_dai_config._entry.163, section ".printk_index", align 4
@soc_tplg_dai_config._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.162, ptr @.str.2, i32 2350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@soc_tplg_dai_config._entry_ptr.167 = internal global ptr @soc_tplg_dai_config._entry.166, section ".printk_index", align 4
@soc_tplg_link_elems_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 2242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ASoC: invalid size %d for physical link elems\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"soc_tplg_link_elems_load\00", [39 x i8] zeroinitializer }, align 32
@soc_tplg_link_elems_load._entry_ptr = internal global ptr @soc_tplg_link_elems_load._entry, section ".printk_index", align 4
@.str.170 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"physical link config\00", [43 x i8] zeroinitializer }, align 32
@soc_tplg_link_elems_load._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.169, ptr @.str.2, i32 2251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ASoC: invalid count %d for physical link elems\0A\00", [48 x i8] zeroinitializer }, align 32
@soc_tplg_link_elems_load._entry_ptr.173 = internal global ptr @soc_tplg_link_elems_load._entry.171, section ".printk_index", align 4
@link_new_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.2, i32 2102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ASoC: invalid physical link config size\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"link_new_ver\00", [19 x i8] zeroinitializer }, align 32
@link_new_ver._entry_ptr = internal global ptr @link_new_ver._entry, section ".printk_index", align 4
@link_new_ver._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.2, i32 2106, ptr @.str.141, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ASoC: old version of physical link config\0A\00", [53 x i8] zeroinitializer }, align 32
@link_new_ver._entry_ptr.178 = internal global ptr @link_new_ver._entry.176, section ".printk_index", align 4
@soc_tplg_link_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 2193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ASoC: physical link %s (id %d) not exist\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"soc_tplg_link_config\00", [43 x i8] zeroinitializer }, align 32
@soc_tplg_link_config._entry_ptr = internal global ptr @soc_tplg_link_config._entry, section ".printk_index", align 4
@soc_tplg_link_config._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.2, i32 2210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ASoC: physical link loading failed\0A\00", [60 x i8] zeroinitializer }, align 32
@soc_tplg_link_config._entry_ptr.183 = internal global ptr @soc_tplg_link_config._entry.181, section ".printk_index", align 4
@manifest_new_ver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.2, i32 2414, ptr @.str.141, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ASoC: invalid manifest size %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"manifest_new_ver\00", [47 x i8] zeroinitializer }, align 32
@manifest_new_ver._entry_ptr = internal global ptr @manifest_new_ver._entry, section ".printk_index", align 4
@manifest_new_ver._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.2, i32 2420, ptr @.str.141, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ASoC: old version of manifest\0A\00", [33 x i8] zeroinitializer }, align 32
@manifest_new_ver._entry_ptr.188 = internal global ptr @manifest_new_ver._entry.186, section ".printk_index", align 4
@soc_tplg_vendor_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.2, i32 255, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ASoC: no vendor load callback for ID %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"soc_tplg_vendor_load\00", [43 x i8] zeroinitializer }, align 32
@soc_tplg_vendor_load._entry_ptr = internal global ptr @soc_tplg_vendor_load._entry, section ".printk_index", align 4
@soc_tplg_vendor_load._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.2, i32 264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ASoC: vendor load failed at hdr offset %ld/0x%lx for type %d:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@soc_tplg_vendor_load._entry_ptr.193 = internal global ptr @soc_tplg_vendor_load._entry.191, section ".printk_index", align 4
@soc_tplg_dapm_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 1637, ptr @.str.141, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ASoC: Parent card not yet available, widget card binding deferred\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"soc_tplg_dapm_complete\00", [41 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_complete._entry_ptr = internal global ptr @soc_tplg_dapm_complete._entry, section ".printk_index", align 4
@soc_tplg_dapm_complete._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.195, ptr @.str.2, i32 1644, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ASoC: failed to create new widgets %d\0A\00", [57 x i8] zeroinitializer }, align 32
@soc_tplg_dapm_complete._entry_ptr.198 = internal global ptr @soc_tplg_dapm_complete._entry.196, section ".printk_index", align 4
@switch.table.soc_tplg_load_header = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 2, i32 2, i32 2, i32 5, i32 3, i32 8, i32 4, i32 0, i32 1, i32 8, i32 1, i32 7], [48 x i8] zeroinitializer }, align 32
@switch.table.soc_tplg_load_header.199 = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @soc_tplg_kcontrol_elems_load, ptr @soc_tplg_kcontrol_elems_load, ptr @soc_tplg_kcontrol_elems_load, ptr @soc_tplg_dapm_graph_elems_load, ptr @soc_tplg_dapm_widget_elems_load, ptr @soc_tplg_link_elems_load, ptr @soc_tplg_pcm_elems_load, ptr @soc_tplg_manifest_load, ptr @soc_tplg_vendor_load, ptr @soc_tplg_link_elems_load, ptr @soc_tplg_vendor_load, ptr @soc_tplg_dai_elems_load], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1095987011, i64 1131369281]
@__sancov_gen_cov_switch_values.200 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.201 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 64, i64 65, i64 66, i64 67, i64 68]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 44]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 44]
@__sancov_gen_cov_switch_values.204 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 6, i64 65, i64 66, i64 67]
@__sancov_gen_cov_switch_values.205 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 64, i64 65, i64 66, i64 67]
@__sancov_gen_cov_switch_values.206 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 6, i64 65, i64 66, i64 67]
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2745, i32 5 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2616, i32 5 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2626, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2644, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2482, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2490, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2499, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2507, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2517, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2526, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2587, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1043, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1050, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1082, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 767, i32 16 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 769, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 788, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 827, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 836, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 845, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 90, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 98, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [7 x i8] c"io_ops\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 127, i32 47 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 239, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 669, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 332, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 339, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 931, i32 16 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 933, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 953, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 979, i32 5 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 990, i32 5 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 998, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1015, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1024, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 689, i32 10 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 690, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 710, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 736, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 745, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 230, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1115, i32 42 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1117, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1122, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1181, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1588, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1600, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1606, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1612, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1618, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1440, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1528, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1537, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant [9 x i8] c"dapm_map\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 162, i32 34 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1226, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1263, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1272, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1299, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1325, i32 4 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1335, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1341, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1357, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1385, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1410, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1960, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1968, i32 11 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1969, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2008, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1913, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1917, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1731, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1748, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1827, i32 23 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1828, i32 27 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1844, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1850, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2375, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2381, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2388, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2311, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2317, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2350, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2241, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2249, i32 11 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2250, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2102, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2106, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2192, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2210, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2413, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2420, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 254, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 260, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1636, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.771 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.772 = private constant [28 x i8] c"../sound/soc/soc-topology.c\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1643, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant [34 x i8] c"switch.table.soc_tplg_load_header\00", align 1
@___asan_gen_.775 = private unnamed_addr constant [38 x i8] c"switch.table.soc_tplg_load_header.199\00", align 1
@llvm.compiler.used = appending global [264 x ptr] [ptr @__ksymtab_snd_soc_tplg_component_load, ptr @__ksymtab_snd_soc_tplg_component_remove, ptr @__ksymtab_snd_soc_tplg_widget_bind_event, ptr @link_new_ver._entry, ptr @link_new_ver._entry.176, ptr @link_new_ver._entry_ptr, ptr @link_new_ver._entry_ptr.178, ptr @manifest_new_ver._entry, ptr @manifest_new_ver._entry.186, ptr @manifest_new_ver._entry_ptr, ptr @manifest_new_ver._entry_ptr.188, ptr @pcm_new_ver._entry, ptr @pcm_new_ver._entry.139, ptr @pcm_new_ver._entry_ptr, ptr @pcm_new_ver._entry_ptr.142, ptr @snd_soc_tplg_component_remove._entry, ptr @snd_soc_tplg_component_remove._entry_ptr, ptr @soc_bind_err._entry, ptr @soc_bind_err._entry_ptr, ptr @soc_control_err._entry, ptr @soc_control_err._entry_ptr, ptr @soc_tplg_add_dcontrol._entry, ptr @soc_tplg_add_dcontrol._entry.63, ptr @soc_tplg_add_dcontrol._entry_ptr, ptr @soc_tplg_add_dcontrol._entry_ptr.65, ptr @soc_tplg_check_elem_count._entry, ptr @soc_tplg_check_elem_count._entry.54, ptr @soc_tplg_check_elem_count._entry_ptr, ptr @soc_tplg_check_elem_count._entry_ptr.56, ptr @soc_tplg_dai_config._entry, ptr @soc_tplg_dai_config._entry.163, ptr @soc_tplg_dai_config._entry.166, ptr @soc_tplg_dai_config._entry_ptr, ptr @soc_tplg_dai_config._entry_ptr.165, ptr @soc_tplg_dai_config._entry_ptr.167, ptr @soc_tplg_dai_create._entry, ptr @soc_tplg_dai_create._entry.145, ptr @soc_tplg_dai_create._entry_ptr, ptr @soc_tplg_dai_create._entry_ptr.147, ptr @soc_tplg_dai_elems_load._entry, ptr @soc_tplg_dai_elems_load._entry.157, ptr @soc_tplg_dai_elems_load._entry_ptr, ptr @soc_tplg_dai_elems_load._entry_ptr.159, ptr @soc_tplg_dapm_complete._entry, ptr @soc_tplg_dapm_complete._entry.196, ptr @soc_tplg_dapm_complete._entry_ptr, ptr @soc_tplg_dapm_complete._entry_ptr.198, ptr @soc_tplg_dapm_graph_elems_load._entry, ptr @soc_tplg_dapm_graph_elems_load._entry.98, ptr @soc_tplg_dapm_graph_elems_load._entry_ptr, ptr @soc_tplg_dapm_graph_elems_load._entry_ptr.100, ptr @soc_tplg_dapm_widget_create._entry, ptr @soc_tplg_dapm_widget_create._entry_ptr, ptr @soc_tplg_dapm_widget_dbytes_create._entry, ptr @soc_tplg_dapm_widget_dbytes_create._entry_ptr, ptr @soc_tplg_dapm_widget_denum_create._entry, ptr @soc_tplg_dapm_widget_denum_create._entry.123, ptr @soc_tplg_dapm_widget_denum_create._entry.125, ptr @soc_tplg_dapm_widget_denum_create._entry.127, ptr @soc_tplg_dapm_widget_denum_create._entry_ptr, ptr @soc_tplg_dapm_widget_denum_create._entry_ptr.124, ptr @soc_tplg_dapm_widget_denum_create._entry_ptr.126, ptr @soc_tplg_dapm_widget_denum_create._entry_ptr.128, ptr @soc_tplg_dapm_widget_dmixer_create._entry, ptr @soc_tplg_dapm_widget_dmixer_create._entry.119, ptr @soc_tplg_dapm_widget_dmixer_create._entry_ptr, ptr @soc_tplg_dapm_widget_dmixer_create._entry_ptr.120, ptr @soc_tplg_dapm_widget_elems_load._entry, ptr @soc_tplg_dapm_widget_elems_load._entry.104, ptr @soc_tplg_dapm_widget_elems_load._entry.107, ptr @soc_tplg_dapm_widget_elems_load._entry.110, ptr @soc_tplg_dapm_widget_elems_load._entry_ptr, ptr @soc_tplg_dapm_widget_elems_load._entry_ptr.106, ptr @soc_tplg_dapm_widget_elems_load._entry_ptr.109, ptr @soc_tplg_dapm_widget_elems_load._entry_ptr.112, ptr @soc_tplg_dbytes_create._entry, ptr @soc_tplg_dbytes_create._entry.88, ptr @soc_tplg_dbytes_create._entry.90, ptr @soc_tplg_dbytes_create._entry_ptr, ptr @soc_tplg_dbytes_create._entry_ptr.89, ptr @soc_tplg_dbytes_create._entry_ptr.91, ptr @soc_tplg_denum_create._entry, ptr @soc_tplg_denum_create._entry.70, ptr @soc_tplg_denum_create._entry.73, ptr @soc_tplg_denum_create._entry.76, ptr @soc_tplg_denum_create._entry.79, ptr @soc_tplg_denum_create._entry.81, ptr @soc_tplg_denum_create._entry_ptr, ptr @soc_tplg_denum_create._entry_ptr.72, ptr @soc_tplg_denum_create._entry_ptr.75, ptr @soc_tplg_denum_create._entry_ptr.78, ptr @soc_tplg_denum_create._entry_ptr.80, ptr @soc_tplg_denum_create._entry_ptr.83, ptr @soc_tplg_dmixer_create._entry, ptr @soc_tplg_dmixer_create._entry.43, ptr @soc_tplg_dmixer_create._entry.46, ptr @soc_tplg_dmixer_create._entry.49, ptr @soc_tplg_dmixer_create._entry_ptr, ptr @soc_tplg_dmixer_create._entry_ptr.45, ptr @soc_tplg_dmixer_create._entry_ptr.48, ptr @soc_tplg_dmixer_create._entry_ptr.51, ptr @soc_tplg_fe_link_create._entry, ptr @soc_tplg_fe_link_create._entry.152, ptr @soc_tplg_fe_link_create._entry_ptr, ptr @soc_tplg_fe_link_create._entry_ptr.154, ptr @soc_tplg_kcontrol_elems_load._entry, ptr @soc_tplg_kcontrol_elems_load._entry.36, ptr @soc_tplg_kcontrol_elems_load._entry_ptr, ptr @soc_tplg_kcontrol_elems_load._entry_ptr.38, ptr @soc_tplg_link_config._entry, ptr @soc_tplg_link_config._entry.181, ptr @soc_tplg_link_config._entry_ptr, ptr @soc_tplg_link_config._entry_ptr.183, ptr @soc_tplg_link_elems_load._entry, ptr @soc_tplg_link_elems_load._entry.171, ptr @soc_tplg_link_elems_load._entry_ptr, ptr @soc_tplg_link_elems_load._entry_ptr.173, ptr @soc_tplg_pcm_elems_load._entry, ptr @soc_tplg_pcm_elems_load._entry.133, ptr @soc_tplg_pcm_elems_load._entry_ptr, ptr @soc_tplg_pcm_elems_load._entry_ptr.135, ptr @soc_tplg_process_headers._entry, ptr @soc_tplg_process_headers._entry.10, ptr @soc_tplg_process_headers._entry.7, ptr @soc_tplg_process_headers._entry_ptr, ptr @soc_tplg_process_headers._entry_ptr.12, ptr @soc_tplg_process_headers._entry_ptr.9, ptr @soc_tplg_vendor_load._entry, ptr @soc_tplg_vendor_load._entry.191, ptr @soc_tplg_vendor_load._entry_ptr, ptr @soc_tplg_vendor_load._entry_ptr.193, ptr @soc_valid_header._entry, ptr @soc_valid_header._entry.15, ptr @soc_valid_header._entry.18, ptr @soc_valid_header._entry.21, ptr @soc_valid_header._entry.24, ptr @soc_valid_header._entry.27, ptr @soc_valid_header._entry_ptr, ptr @soc_valid_header._entry_ptr.17, ptr @soc_valid_header._entry_ptr.20, ptr @soc_valid_header._entry_ptr.23, ptr @soc_valid_header._entry_ptr.26, ptr @soc_valid_header._entry_ptr.29, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @io_ops, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @dapm_map, ptr @.str.117, ptr @.str.118, ptr @.str.121, ptr @.str.122, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.177, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.194, ptr @.str.195, ptr @.str.197, ptr @switch.table.soc_tplg_load_header, ptr @switch.table.soc_tplg_load_header.199], section "llvm.metadata"
@0 = internal global [191 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_tplg_component_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_process_headers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_process_headers._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_process_headers._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_valid_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_valid_header._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_valid_header._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_valid_header._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_valid_header._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_valid_header._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_kcontrol_elems_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_kcontrol_elems_load._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dmixer_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dmixer_create._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dmixer_create._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dmixer_create._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_check_elem_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_check_elem_count._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_ops to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_control_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_add_dcontrol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_add_dcontrol._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_denum_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_denum_create._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_denum_create._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_denum_create._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_denum_create._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_denum_create._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dbytes_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dbytes_create._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dbytes_create._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_bind_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_graph_elems_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_graph_elems_load._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_elems_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_elems_load._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_elems_load._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_elems_load._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_map to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_dmixer_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_dmixer_create._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_denum_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_denum_create._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_denum_create._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_denum_create._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_widget_dbytes_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_pcm_elems_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_pcm_elems_load._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_new_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_new_ver._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dai_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dai_create._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_fe_link_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_fe_link_create._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dai_elems_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dai_elems_load._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dai_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dai_config._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dai_config._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_link_elems_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_link_elems_load._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_new_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_new_ver._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_link_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_link_config._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @manifest_new_ver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @manifest_new_ver._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_vendor_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_vendor_load._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tplg_dapm_complete._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.soc_tplg_load_header to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.soc_tplg_load_header.199 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_tplg_widget_bind_event(ptr nocapture noundef writeonly %w, ptr nocapture noundef readonly %events, i32 noundef %num_events, i16 noundef zeroext %event_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 17
  %0 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_events)
  %cmp12 = icmp sgt i32 %num_events, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_soc_tplg_widget_events, ptr %events, i32 %i.013
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %event_type)
  %cmp2 = icmp eq i16 %2, %event_type
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %event_handler = getelementptr %struct.snd_soc_tplg_widget_events, ptr %events, i32 %i.013, i32 1
  %3 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %event_handler, align 4
  %5 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %event, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %num_events
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_tplg_component_load(ptr noundef %comp, ptr noundef %ops, ptr noundef %fw) #2 align 64 {
entry:
  %tplg = alloca %struct.soc_tplg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tplg) #10
  %tobool.not = icmp eq ptr %comp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %comp, i32 0, i32 4
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %3, null
  %tobool6.not = icmp eq ptr %fw, null
  %or.cond = or i1 %tobool6.not, %tobool4.not
  br i1 %or.cond, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %4 = getelementptr inbounds i8, ptr %tplg, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 44)
  %6 = ptrtoint ptr %tplg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fw, ptr %tplg, align 4
  %dev10 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %7 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %dev10, align 4
  %comp11 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %8 = ptrtoint ptr %comp11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %comp, ptr %comp11, align 4
  %tobool12.not = icmp eq ptr %ops, null
  br i1 %tobool12.not, label %if.end.if.end19_crit_edge, label %if.then13

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ops14 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %9 = ptrtoint ptr %ops14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ops, ptr %ops14, align 4
  %io_ops = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %ops, i32 0, i32 15
  %10 = ptrtoint ptr %io_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_ops, align 4
  %io_ops15 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 7
  %12 = ptrtoint ptr %io_ops15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %io_ops15, align 4
  %io_ops_count = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %ops, i32 0, i32 16
  %13 = ptrtoint ptr %io_ops_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_ops_count, align 4
  %io_ops_count16 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 8
  %15 = ptrtoint ptr %io_ops_count16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %io_ops_count16, align 4
  %bytes_ext_ops = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %ops, i32 0, i32 17
  %16 = ptrtoint ptr %bytes_ext_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bytes_ext_ops, align 4
  %bytes_ext_ops17 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 9
  %18 = ptrtoint ptr %bytes_ext_ops17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %bytes_ext_ops17, align 4
  %bytes_ext_ops_count = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %ops, i32 0, i32 18
  %19 = ptrtoint ptr %bytes_ext_ops_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bytes_ext_ops_count, align 4
  %bytes_ext_ops_count18 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 10
  %21 = ptrtoint ptr %bytes_ext_ops_count18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bytes_ext_ops_count18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end.if.end19_crit_edge
  %pass.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 3
  %hdr_pos.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 2
  %22 = ptrtoint ptr %pass.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pass.i.i, align 4
  br label %while.body.i.i

while.condthread-pre-split.i.i:                   ; preds = %if.end17.i.i.while.condthread-pre-split.i.i_crit_edge, %while.body4.i.i.while.condthread-pre-split.i.i_crit_edge, %while.body.i.i.while.condthread-pre-split.i.i_crit_edge
  %23 = ptrtoint ptr %pass.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pass.i.i, align 4
  %inc.i.i = add i32 %24, 1
  store i32 %inc.i.i, ptr %pass.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, 9
  br i1 %cmp.i.i, label %while.condthread-pre-split.i.i.while.body.i.i_crit_edge, label %while.end21.i.i

while.condthread-pre-split.i.i.while.body.i.i_crit_edge: ; preds = %while.condthread-pre-split.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.condthread-pre-split.i.i.while.body.i.i_crit_edge, %if.end19
  %25 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tplg, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %29 = ptrtoint ptr %hdr_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %hdr_pos.i.i, align 4
  %30 = load ptr, ptr %data.i.i, align 4
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %26, align 4
  %add.ptr.i101.i.i = getelementptr i8, ptr %30, i32 %32
  %cmp.not.i.not102.i.i = icmp ult ptr %28, %add.ptr.i101.i.i
  br i1 %cmp.not.i.not102.i.i, label %while.body.i.i.while.body4.i.i_crit_edge, label %while.body.i.i.while.condthread-pre-split.i.i_crit_edge

while.body.i.i.while.condthread-pre-split.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.condthread-pre-split.i.i

while.body.i.i.while.body4.i.i_crit_edge:         ; preds = %while.body.i.i
  br label %while.body4.i.i

while.body4.i.i:                                  ; preds = %if.end17.i.i.while.body4.i.i_crit_edge, %while.body.i.i.while.body4.i.i_crit_edge
  %33 = phi i32 [ %85, %if.end17.i.i.while.body4.i.i_crit_edge ], [ %32, %while.body.i.i.while.body4.i.i_crit_edge ]
  %34 = phi ptr [ %83, %if.end17.i.i.while.body4.i.i_crit_edge ], [ %30, %while.body.i.i.while.body4.i.i_crit_edge ]
  %hdr.0103.i.i = phi ptr [ %add.ptr.i.i, %if.end17.i.i.while.body4.i.i_crit_edge ], [ %28, %while.body.i.i.while.body4.i.i_crit_edge ]
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %hdr.0103.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %33)
  %cmp.not.i55.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, %33
  br i1 %cmp.not.i55.i.i, label %if.end.i.i.i, label %while.body4.i.i.while.condthread-pre-split.i.i_crit_edge

while.body4.i.i.while.condthread-pre-split.i.i_crit_edge: ; preds = %while.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.condthread-pre-split.i.i

if.end.i.i.i:                                     ; preds = %while.body4.i.i
  %size1.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr.0103.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %size1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %size1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 603979776, i32 %36)
  %cmp2.not.i.i.i = icmp eq i32 %36, 603979776
  br i1 %cmp2.not.i.i.i, label %if.end7.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev10, align 4
  %type.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr.0103.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %type.i.i.i, align 1
  %41 = call i32 @llvm.bswap.i32(i32 %40) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.13, i32 noundef %41, i32 noundef %sub.ptr.sub.i.i.i.i, i32 noundef %33) #13
  br label %do.end.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  %payload_size.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr.0103.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %payload_size.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %payload_size.i.i.i, align 1
  %add.i.i.i = add i32 %43, %sub.ptr.sub.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %33)
  %cmp11.not.i.i.i = icmp ult i32 %add.i.i.i, %33
  br i1 %cmp11.not.i.i.i, label %if.end19.i.i.i, label %do.end14.i.i.i

do.end14.i.i.i:                                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev10, align 4
  %type16.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr.0103.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %type16.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %type16.i.i.i, align 1
  %48 = call i32 @llvm.bswap.i32(i32 %47) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.16, i32 noundef %48, i32 noundef %sub.ptr.sub.i.i.i.i, i32 noundef %43) #13
  br label %do.end.i.i

if.end19.i.i.i:                                   ; preds = %if.end7.i.i.i
  %49 = ptrtoint ptr %hdr.0103.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %hdr.0103.i.i, align 1
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %50, label %do.end34.i.i.i [
    i32 1095987011, label %do.end23.i.i.i
    i32 1131369281, label %if.end41.i.i.i
  ]

do.end23.i.i.i:                                   ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev10, align 4
  %54 = ptrtoint ptr %pass.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pass.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.19, i32 noundef %55, i32 noundef 1095987011, i32 noundef %sub.ptr.sub.i.i.i.i, i32 noundef %33) #13
  br label %do.end.i.i

do.end34.i.i.i:                                   ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev10, align 4
  %58 = ptrtoint ptr %pass.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pass.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.22, i32 noundef %59, i32 noundef %50, i32 noundef %sub.ptr.sub.i.i.i.i, i32 noundef %33) #13
  br label %do.end.i.i

if.end41.i.i.i:                                   ; preds = %if.end19.i.i.i
  %abi.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr.0103.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %abi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %abi.i.i.i, align 1
  %62 = call i32 @llvm.bswap.i32(i32 %61) #10
  %63 = add i32 %62, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %63)
  %64 = icmp ult i32 %63, -2
  br i1 %64, label %do.end47.i.i.i, label %if.end54.i.i.i

do.end47.i.i.i:                                   ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev10, align 4
  %67 = ptrtoint ptr %pass.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pass.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.25, i32 noundef %68, i32 noundef %61, i32 noundef 5, i32 noundef %sub.ptr.sub.i.i.i.i, i32 noundef %33) #13
  br label %do.end.i.i

if.end54.i.i.i:                                   ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp56.i.i.i = icmp eq i32 %43, 0
  br i1 %cmp56.i.i.i, label %do.end59.i.i.i, label %if.end9.i.i

do.end59.i.i.i:                                   ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.28, i32 noundef %sub.ptr.sub.i.i.i.i) #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end59.i.i.i, %do.end47.i.i.i, %do.end34.i.i.i, %do.end23.i.i.i, %do.end14.i.i.i, %do.end.i.i.i
  %71 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.5, i32 noundef -22) #13
  br label %if.then21

if.end9.i.i:                                      ; preds = %if.end54.i.i.i
  %call10.i.i = call fastcc i32 @soc_tplg_load_header(ptr noundef nonnull %tplg, ptr noundef %hdr.0103.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp11.i.i, label %do.end15.i.i, label %if.end17.i.i

do.end15.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.8, i32 noundef %call10.i.i) #13
  br label %if.then21

if.end17.i.i:                                     ; preds = %if.end9.i.i
  %75 = ptrtoint ptr %payload_size.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %payload_size.i.i.i, align 1
  %77 = call i32 @llvm.bswap.i32(i32 %76) #10
  %add.i.i = add i32 %77, 36
  %78 = ptrtoint ptr %hdr_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hdr_pos.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 %add.i.i
  store ptr %add.ptr.i.i, ptr %hdr_pos.i.i, align 4
  %80 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tplg, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i.i, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %81, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %83, i32 %85
  %cmp.not.i.not.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr.i.i.i
  br i1 %cmp.not.i.not.i.i, label %if.end17.i.i.while.body4.i.i_crit_edge, label %if.end17.i.i.while.condthread-pre-split.i.i_crit_edge

if.end17.i.i.while.condthread-pre-split.i.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.condthread-pre-split.i.i

if.end17.i.i.while.body4.i.i_crit_edge:           ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body4.i.i

while.end21.i.i:                                  ; preds = %while.condthread-pre-split.i.i
  %86 = ptrtoint ptr %comp11 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %comp11, align 4
  %card1.i.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %card1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card1.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i.i, label %while.end21.i.i.do.end.i57.i.i_crit_edge, label %lor.lhs.false.i.i.i

while.end21.i.i.do.end.i57.i.i_crit_edge:         ; preds = %while.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i57.i.i

lor.lhs.false.i.i.i:                              ; preds = %while.end21.i.i
  %instantiated.i.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %89, i32 0, i32 56
  %90 = ptrtoint ptr %instantiated.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load.i.i.i = load i8, ptr %instantiated.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool2.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.do.end.i57.i.i_crit_edge, label %if.end.i58.i.i

lor.lhs.false.i.i.i.do.end.i57.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i57.i.i

do.end.i57.i.i:                                   ; preds = %lor.lhs.false.i.i.i.do.end.i57.i.i_crit_edge, %while.end21.i.i.do.end.i57.i.i_crit_edge
  %91 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.194) #13
  br label %if.then.i

if.end.i58.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i = call i32 @snd_soc_dapm_new_widgets(ptr noundef nonnull %89) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end6.i.i.i, label %if.end.i58.i.i.if.then.i_crit_edge

if.end.i58.i.i.if.then.i_crit_edge:               ; preds = %if.end.i58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.end6.i.i.i:                                    ; preds = %if.end.i58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.197, i32 noundef %call.i.i.i) #13
  br label %if.then.i

if.then.i:                                        ; preds = %do.end6.i.i.i, %if.end.i58.i.i.if.then.i_crit_edge, %do.end.i57.i.i
  %ops.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %95 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %land.lhs.true.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.then.i
  %complete.i.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %96, i32 0, i32 13
  %97 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %complete.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %98, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %soc_tplg_load.exit

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

soc_tplg_load.exit:                               ; preds = %land.lhs.true.i.i
  %99 = ptrtoint ptr %comp11 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %comp11, align 4
  %call.i.i = call i32 %98(ptr noundef %100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool20.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool20.not, label %soc_tplg_load.exit.cleanup_crit_edge, label %soc_tplg_load.exit.if.then21_crit_edge

soc_tplg_load.exit.if.then21_crit_edge:           ; preds = %soc_tplg_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

soc_tplg_load.exit.cleanup_crit_edge:             ; preds = %soc_tplg_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %soc_tplg_load.exit.if.then21_crit_edge, %do.end15.i.i, %do.end.i.i
  %retval.0.i43 = phi i32 [ %call.i.i, %soc_tplg_load.exit.if.then21_crit_edge ], [ -22, %do.end.i.i ], [ %call10.i.i, %do.end15.i.i ]
  %call22 = call i32 @snd_soc_tplg_component_remove(ptr noundef nonnull %comp)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %soc_tplg_load.exit.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i43, %if.then21 ], [ 0, %soc_tplg_load.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.i.i.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tplg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_tplg_component_remove(ptr noundef %comp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_component, ptr %comp, i32 0, i32 4
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 14
  %dobj_list = getelementptr inbounds %struct.snd_soc_component, ptr %comp, i32 0, i32 16
  %dai_list.i = getelementptr inbounds %struct.snd_soc_component, ptr %comp, i32 0, i32 11
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %comp, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %entry
  %pass.0196 = phi i32 [ 8, %entry ], [ %dec, %for.end.while.body_crit_edge ]
  tail call void @down_write(ptr noundef %controls_rwsem) #10
  %4 = ptrtoint ptr %dobj_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dobj_list, align 4
  %cmp8.not184 = icmp eq ptr %5, %dobj_list
  br i1 %cmp8.not184, label %while.body.for.end_crit_edge, label %for.body.lr.ph

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %pass.0196)
  %cmp.not.i165 = icmp eq i32 %pass.0196, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %pass.0196)
  %cmp.not.i148 = icmp eq i32 %pass.0196, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pass.0196)
  %cmp.not.i115 = icmp eq i32 %pass.0196, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %pass.0196)
  %cmp.not.i100 = icmp eq i32 %pass.0196, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pass.0196)
  %cmp.not.i82 = icmp eq i32 %pass.0196, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in185 = phi ptr [ %5, %for.body.lr.ph ], [ %.pn195, %for.inc.for.body_crit_edge ]
  %dobj.0194 = getelementptr i8, ptr %.pn.in185, i32 -8
  %6 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn195 = load ptr, ptr %.pn.in185, align 4
  %7 = ptrtoint ptr %dobj.0194 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dobj.0194, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %8, label %do.end [
    i32 1, label %sw.bb
    i32 3, label %sw.bb9
    i32 2, label %sw.bb10
    i32 4, label %sw.bb11
    i32 5, label %sw.bb12
    i32 7, label %sw.bb13
    i32 6, label %sw.bb14
    i32 9, label %sw.bb15
  ]

sw.bb:                                            ; preds = %for.body
  %10 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card1, align 4
  %snd_card.i = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %snd_card.i, align 4
  br i1 %cmp.not.i82, label %if.end.i, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %sw.bb
  %ops.i = getelementptr i8, ptr %.pn.in185, i32 8
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %control_unload.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %control_unload.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %control_unload.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %17(ptr noundef %comp, ptr noundef %dobj.0194) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %18 = getelementptr i8, ptr %.pn.in185, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call8.i = tail call i32 @snd_ctl_remove(ptr noundef %13, ptr noundef %20) #10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in185) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.i.list_del.exit.i_crit_edge

if.end7.i.list_del.exit.i_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr i8, ptr %.pn.in185, i32 4
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in185, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end7.i.list_del.exit.i_crit_edge
  %27 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in185, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in185, i32 4
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  %29 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card1, align 4
  %snd_card.i61 = getelementptr inbounds %struct.snd_soc_card, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %snd_card.i61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %snd_card.i61, align 4
  br i1 %cmp.not.i82, label %if.end.i65, label %sw.bb9.for.inc_crit_edge

sw.bb9.for.inc_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i65:                                       ; preds = %sw.bb9
  %ops.i63 = getelementptr i8, ptr %.pn.in185, i32 8
  %33 = ptrtoint ptr %ops.i63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i63, align 4
  %tobool.not.i64 = icmp eq ptr %34, null
  br i1 %tobool.not.i64, label %if.end.i65.if.end7.i74_crit_edge, label %land.lhs.true.i68

if.end.i65.if.end7.i74_crit_edge:                 ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i74

land.lhs.true.i68:                                ; preds = %if.end.i65
  %control_unload.i66 = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %control_unload.i66 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %control_unload.i66, align 4
  %tobool3.not.i67 = icmp eq ptr %36, null
  br i1 %tobool3.not.i67, label %land.lhs.true.i68.if.end7.i74_crit_edge, label %if.then4.i70

land.lhs.true.i68.if.end7.i74_crit_edge:          ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i74

if.then4.i70:                                     ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #12
  %call.i69 = tail call i32 %36(ptr noundef %comp, ptr noundef %dobj.0194) #10
  br label %if.end7.i74

if.end7.i74:                                      ; preds = %if.then4.i70, %land.lhs.true.i68.if.end7.i74_crit_edge, %if.end.i65.if.end7.i74_crit_edge
  %37 = getelementptr i8, ptr %.pn.in185, i32 12
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call8.i71 = tail call i32 @snd_ctl_remove(ptr noundef %32, ptr noundef %39) #10
  %call.i.i.i73 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in185) #10
  br i1 %call.i.i.i73, label %if.end.i.i.i77, label %if.end7.i74.list_del.exit.i79_crit_edge

if.end7.i74.list_del.exit.i79_crit_edge:          ; preds = %if.end7.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i79

if.end.i.i.i77:                                   ; preds = %if.end7.i74
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i75 = getelementptr i8, ptr %.pn.in185, i32 4
  %40 = ptrtoint ptr %prev.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i75, align 4
  %42 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %.pn.in185, align 4
  %prev1.i.i.i.i76 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i76, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit.i79

list_del.exit.i79:                                ; preds = %if.end.i.i.i77, %if.end7.i74.list_del.exit.i79_crit_edge
  %46 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in185, align 4
  %prev.i.i78 = getelementptr i8, ptr %.pn.in185, i32 4
  %47 = ptrtoint ptr %prev.i.i78 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i78, align 4
  br label %for.inc

sw.bb10:                                          ; preds = %for.body
  %48 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card1, align 4
  %snd_card.i81 = getelementptr inbounds %struct.snd_soc_card, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %snd_card.i81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %snd_card.i81, align 4
  br i1 %cmp.not.i82, label %if.end.i85, label %sw.bb10.for.inc_crit_edge

sw.bb10.for.inc_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i85:                                       ; preds = %sw.bb10
  %ops.i83 = getelementptr i8, ptr %.pn.in185, i32 8
  %52 = ptrtoint ptr %ops.i83 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i83, align 4
  %tobool.not.i84 = icmp eq ptr %53, null
  br i1 %tobool.not.i84, label %if.end.i85.if.end7.i94_crit_edge, label %land.lhs.true.i88

if.end.i85.if.end7.i94_crit_edge:                 ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i94

land.lhs.true.i88:                                ; preds = %if.end.i85
  %control_unload.i86 = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %control_unload.i86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %control_unload.i86, align 4
  %tobool3.not.i87 = icmp eq ptr %55, null
  br i1 %tobool3.not.i87, label %land.lhs.true.i88.if.end7.i94_crit_edge, label %if.then4.i90

land.lhs.true.i88.if.end7.i94_crit_edge:          ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i94

if.then4.i90:                                     ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #12
  %call.i89 = tail call i32 %55(ptr noundef %comp, ptr noundef %dobj.0194) #10
  br label %if.end7.i94

if.end7.i94:                                      ; preds = %if.then4.i90, %land.lhs.true.i88.if.end7.i94_crit_edge, %if.end.i85.if.end7.i94_crit_edge
  %56 = getelementptr i8, ptr %.pn.in185, i32 12
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call8.i91 = tail call i32 @snd_ctl_remove(ptr noundef %51, ptr noundef %58) #10
  %call.i.i.i93 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in185) #10
  br i1 %call.i.i.i93, label %if.end.i.i.i97, label %if.end7.i94.list_del.exit.i99_crit_edge

if.end7.i94.list_del.exit.i99_crit_edge:          ; preds = %if.end7.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i99

if.end.i.i.i97:                                   ; preds = %if.end7.i94
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i95 = getelementptr i8, ptr %.pn.in185, i32 4
  %59 = ptrtoint ptr %prev.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i95, align 4
  %61 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %.pn.in185, align 4
  %prev1.i.i.i.i96 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i96, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit.i99

list_del.exit.i99:                                ; preds = %if.end.i.i.i97, %if.end7.i94.list_del.exit.i99_crit_edge
  %65 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in185, align 4
  %prev.i.i98 = getelementptr i8, ptr %.pn.in185, i32 4
  %66 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i98, align 4
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  br i1 %cmp.not.i100, label %if.end.i103, label %sw.bb11.for.inc_crit_edge

sw.bb11.for.inc_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i103:                                      ; preds = %sw.bb11
  %ops.i101 = getelementptr i8, ptr %.pn.in185, i32 8
  %67 = ptrtoint ptr %ops.i101 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i101, align 4
  %tobool.not.i102 = icmp eq ptr %68, null
  br i1 %tobool.not.i102, label %if.end.i103.if.end6.i_crit_edge, label %land.lhs.true.i104

if.end.i103.if.end6.i_crit_edge:                  ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

land.lhs.true.i104:                               ; preds = %if.end.i103
  %dapm_route_unload.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %dapm_route_unload.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dapm_route_unload.i, align 4
  %tobool2.not.i = icmp eq ptr %70, null
  br i1 %tobool2.not.i, label %land.lhs.true.i104.if.end6.i_crit_edge, label %if.then3.i

land.lhs.true.i104.if.end6.i_crit_edge:           ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then3.i:                                       ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #12
  %call.i105 = tail call i32 %70(ptr noundef %comp, ptr noundef %dobj.0194) #10
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %land.lhs.true.i104.if.end6.i_crit_edge, %if.end.i103.if.end6.i_crit_edge
  %call.i.i.i107 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in185) #10
  br i1 %call.i.i.i107, label %if.end.i.i.i110, label %if.end6.i.list_del.exit.i112_crit_edge

if.end6.i.list_del.exit.i112_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i112

if.end.i.i.i110:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i108 = getelementptr i8, ptr %.pn.in185, i32 4
  %71 = ptrtoint ptr %prev.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i108, align 4
  %73 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %.pn.in185, align 4
  %prev1.i.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i109, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del.exit.i112

list_del.exit.i112:                               ; preds = %if.end.i.i.i110, %if.end6.i.list_del.exit.i112_crit_edge
  %77 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in185, align 4
  %prev.i.i111 = getelementptr i8, ptr %.pn.in185, i32 4
  %78 = ptrtoint ptr %prev.i.i111 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i111, align 4
  br label %for.inc

sw.bb12:                                          ; preds = %for.body
  %79 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card1, align 4
  %snd_card.i114 = getelementptr inbounds %struct.snd_soc_card, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %snd_card.i114 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %snd_card.i114, align 4
  br i1 %cmp.not.i115, label %if.end.i118, label %sw.bb12.for.inc_crit_edge

sw.bb12.for.inc_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i118:                                      ; preds = %sw.bb12
  %ops.i116 = getelementptr i8, ptr %.pn.in185, i32 8
  %83 = ptrtoint ptr %ops.i116 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i116, align 4
  %tobool.not.i117 = icmp eq ptr %84, null
  br i1 %tobool.not.i117, label %if.end.i118.if.end7.i123_crit_edge, label %land.lhs.true.i120

if.end.i118.if.end7.i123_crit_edge:               ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i123

land.lhs.true.i120:                               ; preds = %if.end.i118
  %widget_unload.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %widget_unload.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %widget_unload.i, align 4
  %tobool3.not.i119 = icmp eq ptr %86, null
  br i1 %tobool3.not.i119, label %land.lhs.true.i120.if.end7.i123_crit_edge, label %if.then4.i122

land.lhs.true.i120.if.end7.i123_crit_edge:        ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i123

if.then4.i122:                                    ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #12
  %call.i121 = tail call i32 %86(ptr noundef %comp, ptr noundef %dobj.0194) #10
  br label %if.end7.i123

if.end7.i123:                                     ; preds = %if.then4.i122, %land.lhs.true.i120.if.end7.i123_crit_edge, %if.end.i118.if.end7.i123_crit_edge
  %kcontrols.i = getelementptr i8, ptr %.pn.in185, i32 -12
  %87 = ptrtoint ptr %kcontrols.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %kcontrols.i, align 4
  %tobool8.not.i = icmp eq ptr %88, null
  br i1 %tobool8.not.i, label %if.end7.i123.free_news.i_crit_edge, label %for.cond.preheader.i

if.end7.i123.free_news.i_crit_edge:               ; preds = %if.end7.i123
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_news.i

for.cond.preheader.i:                             ; preds = %if.end7.i123
  %num_kcontrols.i = getelementptr i8, ptr %.pn.in185, i32 -20
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %for.cond.preheader.i
  %i.032.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i.land.rhs.i_crit_edge ]
  %89 = phi ptr [ %88, %for.cond.preheader.i ], [ %.pr.i, %for.body.i.land.rhs.i_crit_edge ]
  %90 = ptrtoint ptr %num_kcontrols.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_kcontrols.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.032.i, i32 %91)
  %cmp13.i = icmp slt i32 %i.032.i, %91
  br i1 %cmp13.i, label %for.body.i, label %land.rhs.i.free_news.i_crit_edge

land.rhs.i.free_news.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_news.i

for.body.i:                                       ; preds = %land.rhs.i
  %arrayidx.i = getelementptr ptr, ptr %89, i32 %i.032.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i, align 4
  %call15.i = tail call i32 @snd_ctl_remove(ptr noundef %82, ptr noundef %93) #10
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %94 = ptrtoint ptr %kcontrols.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr.i = load ptr, ptr %kcontrols.i, align 4
  %tobool12.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool12.not.i, label %for.body.i.free_news.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

for.body.i.free_news.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_news.i

free_news.i:                                      ; preds = %for.body.i.free_news.i_crit_edge, %land.rhs.i.free_news.i_crit_edge, %if.end7.i123.free_news.i_crit_edge
  %call.i.i.i125 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in185) #10
  br i1 %call.i.i.i125, label %if.end.i.i.i128, label %free_news.i.list_del.exit.i130_crit_edge

free_news.i.list_del.exit.i130_crit_edge:         ; preds = %free_news.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i130

if.end.i.i.i128:                                  ; preds = %free_news.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i126 = getelementptr i8, ptr %.pn.in185, i32 4
  %95 = ptrtoint ptr %prev.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i.i126, align 4
  %97 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %.pn.in185, align 4
  %prev1.i.i.i.i127 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev1.i.i.i.i127, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %96, align 4
  br label %list_del.exit.i130

list_del.exit.i130:                               ; preds = %if.end.i.i.i128, %free_news.i.list_del.exit.i130_crit_edge
  %101 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in185, align 4
  %prev.i.i129 = getelementptr i8, ptr %.pn.in185, i32 4
  %102 = ptrtoint ptr %prev.i.i129 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i129, align 4
  br label %for.inc

sw.bb13:                                          ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %.pn.in185, i32 -20
  br i1 %cmp.not.i148, label %if.end.i134, label %sw.bb13.for.inc_crit_edge

sw.bb13.for.inc_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i134:                                      ; preds = %sw.bb13
  %ops.i132 = getelementptr i8, ptr %.pn.in185, i32 8
  %103 = ptrtoint ptr %ops.i132 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops.i132, align 4
  %tobool.not.i133 = icmp eq ptr %104, null
  br i1 %tobool.not.i133, label %if.end.i134.if.end6.i139_crit_edge, label %land.lhs.true.i136

if.end.i134.if.end6.i139_crit_edge:               ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i139

land.lhs.true.i136:                               ; preds = %if.end.i134
  %dai_unload.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %104, i32 0, i32 8
  %105 = ptrtoint ptr %dai_unload.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dai_unload.i, align 4
  %tobool2.not.i135 = icmp eq ptr %106, null
  br i1 %tobool2.not.i135, label %land.lhs.true.i136.if.end6.i139_crit_edge, label %if.then3.i138

land.lhs.true.i136.if.end6.i139_crit_edge:        ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i139

if.then3.i138:                                    ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #12
  %call.i137 = tail call i32 %106(ptr noundef %comp, ptr noundef %dobj.0194) #10
  br label %if.end6.i139

if.end6.i139:                                     ; preds = %if.then3.i138, %land.lhs.true.i136.if.end6.i139_crit_edge, %if.end.i134.if.end6.i139_crit_edge
  %107 = ptrtoint ptr %dai_list.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dai_list.i, align 4
  %cmp16.not43.i = icmp eq ptr %108, %dai_list.i
  br i1 %cmp16.not43.i, label %if.end6.i139.for.end.i_crit_edge, label %if.end6.i139.for.body.i140_crit_edge

if.end6.i139.for.body.i140_crit_edge:             ; preds = %if.end6.i139
  br label %for.body.i140

if.end6.i139.for.end.i_crit_edge:                 ; preds = %if.end6.i139
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i140:                                    ; preds = %for.inc.i.for.body.i140_crit_edge, %if.end6.i139.for.body.i140_crit_edge
  %.pn.in44.i = phi ptr [ %.pn46.i, %for.inc.i.for.body.i140_crit_edge ], [ %108, %if.end6.i139.for.body.i140_crit_edge ]
  %109 = ptrtoint ptr %.pn.in44.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pn46.i = load ptr, ptr %.pn.in44.i, align 4
  %driver.i = getelementptr i8, ptr %.pn.in44.i, i32 -52
  %110 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %driver.i, align 4
  %cmp17.i = icmp eq ptr %111, %add.ptr.i
  br i1 %cmp17.i, label %if.then18.i, label %for.body.i140.for.inc.i_crit_edge

for.body.i140.for.inc.i_crit_edge:                ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then18.i:                                      ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #12
  %dai.045.i = getelementptr i8, ptr %.pn.in44.i, i32 -64
  tail call void @snd_soc_unregister_dai(ptr noundef %dai.045.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then18.i, %for.body.i140.for.inc.i_crit_edge
  %cmp16.not.i = icmp eq ptr %.pn46.i, %dai_list.i
  br i1 %cmp16.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i140_crit_edge

for.inc.i.for.body.i140_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i140

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end6.i139.for.end.i_crit_edge
  %call.i.i.i141 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in185) #10
  br i1 %call.i.i.i141, label %if.end.i.i.i144, label %for.end.i.list_del.exit.i146_crit_edge

for.end.i.list_del.exit.i146_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i146

if.end.i.i.i144:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i142 = getelementptr i8, ptr %.pn.in185, i32 4
  %112 = ptrtoint ptr %prev.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i.i142, align 4
  %114 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %.pn.in185, align 4
  %prev1.i.i.i.i143 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev1.i.i.i.i143, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %113, align 4
  br label %list_del.exit.i146

list_del.exit.i146:                               ; preds = %if.end.i.i.i144, %for.end.i.list_del.exit.i146_crit_edge
  %118 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in185, align 4
  %prev.i.i145 = getelementptr i8, ptr %.pn.in185, i32 4
  %119 = ptrtoint ptr %prev.i.i145 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i145, align 4
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  %add.ptr.i147 = getelementptr i8, ptr %.pn.in185, i32 -88
  br i1 %cmp.not.i148, label %if.end.i151, label %sw.bb14.for.inc_crit_edge

sw.bb14.for.inc_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i151:                                      ; preds = %sw.bb14
  %ops.i149 = getelementptr i8, ptr %.pn.in185, i32 8
  %120 = ptrtoint ptr %ops.i149 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops.i149, align 4
  %tobool.not.i150 = icmp eq ptr %121, null
  br i1 %tobool.not.i150, label %if.end.i151.if.end6.i158_crit_edge, label %land.lhs.true.i153

if.end.i151.if.end6.i158_crit_edge:               ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i158

land.lhs.true.i153:                               ; preds = %if.end.i151
  %link_unload.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %121, i32 0, i32 10
  %122 = ptrtoint ptr %link_unload.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %link_unload.i, align 4
  %tobool2.not.i152 = icmp eq ptr %123, null
  br i1 %tobool2.not.i152, label %land.lhs.true.i153.if.end6.i158_crit_edge, label %if.then3.i155

land.lhs.true.i153.if.end6.i158_crit_edge:        ; preds = %land.lhs.true.i153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i158

if.then3.i155:                                    ; preds = %land.lhs.true.i153
  call void @__sanitizer_cov_trace_pc() #12
  %call.i154 = tail call i32 %123(ptr noundef %comp, ptr noundef %dobj.0194) #10
  br label %if.end6.i158

if.end6.i158:                                     ; preds = %if.then3.i155, %land.lhs.true.i153.if.end6.i158_crit_edge, %if.end.i151.if.end6.i158_crit_edge
  %call.i.i.i157 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in185) #10
  br i1 %call.i.i.i157, label %if.end.i.i.i161, label %if.end6.i158.list_del.exit.i164_crit_edge

if.end6.i158.list_del.exit.i164_crit_edge:        ; preds = %if.end6.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i164

if.end.i.i.i161:                                  ; preds = %if.end6.i158
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i159 = getelementptr i8, ptr %.pn.in185, i32 4
  %124 = ptrtoint ptr %prev.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i.i159, align 4
  %126 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %.pn.in185, align 4
  %prev1.i.i.i.i160 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev1.i.i.i.i160, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %127, ptr %125, align 4
  br label %list_del.exit.i164

list_del.exit.i164:                               ; preds = %if.end.i.i.i161, %if.end6.i158.list_del.exit.i164_crit_edge
  %130 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in185, align 4
  %prev.i.i162 = getelementptr i8, ptr %.pn.in185, i32 4
  %131 = ptrtoint ptr %prev.i.i162 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i162, align 4
  %132 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %card1, align 4
  %call8.i163 = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %133, ptr noundef %add.ptr.i147) #10
  tail call void @snd_soc_remove_pcm_runtime(ptr noundef %133, ptr noundef %call8.i163) #10
  br label %for.inc

sw.bb15:                                          ; preds = %for.body
  br i1 %cmp.not.i165, label %if.end.i168, label %sw.bb15.for.inc_crit_edge

sw.bb15.for.inc_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i168:                                      ; preds = %sw.bb15
  %ops.i166 = getelementptr i8, ptr %.pn.in185, i32 8
  %134 = ptrtoint ptr %ops.i166 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ops.i166, align 4
  %tobool.not.i167 = icmp eq ptr %135, null
  br i1 %tobool.not.i167, label %if.end.i168.if.end6.i176_crit_edge, label %land.lhs.true.i171

if.end.i168.if.end6.i176_crit_edge:               ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i176

land.lhs.true.i171:                               ; preds = %if.end.i168
  %link_unload.i169 = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %135, i32 0, i32 10
  %136 = ptrtoint ptr %link_unload.i169 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %link_unload.i169, align 4
  %tobool2.not.i170 = icmp eq ptr %137, null
  br i1 %tobool2.not.i170, label %land.lhs.true.i171.if.end6.i176_crit_edge, label %if.then3.i173

land.lhs.true.i171.if.end6.i176_crit_edge:        ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i176

if.then3.i173:                                    ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #12
  %call.i172 = tail call i32 %137(ptr noundef %comp, ptr noundef %dobj.0194) #10
  br label %if.end6.i176

if.end6.i176:                                     ; preds = %if.then3.i173, %land.lhs.true.i171.if.end6.i176_crit_edge, %if.end.i168.if.end6.i176_crit_edge
  %138 = ptrtoint ptr %dobj.0194 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %dobj.0194, align 4
  %call.i.i.i175 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in185) #10
  br i1 %call.i.i.i175, label %if.end.i.i.i179, label %if.end6.i176.list_del.exit.i181_crit_edge

if.end6.i176.list_del.exit.i181_crit_edge:        ; preds = %if.end6.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i181

if.end.i.i.i179:                                  ; preds = %if.end6.i176
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i177 = getelementptr i8, ptr %.pn.in185, i32 4
  %139 = ptrtoint ptr %prev.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i.i.i177, align 4
  %141 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %.pn.in185, align 4
  %prev1.i.i.i.i178 = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %prev1.i.i.i.i178 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %prev1.i.i.i.i178, align 4
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %142, ptr %140, align 4
  br label %list_del.exit.i181

list_del.exit.i181:                               ; preds = %if.end.i.i.i179, %if.end6.i176.list_del.exit.i181_crit_edge
  %145 = ptrtoint ptr %.pn.in185 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in185, align 4
  %prev.i.i180 = getelementptr i8, ptr %.pn.in185, i32 4
  %146 = ptrtoint ptr %prev.i.i180 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i180, align 4
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str, i32 noundef %8) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end, %list_del.exit.i181, %sw.bb15.for.inc_crit_edge, %list_del.exit.i164, %sw.bb14.for.inc_crit_edge, %list_del.exit.i146, %sw.bb13.for.inc_crit_edge, %list_del.exit.i130, %sw.bb12.for.inc_crit_edge, %list_del.exit.i112, %sw.bb11.for.inc_crit_edge, %list_del.exit.i99, %sw.bb10.for.inc_crit_edge, %list_del.exit.i79, %sw.bb9.for.inc_crit_edge, %list_del.exit.i, %sw.bb.for.inc_crit_edge
  %cmp8.not = icmp eq ptr %.pn195, %dobj_list
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge
  tail call void @up_write(ptr noundef %controls_rwsem) #10
  %dec = add nsw i32 %pass.0196, -1
  %cmp = icmp sgt i32 %pass.0196, 0
  br i1 %cmp, label %for.end.while.body_crit_edge, label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %149 = ptrtoint ptr %dobj_list to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile ptr, ptr %dobj_list, align 4
  %cmp.i = icmp ne ptr %150, %dobj_list
  %lnot.ext = zext i1 %cmp.i to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_widget(ptr noundef %comp, ptr noundef %dobj, i32 noundef %pass) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_component, ptr %comp, i32 0, i32 4
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pass)
  %cmp.not = icmp eq i32 %pass, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.snd_soc_dobj, ptr %dobj, i32 0, i32 3
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %widget_unload = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %widget_unload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %widget_unload, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %7(ptr noundef %comp, ptr noundef %dobj) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %kcontrols = getelementptr i8, ptr %dobj, i32 -4
  %8 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kcontrols, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.end7.free_news_crit_edge, label %for.cond.preheader

if.end7.free_news_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_news

for.cond.preheader:                               ; preds = %if.end7
  %num_kcontrols = getelementptr i8, ptr %dobj, i32 -12
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %for.cond.preheader
  %i.032 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.land.rhs_crit_edge ]
  %10 = phi ptr [ %9, %for.cond.preheader ], [ %.pr, %for.body.land.rhs_crit_edge ]
  %11 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_kcontrols, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.032, i32 %12)
  %cmp13 = icmp slt i32 %i.032, %12
  br i1 %cmp13, label %for.body, label %land.rhs.free_news_crit_edge

land.rhs.free_news_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_news

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.032
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call15 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef %14) #10
  %inc = add nuw nsw i32 %i.032, 1
  %15 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load ptr, ptr %kcontrols, align 4
  %tobool12.not = icmp eq ptr %.pr, null
  br i1 %tobool12.not, label %for.body.free_news_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.body.free_news_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_news

free_news:                                        ; preds = %for.body.free_news_crit_edge, %land.rhs.free_news_crit_edge, %if.end7.free_news_crit_edge
  %list = getelementptr inbounds %struct.snd_soc_dobj, ptr %dobj, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %free_news.list_del.exit_crit_edge

free_news.list_del.exit_crit_edge:                ; preds = %free_news
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %free_news
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.snd_soc_dobj, ptr %dobj, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %free_news.list_del.exit_crit_edge
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.snd_soc_dobj, ptr %dobj, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soc_tplg_load_header(ptr noundef %tplg, ptr noundef %hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr_pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 2
  %0 = ptrtoint ptr %hdr_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdr_pos, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %pos, align 4
  %index = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 7
  %3 = ptrtoint ptr %index to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %index, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %index1 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  %6 = ptrtoint ptr %index1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %index1, align 4
  %type = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %type, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %switch.tableidx = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 12
  br i1 %10, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.soc_tplg_load_header, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep29 = getelementptr inbounds [12 x ptr], ptr @switch.table.soc_tplg_load_header.199, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load30 = load ptr, ptr %switch.gep29, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %hdr_pass.0 = phi i32 [ %switch.load, %switch.lookup ], [ 1, %entry.sw.epilog_crit_edge ]
  %elem_load.0 = phi ptr [ %switch.load30, %switch.lookup ], [ @soc_tplg_vendor_load, %entry.sw.epilog_crit_edge ]
  %pass = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 3
  %13 = ptrtoint ptr %pass to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pass, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %hdr_pass.0)
  %cmp = icmp eq i32 %14, %hdr_pass.0
  br i1 %cmp, label %do.body, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_load_header.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_load_header, %if.then10)) #10
          to label %do.end [label %if.then10], !srcloc !384

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %payload_size = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 6
  %17 = ptrtoint ptr %payload_size to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %payload_size, align 1
  %19 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %type, align 1
  %version = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 2
  %21 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %version, align 1
  %vendor_type = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 5
  %23 = ptrtoint ptr %vendor_type to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %vendor_type, align 1
  %25 = ptrtoint ptr %pass to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pass, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_load_header.__UNIQUE_ID_ddebug252, ptr noundef %16, ptr noundef nonnull @.str.32, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %call13 = tail call i32 %elem_load.0(ptr noundef %tplg, ptr noundef %hdr) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_tplg_kcontrol_elems_load(ptr noundef %tplg, ptr nocapture noundef readonly %hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_kcontrol_elems_load.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_kcontrol_elems_load, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %count = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 8
  %2 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %count, align 1
  %pos.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %4 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pos.i, align 4
  %6 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tplg, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_kcontrol_elems_load.__UNIQUE_ID_ddebug242, ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %3, i32 noundef %sub.ptr.sub.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %count4 = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 8
  %10 = ptrtoint ptr %count4 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %count4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp55.not = icmp eq i32 %11, 0
  br i1 %cmp55.not, label %do.end.cleanup26_crit_edge, label %for.body.lr.ph

do.end.cleanup26_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

for.body.lr.ph:                                   ; preds = %do.end
  %pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %payload_size17 = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pos, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -872415232, i32 %15)
  %cmp5.not = icmp eq i32 %15, -872415232
  br i1 %cmp5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev10 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %16 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.35) #13
  br label %cleanup26

if.end11:                                         ; preds = %for.body
  %info = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %13, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %info, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %20, label %sw.default [
    i32 1, label %if.end11.sw.bb_crit_edge
    i32 8, label %if.end11.sw.bb_crit_edge107
    i32 2, label %if.end11.sw.bb_crit_edge108
    i32 3, label %if.end11.sw.bb_crit_edge109
    i32 7, label %if.end11.sw.bb_crit_edge110
    i32 64, label %if.end11.sw.bb_crit_edge111
    i32 68, label %if.end11.sw.bb_crit_edge112
    i32 4, label %if.end11.sw.bb13_crit_edge
    i32 6, label %if.end11.sw.bb13_crit_edge113
    i32 65, label %if.end11.sw.bb13_crit_edge114
    i32 66, label %if.end11.sw.bb13_crit_edge115
    i32 67, label %if.end11.sw.bb13_crit_edge116
    i32 5, label %sw.bb16
  ]

if.end11.sw.bb13_crit_edge116:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

if.end11.sw.bb13_crit_edge115:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

if.end11.sw.bb13_crit_edge114:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

if.end11.sw.bb13_crit_edge113:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

if.end11.sw.bb13_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

if.end11.sw.bb_crit_edge112:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end11.sw.bb_crit_edge111:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end11.sw.bb_crit_edge110:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end11.sw.bb_crit_edge109:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end11.sw.bb_crit_edge108:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end11.sw.bb_crit_edge107:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end11.sw.bb_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end11.sw.bb_crit_edge, %if.end11.sw.bb_crit_edge107, %if.end11.sw.bb_crit_edge108, %if.end11.sw.bb_crit_edge109, %if.end11.sw.bb_crit_edge110, %if.end11.sw.bb_crit_edge111, %if.end11.sw.bb_crit_edge112
  %22 = ptrtoint ptr %payload_size17 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %payload_size17, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %call12 = tail call fastcc i32 @soc_tplg_dmixer_create(ptr noundef %tplg, i32 noundef %24)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end11.sw.bb13_crit_edge, %if.end11.sw.bb13_crit_edge113, %if.end11.sw.bb13_crit_edge114, %if.end11.sw.bb13_crit_edge115, %if.end11.sw.bb13_crit_edge116
  %25 = ptrtoint ptr %payload_size17 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %payload_size17, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %call15 = tail call fastcc i32 @soc_tplg_denum_create(ptr noundef %tplg, i32 noundef %27)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %payload_size17 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %payload_size17, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %call18 = tail call fastcc i32 @soc_tplg_dbytes_create(ptr noundef %tplg, i32 noundef %30)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %13, i32 0, i32 4
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %ops.i, align 1
  %put.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %13, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %put.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %put.i, align 1
  %37 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tplg, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.92, i32 noundef %34, i32 noundef %36, i32 noundef %19, i32 noundef %i.056, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup26

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb13, %sw.bb
  %ret.0 = phi i32 [ %call18, %sw.bb16 ], [ %call15, %sw.bb13 ], [ %call12, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp19 = icmp slt i32 %ret.0, 0
  br i1 %cmp19, label %do.end23, label %for.inc

do.end23:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %41 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.37) #13
  br label %cleanup26

for.inc:                                          ; preds = %sw.epilog
  %inc = add nuw i32 %i.056, 1
  %43 = ptrtoint ptr %count4 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %count4, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %cmp = icmp ult i32 %inc, %45
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup26_crit_edge

for.inc.cleanup26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup26:                                        ; preds = %for.inc.cleanup26_crit_edge, %do.end23, %sw.default, %do.end9, %do.end.cleanup26_crit_edge
  %retval.2 = phi i32 [ %ret.0, %do.end23 ], [ -22, %sw.default ], [ -22, %do.end9 ], [ 0, %do.end.cleanup26_crit_edge ], [ 0, %for.inc.cleanup26_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_tplg_dapm_graph_elems_load(ptr nocapture noundef %tplg, ptr nocapture noundef readonly %hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp, align 4
  %dapm1 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %count2 = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 8
  %2 = ptrtoint ptr %count2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %count2, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %payload_size = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 6
  %5 = ptrtoint ptr %payload_size to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %payload_size, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %pos.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %8 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pos.i, align 4
  %mul.i = mul i32 %4, 132
  %add.ptr.i = getelementptr i8, ptr %9, i32 %mul.i
  %10 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tplg, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %add.ptr2.i = getelementptr i8, ptr %13, i32 %15
  %cmp.i = icmp ugt ptr %add.ptr.i, %add.ptr2.i
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.94) #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %7)
  %cmp4.i = icmp ugt i32 %mul.i, %7
  br i1 %cmp4.i, label %do.end8.i, label %do.body3

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev9.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %18 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.94, i32 noundef %4, i32 noundef 132, i32 noundef %7) #13
  br label %do.end

do.end:                                           ; preds = %do.end8.i, %do.end.i
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.95, i32 noundef %4) #13
  br label %cleanup

do.body3:                                         ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_dapm_graph_elems_load.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dapm_graph_elems_load, %if.then8)) #10
          to label %do.end12 [label %if.then8], !srcloc !384

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %dev9 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %22 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev9, align 4
  %index = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 7
  %24 = ptrtoint ptr %index to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %index, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_dapm_graph_elems_load.__UNIQUE_ID_ddebug243, ptr noundef %23, ptr noundef nonnull @.str.97, i32 noundef %4, i32 noundef %25) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %do.body3
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #10
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %do.end12.cleanup_crit_edge, label %if.end7.i.i, !prof !385

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end12
  %28 = extractvalue { i32, i1 } %26, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #14
  %tobool14.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool14.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp162.not = icmp eq i32 %3, 0
  br i1 %cmp162.not, label %for.cond.preheader.for.end87_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end87_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end87

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev17 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.cond23.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond23.preheader:                             ; preds = %for.cond
  br i1 %cmp162.not, label %for.cond23.preheader.for.end87_crit_edge, label %for.body25.lr.ph

for.cond23.preheader.for.end87_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end87

for.body25.lr.ph:                                 ; preds = %for.cond23.preheader
  %ops = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %index66 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  br label %for.body25

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %29 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev17, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef 52, i32 noundef 3520) #10
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.0163
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body25:                                       ; preds = %if.end82.for.body25_crit_edge, %for.body25.lr.ph
  %i.1165 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc86, %if.end82.for.body25_crit_edge ]
  %32 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pos.i, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 132
  store ptr %add.ptr, ptr %pos.i, align 4
  %source = getelementptr inbounds %struct.snd_soc_tplg_dapm_graph_elem, ptr %33, i32 0, i32 2
  %call27 = tail call i32 @strnlen(ptr noundef %source, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 44
  br i1 %cmp28, label %for.body25.for.end87_crit_edge, label %if.end30

for.body25.for.end87_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end87

if.end30:                                         ; preds = %for.body25
  %call32 = tail call i32 @strnlen(ptr noundef %33, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 44
  br i1 %cmp33, label %if.end30.for.end87_crit_edge, label %if.end35

if.end30.for.end87_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end87

if.end35:                                         ; preds = %if.end30
  %control = getelementptr inbounds %struct.snd_soc_tplg_dapm_graph_elem, ptr %33, i32 0, i32 1
  %call37 = tail call i32 @strnlen(ptr noundef %control, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call37)
  %cmp38 = icmp eq i32 %call37, 44
  br i1 %cmp38, label %if.end35.for.end87_crit_edge, label %if.end40

if.end35.for.end87_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end87

if.end40:                                         ; preds = %if.end35
  %arrayidx43 = getelementptr ptr, ptr %call8.i.i, i32 %i.1165
  %34 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx43, align 4
  %source44 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %source44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %source, ptr %source44, align 4
  %37 = load ptr, ptr %arrayidx43, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %33, ptr %37, align 4
  %39 = load ptr, ptr %arrayidx43, align 4
  %connected = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %connected to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %connected, align 4
  %41 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %41)
  %char0 = load i8, ptr %control, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp53 = icmp eq i8 %char0, 0
  %42 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx43, align 4
  %control56 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %43, i32 0, i32 1
  %.control = select i1 %cmp53, ptr null, ptr %control
  %44 = ptrtoint ptr %control56 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.control, ptr %control56, align 4
  %45 = load ptr, ptr %arrayidx43, align 4
  %dobj = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %dobj to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %dobj, align 4
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %49 = load ptr, ptr %arrayidx43, align 4
  %ops65 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %49, i32 0, i32 4, i32 3
  %50 = ptrtoint ptr %ops65 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %ops65, align 4
  %51 = ptrtoint ptr %index66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index66, align 4
  %53 = load ptr, ptr %arrayidx43, align 4
  %index69 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %53, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %index69 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %index69, align 4
  %55 = load ptr, ptr %arrayidx43, align 4
  %list = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %55, i32 0, i32 4, i32 2
  %56 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %comp, align 4
  %dobj_list = getelementptr inbounds %struct.snd_soc_component, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %dobj_list to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dobj_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %dobj_list, ptr noundef %59) #10
  br i1 %call.i.i, label %if.end.i.i151, label %if.end40.list_add.exit_crit_edge

if.end40.list_add.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i151:                                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %list, ptr %prev1.i.i, align 4
  %61 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %55, i32 0, i32 4, i32 2, i32 1
  %62 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dobj_list, ptr %prev3.i.i, align 4
  %63 = ptrtoint ptr %dobj_list to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %list, ptr %dobj_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i151, %if.end40.list_add.exit_crit_edge
  %64 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx43, align 4
  %66 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops, align 4
  %tobool.not.i = icmp eq ptr %67, null
  br i1 %tobool.not.i, label %list_add.exit.if.end82_crit_edge, label %land.lhs.true.i

list_add.exit.if.end82_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

land.lhs.true.i:                                  ; preds = %list_add.exit
  %dapm_route_load.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %dapm_route_load.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dapm_route_load.i, align 4
  %tobool2.not.i = icmp eq ptr %69, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end82_crit_edge, label %soc_tplg_add_route.exit

land.lhs.true.i.if.end82_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

soc_tplg_add_route.exit:                          ; preds = %land.lhs.true.i
  %70 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %comp, align 4
  %72 = ptrtoint ptr %index66 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %index66, align 4
  %call.i152 = tail call i32 %69(ptr noundef %71, i32 noundef %73, ptr noundef %65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp75 = icmp slt i32 %call.i152, 0
  br i1 %cmp75, label %do.end79, label %soc_tplg_add_route.exit.if.end82_crit_edge

soc_tplg_add_route.exit.if.end82_crit_edge:       ; preds = %soc_tplg_add_route.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.end79:                                         ; preds = %soc_tplg_add_route.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev80 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %74 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev80, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.99, i32 noundef %call.i152) #13
  br label %for.end87

if.end82:                                         ; preds = %soc_tplg_add_route.exit.if.end82_crit_edge, %land.lhs.true.i.if.end82_crit_edge, %list_add.exit.if.end82_crit_edge
  %retval.0.i153161 = phi i32 [ %call.i152, %soc_tplg_add_route.exit.if.end82_crit_edge ], [ 0, %land.lhs.true.i.if.end82_crit_edge ], [ 0, %list_add.exit.if.end82_crit_edge ]
  %76 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx43, align 4
  %call84 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm1, ptr noundef %77, i32 noundef 1) #10
  %inc86 = add nuw nsw i32 %i.1165, 1
  %exitcond169.not = icmp eq i32 %inc86, %4
  br i1 %exitcond169.not, label %if.end82.for.end87_crit_edge, label %if.end82.for.body25_crit_edge

if.end82.for.body25_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body25

if.end82.for.end87_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end87

for.end87:                                        ; preds = %if.end82.for.end87_crit_edge, %do.end79, %if.end35.for.end87_crit_edge, %if.end30.for.end87_crit_edge, %for.body25.for.end87_crit_edge, %for.cond23.preheader.for.end87_crit_edge, %for.cond.preheader.for.end87_crit_edge
  %ret.1 = phi i32 [ %call.i152, %do.end79 ], [ 0, %for.cond23.preheader.for.end87_crit_edge ], [ 0, %for.cond.preheader.for.end87_crit_edge ], [ %retval.0.i153161, %if.end82.for.end87_crit_edge ], [ -22, %for.body25.for.end87_crit_edge ], [ -22, %if.end30.for.end87_crit_edge ], [ -22, %if.end35.for.end87_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end87, %for.body.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %do.end12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.1, %for.end87 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %do.end12.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_tplg_dapm_widget_elems_load(ptr nocapture noundef %tplg, ptr nocapture noundef readonly %hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count1 = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 8
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %count1, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_dapm_widget_elems_load.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dapm_widget_elems_load, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !384

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_dapm_widget_elems_load.__UNIQUE_ID_ddebug249, ptr noundef %4, ptr noundef nonnull @.str.102, i32 noundef %2) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp70 = icmp sgt i32 %2, 0
  br i1 %cmp70, label %for.body.lr.ph, label %do.end.cleanup41_crit_edge

do.end.cleanup41_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

for.body.lr.ph:                                   ; preds = %do.end
  %pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end31
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.cond.cleanup41_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup41_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup41

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pos, align 4
  %7 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tplg, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %sub.ptr.sub.i, 132
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %12)
  %cmp5.not = icmp ult i32 %add, %12
  br i1 %cmp5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev10 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.103) #13
  br label %cleanup41

if.end11:                                         ; preds = %for.body
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2080374784, i32 %16)
  %cmp13.not = icmp eq i32 %16, -2080374784
  br i1 %cmp13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %dev18 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %17 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.105) #13
  br label %cleanup41

if.end19:                                         ; preds = %if.end11
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %6, i32 0, i32 13
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %priv, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add22 = add i32 %21, %sub.ptr.sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22, i32 %12)
  %cmp25.not = icmp ult i32 %add22, %12
  br i1 %cmp25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %dev30 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %22 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.108) #13
  br label %cleanup41

if.end31:                                         ; preds = %if.end19
  %call32 = tail call fastcc i32 @soc_tplg_dapm_widget_create(ptr noundef %tplg, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %for.cond

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %dev38 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %24 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev38, align 4
  %name = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %6, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.111, ptr noundef %name) #13
  br label %cleanup41

cleanup41:                                        ; preds = %do.end37, %do.end29, %do.end17, %do.end9, %for.cond.cleanup41_crit_edge, %do.end.cleanup41_crit_edge
  %retval.2 = phi i32 [ %call32, %do.end37 ], [ -22, %do.end29 ], [ -22, %do.end17 ], [ -22, %do.end9 ], [ 0, %do.end.cleanup41_crit_edge ], [ 0, %for.cond.cleanup41_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_tplg_pcm_elems_load(ptr nocapture noundef %tplg, ptr nocapture noundef readonly %hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count1 = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 8
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %count1, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pos, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %4, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = add i32 %7, -913
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21, i32 %8)
  %9 = icmp ult i32 %8, -21
  br i1 %9, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.130, i32 noundef %7) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %payload_size = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 6
  %12 = ptrtoint ptr %payload_size to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %payload_size, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %mul.i = mul i32 %7, %2
  %add.ptr.i = getelementptr i8, ptr %4, i32 %mul.i
  %15 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tplg, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 %20
  %cmp.i = icmp ugt ptr %add.ptr.i, %add.ptr2.i
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.132) #13
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %14)
  %cmp4.i = icmp ugt i32 %mul.i, %14
  br i1 %cmp4.i, label %do.end8.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp10106 = icmp sgt i32 %2, 0
  br i1 %cmp10106, label %for.body.lr.ph, label %for.cond.preheader.do.body32_crit_edge

for.cond.preheader.do.body32_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev4.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %comp.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %ops.i.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %index.i.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  br label %for.body

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev9.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %23 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.132, i32 noundef %2, i32 noundef %7, i32 noundef %14) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end8.i, %do.end.i
  %dev8 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %25 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.134, i32 noundef %2) #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pos, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %28, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1878851584, i32 %30)
  %cmp13 = icmp eq i32 %30, -1878851584
  br i1 %cmp13, label %for.body.if.end19_crit_edge, label %if.else

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2080571392, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 2080571392
  %32 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev4.i, align 4
  br i1 %cmp.not.i, label %do.end3.i, label %do.end.i75

do.end.i75:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.137) #13
  br label %cleanup

do.end3.i:                                        ; preds = %if.else
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.140) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 912) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end3.i.cleanup_crit_edge, label %if.end6.i

do.end3.i.cleanup_crit_edge:                      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end3.i
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1878851584, ptr %call7.i.i.i, align 8
  %pcm_name.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 1
  %pcm_name8.i = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 1
  %36 = call ptr @memcpy(ptr %pcm_name.i, ptr %pcm_name8.i, i32 44)
  %dai_name.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 2
  %dai_name11.i = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 2
  %37 = call ptr @memcpy(ptr %dai_name.i, ptr %dai_name11.i, i32 44)
  %pcm_id.i = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 3
  %38 = ptrtoint ptr %pcm_id.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %pcm_id.i, align 1
  %pcm_id13.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %pcm_id13.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %pcm_id13.i, align 4
  %dai_id.i = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 4
  %41 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %dai_id.i, align 1
  %dai_id14.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %dai_id14.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %dai_id14.i, align 8
  %playback.i = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 5
  %44 = ptrtoint ptr %playback.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %playback.i, align 1
  %playback15.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %playback15.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %playback15.i, align 4
  %capture.i = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 6
  %47 = ptrtoint ptr %capture.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %capture.i, align 1
  %capture16.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %capture16.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %capture16.i, align 8
  %compress.i = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 7
  %50 = ptrtoint ptr %compress.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %compress.i, align 1
  %compress17.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 7
  %52 = ptrtoint ptr %compress17.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %compress17.i, align 4
  %num_streams.i = getelementptr inbounds %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 9
  %53 = ptrtoint ptr %num_streams.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %num_streams.i, align 1
  %num_streams18.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %num_streams18.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %num_streams18.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp2066.not.i = icmp eq i32 %54, 0
  br i1 %cmp2066.not.i, label %if.end6.i.pcm_new_ver.exit_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.pcm_new_ver.exit_crit_edge:             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcm_new_ver.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %i.067.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 8, i32 %i.067.i
  %arrayidx22.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 8, i32 %i.067.i
  %56 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx22.i, i32 72)
  %inc.i = add nuw i32 %i.067.i, 1
  %57 = ptrtoint ptr %num_streams18.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_streams18.i, align 8
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  %cmp20.i = icmp ult i32 %inc.i, %59
  br i1 %cmp20.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.pcm_new_ver.exit_crit_edge

for.body.i.pcm_new_ver.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcm_new_ver.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

pcm_new_ver.exit:                                 ; preds = %for.body.i.pcm_new_ver.exit_crit_edge, %if.end6.i.pcm_new_ver.exit_crit_edge
  %arrayidx26.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0
  %60 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1744830464, ptr %arrayidx26.i, align 4
  %name.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 1
  %name1.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 1
  %61 = call ptr @memcpy(ptr %name.i.i, ptr %name1.i.i, i32 44)
  %formats.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 2
  %62 = ptrtoint ptr %formats.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %63 = load i64, ptr %formats.i.i, align 1
  %formats3.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 2
  %64 = ptrtoint ptr %formats3.i.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 %63, ptr %formats3.i.i, align 4
  %rates.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 3
  %65 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %rates.i.i, align 1
  %rates4.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 3
  %67 = ptrtoint ptr %rates4.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %rates4.i.i, align 4
  %rate_min.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 4
  %68 = ptrtoint ptr %rate_min.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %rate_min.i.i, align 1
  %rate_min5.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 4
  %70 = ptrtoint ptr %rate_min5.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %rate_min5.i.i, align 8
  %rate_max.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 5
  %71 = ptrtoint ptr %rate_max.i.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %rate_max.i.i, align 1
  %rate_max6.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 5
  %73 = ptrtoint ptr %rate_max6.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %rate_max6.i.i, align 4
  %channels_min.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 6
  %74 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %channels_min.i.i, align 1
  %channels_min7.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 6
  %76 = ptrtoint ptr %channels_min7.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %channels_min7.i.i, align 8
  %channels_max.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 7
  %77 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %channels_max.i.i, align 1
  %channels_max8.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 7
  %79 = ptrtoint ptr %channels_max8.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %channels_max8.i.i, align 4
  %periods_min.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 8
  %80 = ptrtoint ptr %periods_min.i.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %periods_min.i.i, align 1
  %periods_min9.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 8
  %82 = ptrtoint ptr %periods_min9.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %periods_min9.i.i, align 8
  %periods_max.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 9
  %83 = ptrtoint ptr %periods_max.i.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %periods_max.i.i, align 1
  %periods_max10.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 9
  %85 = ptrtoint ptr %periods_max10.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %periods_max10.i.i, align 4
  %period_size_min.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 10
  %86 = ptrtoint ptr %period_size_min.i.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %period_size_min.i.i, align 1
  %period_size_min11.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 10
  %88 = ptrtoint ptr %period_size_min11.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %period_size_min11.i.i, align 8
  %period_size_max.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 11
  %89 = ptrtoint ptr %period_size_max.i.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %period_size_max.i.i, align 1
  %period_size_max12.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 11
  %91 = ptrtoint ptr %period_size_max12.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %period_size_max12.i.i, align 4
  %buffer_size_min.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 12
  %92 = ptrtoint ptr %buffer_size_min.i.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %buffer_size_min.i.i, align 1
  %buffer_size_min13.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 12
  %94 = ptrtoint ptr %buffer_size_min13.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %buffer_size_min13.i.i, align 8
  %buffer_size_max.i.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 0, i32 13
  %95 = ptrtoint ptr %buffer_size_max.i.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %buffer_size_max.i.i, align 1
  %buffer_size_max14.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 13
  %97 = ptrtoint ptr %buffer_size_max14.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %buffer_size_max14.i.i, align 4
  %arrayidx26.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %98 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1744830464, ptr %arrayidx26.1.i, align 4
  %name.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 1
  %name1.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 1
  %99 = call ptr @memcpy(ptr %name.i.1.i, ptr %name1.i.1.i, i32 44)
  %formats.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 2
  %100 = ptrtoint ptr %formats.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 8)
  %101 = load i64, ptr %formats.i.1.i, align 1
  %formats3.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 2
  %102 = ptrtoint ptr %formats3.i.1.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 %101, ptr %formats3.i.1.i, align 4
  %rates.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 3
  %103 = ptrtoint ptr %rates.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %rates.i.1.i, align 1
  %rates4.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 3
  %105 = ptrtoint ptr %rates4.i.1.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %rates4.i.1.i, align 4
  %rate_min.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 4
  %106 = ptrtoint ptr %rate_min.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %rate_min.i.1.i, align 1
  %rate_min5.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 4
  %108 = ptrtoint ptr %rate_min5.i.1.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %rate_min5.i.1.i, align 8
  %rate_max.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 5
  %109 = ptrtoint ptr %rate_max.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %rate_max.i.1.i, align 1
  %rate_max6.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 5
  %111 = ptrtoint ptr %rate_max6.i.1.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %rate_max6.i.1.i, align 4
  %channels_min.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 6
  %112 = ptrtoint ptr %channels_min.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %channels_min.i.1.i, align 1
  %channels_min7.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 6
  %114 = ptrtoint ptr %channels_min7.i.1.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %channels_min7.i.1.i, align 8
  %channels_max.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 7
  %115 = ptrtoint ptr %channels_max.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %channels_max.i.1.i, align 1
  %channels_max8.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 7
  %117 = ptrtoint ptr %channels_max8.i.1.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %channels_max8.i.1.i, align 4
  %periods_min.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 8
  %118 = ptrtoint ptr %periods_min.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %periods_min.i.1.i, align 1
  %periods_min9.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 8
  %120 = ptrtoint ptr %periods_min9.i.1.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %periods_min9.i.1.i, align 8
  %periods_max.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 9
  %121 = ptrtoint ptr %periods_max.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %periods_max.i.1.i, align 1
  %periods_max10.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 9
  %123 = ptrtoint ptr %periods_max10.i.1.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %periods_max10.i.1.i, align 4
  %period_size_min.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 10
  %124 = ptrtoint ptr %period_size_min.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %period_size_min.i.1.i, align 1
  %period_size_min11.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 10
  %126 = ptrtoint ptr %period_size_min11.i.1.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %period_size_min11.i.1.i, align 8
  %period_size_max.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 11
  %127 = ptrtoint ptr %period_size_max.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %period_size_max.i.1.i, align 1
  %period_size_max12.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 11
  %129 = ptrtoint ptr %period_size_max12.i.1.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %period_size_max12.i.1.i, align 4
  %buffer_size_min.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 12
  %130 = ptrtoint ptr %buffer_size_min.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %buffer_size_min.i.1.i, align 1
  %buffer_size_min13.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 12
  %132 = ptrtoint ptr %buffer_size_min13.i.1.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %buffer_size_min13.i.1.i, align 8
  %buffer_size_max.i.1.i = getelementptr %struct.snd_soc_tplg_pcm_v4, ptr %28, i32 0, i32 10, i32 1, i32 13
  %133 = ptrtoint ptr %buffer_size_max.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %buffer_size_max.i.1.i, align 1
  %buffer_size_max14.i.1.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 13
  %135 = ptrtoint ptr %buffer_size_max14.i.1.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %buffer_size_max14.i.1.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %pcm_new_ver.exit, %for.body.if.end19_crit_edge
  %_pcm.1 = phi ptr [ %call7.i.i.i, %pcm_new_ver.exit ], [ %28, %for.body.if.end19_crit_edge ]
  %136 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %comp.i.i, align 4
  %dapm.i.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %137, i32 0, i32 17
  %138 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev4.i, align 4
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %139, i32 noundef 168, i32 noundef 3520) #10
  %cmp.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i, label %if.end19.if.then22_crit_edge, label %if.end.i.i

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end.i.i:                                       ; preds = %if.end19
  %dai_name.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 2
  %140 = ptrtoint ptr %dai_name.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %char0.i.i = load i8, ptr %dai_name.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i.i)
  %tobool.not.i.i = icmp eq i8 %char0.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %141 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev4.i, align 4
  %call7.i.i = tail call noalias ptr @devm_kstrdup(ptr noundef %142, ptr noundef %dai_name.i.i, i32 noundef 3264) #10
  %143 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call7.i.i, ptr %call.i.i.i, align 8
  %tobool9.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not.i.i, label %if.then3.i.i.if.then22_crit_edge, label %if.then3.i.i.if.end12.i.i_crit_edge

if.then3.i.i.if.end12.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

if.then3.i.i.if.then22_crit_edge:                 ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end12.i.i:                                     ; preds = %if.then3.i.i.if.end12.i.i_crit_edge, %if.end.i.i.if.end12.i.i_crit_edge
  %dai_id.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 4
  %144 = ptrtoint ptr %dai_id.i.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %dai_id.i.i, align 1
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #10
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 1
  %147 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %id.i.i, align 4
  %playback.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 5
  %148 = ptrtoint ptr %playback.i.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %playback.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool13.not.i.i = icmp eq i32 %149, 0
  br i1 %tobool13.not.i.i, label %if.end12.i.i.if.end21.i.i_crit_edge, label %if.then14.i.i

if.end12.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i.i

if.then14.i.i:                                    ; preds = %if.end12.i.i
  %playback15.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 11
  %150 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev4.i, align 4
  %name.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 0, i32 1
  %call.i105.i.i = tail call noalias ptr @devm_kstrdup(ptr noundef %151, ptr noundef %name.i.i.i, i32 noundef 3264) #10
  %152 = ptrtoint ptr %playback15.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call.i105.i.i, ptr %playback15.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %call.i105.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then14.i.i.if.then22_crit_edge, label %set_stream_info.exit.i.i

if.then14.i.i.if.then22_crit_edge:                ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

set_stream_info.exit.i.i:                         ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %channels_min.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 0, i32 6
  %153 = ptrtoint ptr %channels_min.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %channels_min.i.i.i, align 1
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #10
  %channels_min2.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 11, i32 5
  %156 = ptrtoint ptr %channels_min2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %channels_min2.i.i.i, align 4
  %channels_max.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 0, i32 7
  %157 = ptrtoint ptr %channels_max.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %channels_max.i.i.i, align 1
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #10
  %channels_max3.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 11, i32 6
  %160 = ptrtoint ptr %channels_max3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %channels_max3.i.i.i, align 8
  %rates.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 0, i32 3
  %161 = ptrtoint ptr %rates.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %rates.i.i.i, align 1
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #10
  %rates4.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 11, i32 2
  %164 = ptrtoint ptr %rates4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %rates4.i.i.i, align 8
  %rate_min.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 0, i32 4
  %165 = ptrtoint ptr %rate_min.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %rate_min.i.i.i, align 1
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #10
  %rate_min5.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 11, i32 3
  %168 = ptrtoint ptr %rate_min5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %rate_min5.i.i.i, align 4
  %rate_max.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 0, i32 5
  %169 = ptrtoint ptr %rate_max.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %rate_max.i.i.i, align 1
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #10
  %rate_max6.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 11, i32 4
  %172 = ptrtoint ptr %rate_max6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %rate_max6.i.i.i, align 8
  %formats.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 0, i32 2
  %173 = ptrtoint ptr %formats.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 8)
  %174 = load i64, ptr %formats.i.i.i, align 1
  %175 = tail call i64 @llvm.bswap.i64(i64 %174) #10
  %formats7.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 11, i32 1
  %176 = ptrtoint ptr %formats7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %175, ptr %formats7.i.i.i, align 8
  %sig_bits.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 0, i32 14
  %177 = ptrtoint ptr %sig_bits.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %sig_bits.i.i.i, align 1
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #10
  %sig_bits8.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 11, i32 7
  %180 = ptrtoint ptr %sig_bits8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %sig_bits8.i.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %set_stream_info.exit.i.i, %if.end12.i.i.if.end21.i.i_crit_edge
  %capture.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 6
  %181 = ptrtoint ptr %capture.i.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %capture.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool22.not.i.i = icmp eq i32 %182, 0
  br i1 %tobool22.not.i.i, label %if.end21.i.i.if.end31.i.i_crit_edge, label %if.then23.i.i

if.end21.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i.i

if.then23.i.i:                                    ; preds = %if.end21.i.i
  %capture24.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 10
  %183 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev4.i, align 4
  %name.i107.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 1, i32 1
  %call.i108.i.i = tail call noalias ptr @devm_kstrdup(ptr noundef %184, ptr noundef %name.i107.i.i, i32 noundef 3264) #10
  %185 = ptrtoint ptr %capture24.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call.i108.i.i, ptr %capture24.i.i, align 8
  %tobool.not.i109.i.i = icmp eq ptr %call.i108.i.i, null
  br i1 %tobool.not.i109.i.i, label %if.then23.i.i.if.then22_crit_edge, label %set_stream_info.exit126.i.i

if.then23.i.i.if.then22_crit_edge:                ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

set_stream_info.exit126.i.i:                      ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %channels_min.i110.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 1, i32 6
  %186 = ptrtoint ptr %channels_min.i110.i.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %channels_min.i110.i.i, align 1
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #10
  %channels_min2.i111.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 10, i32 5
  %189 = ptrtoint ptr %channels_min2.i111.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %channels_min2.i111.i.i, align 4
  %channels_max.i112.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 1, i32 7
  %190 = ptrtoint ptr %channels_max.i112.i.i to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %191 = load i32, ptr %channels_max.i112.i.i, align 1
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #10
  %channels_max3.i113.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 10, i32 6
  %193 = ptrtoint ptr %channels_max3.i113.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %channels_max3.i113.i.i, align 8
  %rates.i114.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 1, i32 3
  %194 = ptrtoint ptr %rates.i114.i.i to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %rates.i114.i.i, align 1
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #10
  %rates4.i115.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 10, i32 2
  %197 = ptrtoint ptr %rates4.i115.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %rates4.i115.i.i, align 8
  %rate_min.i116.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 1, i32 4
  %198 = ptrtoint ptr %rate_min.i116.i.i to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %199 = load i32, ptr %rate_min.i116.i.i, align 1
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #10
  %rate_min5.i117.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 10, i32 3
  %201 = ptrtoint ptr %rate_min5.i117.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %rate_min5.i117.i.i, align 4
  %rate_max.i118.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 1, i32 5
  %202 = ptrtoint ptr %rate_max.i118.i.i to i32
  call void @__asan_loadN_noabort(i32 %202, i32 4)
  %203 = load i32, ptr %rate_max.i118.i.i, align 1
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #10
  %rate_max6.i119.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 10, i32 4
  %205 = ptrtoint ptr %rate_max6.i119.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %rate_max6.i119.i.i, align 8
  %formats.i120.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 1, i32 2
  %206 = ptrtoint ptr %formats.i120.i.i to i32
  call void @__asan_loadN_noabort(i32 %206, i32 8)
  %207 = load i64, ptr %formats.i120.i.i, align 1
  %208 = tail call i64 @llvm.bswap.i64(i64 %207) #10
  %formats7.i121.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 10, i32 1
  %209 = ptrtoint ptr %formats7.i121.i.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %208, ptr %formats7.i121.i.i, align 8
  %sig_bits.i122.i.i = getelementptr %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 10, i32 1, i32 14
  %210 = ptrtoint ptr %sig_bits.i122.i.i to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %211 = load i32, ptr %sig_bits.i122.i.i, align 1
  %212 = tail call i32 @llvm.bswap.i32(i32 %211) #10
  %sig_bits8.i123.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 10, i32 7
  %213 = ptrtoint ptr %sig_bits8.i123.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %sig_bits8.i123.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %set_stream_info.exit126.i.i, %if.end21.i.i.if.end31.i.i_crit_edge
  %compress.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 7
  %214 = ptrtoint ptr %compress.i.i to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %compress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool32.not.i.i = icmp eq i32 %215, 0
  br i1 %tobool32.not.i.i, label %if.end31.i.i.if.end34.i.i_crit_edge, label %if.then33.i.i

if.end31.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i.i

if.then33.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %compress_new.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 6
  %216 = ptrtoint ptr %compress_new.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr @snd_soc_new_compress, ptr %compress_new.i.i, align 8
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then33.i.i, %if.end31.i.i.if.end34.i.i_crit_edge
  %217 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ops.i.i.i, align 4
  %tobool.not.i127.i.i = icmp eq ptr %218, null
  br i1 %tobool.not.i127.i.i, label %if.end34.i.i.if.end39.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end34.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end34.i.i
  %dai_load.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %218, i32 0, i32 7
  %219 = ptrtoint ptr %dai_load.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dai_load.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %220, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.if.end39.i.i_crit_edge, label %soc_tplg_dai_load.exit.i.i

land.lhs.true.i.i.i.if.end39.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i.i

soc_tplg_dai_load.exit.i.i:                       ; preds = %land.lhs.true.i.i.i
  %221 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %comp.i.i, align 4
  %223 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %index.i.i.i, align 4
  %call.i128.i.i = tail call i32 %220(ptr noundef %222, i32 noundef %224, ptr noundef nonnull %call.i.i.i, ptr noundef %_pcm.1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i.i)
  %cmp36.i.i = icmp slt i32 %call.i128.i.i, 0
  br i1 %cmp36.i.i, label %soc_tplg_dai_load.exit.i.i.if.then22.sink.split_crit_edge, label %soc_tplg_dai_load.exit.i.i.if.end39.i.i_crit_edge

soc_tplg_dai_load.exit.i.i.if.end39.i.i_crit_edge: ; preds = %soc_tplg_dai_load.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i.i

soc_tplg_dai_load.exit.i.i.if.then22.sink.split_crit_edge: ; preds = %soc_tplg_dai_load.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.sink.split

if.end39.i.i:                                     ; preds = %soc_tplg_dai_load.exit.i.i.if.end39.i.i_crit_edge, %land.lhs.true.i.i.i.if.end39.i.i_crit_edge, %if.end34.i.i.if.end39.i.i_crit_edge
  %225 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %index.i.i.i, align 4
  %dobj.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 3
  %index40.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %227 = ptrtoint ptr %index40.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %index40.i.i, align 4
  %228 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ops.i.i.i, align 4
  %ops42.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 3, i32 3
  %230 = ptrtoint ptr %ops42.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %229, ptr %ops42.i.i, align 4
  %231 = ptrtoint ptr %dobj.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 7, ptr %dobj.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 3, i32 2
  %232 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %comp.i.i, align 4
  %dobj_list.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %233, i32 0, i32 16
  %234 = ptrtoint ptr %dobj_list.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dobj_list.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %dobj_list.i.i, ptr noundef %235) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end39.i.i.list_add.exit.i.i_crit_edge

if.end39.i.i.list_add.exit.i.i_crit_edge:         ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %list.i.i, ptr %prev1.i.i.i.i, align 4
  %237 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %235, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i.i, i32 0, i32 3, i32 2, i32 1
  %238 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %dobj_list.i.i, ptr %prev3.i.i.i.i, align 4
  %239 = ptrtoint ptr %dobj_list.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store volatile ptr %list.i.i, ptr %dobj_list.i.i, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end39.i.i.list_add.exit.i.i_crit_edge
  %240 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %comp.i.i, align 4
  %call47.i.i = tail call ptr @snd_soc_register_dai(ptr noundef %241, ptr noundef nonnull %call.i.i.i, i1 noundef zeroext false) #10
  %tobool48.not.i.i = icmp eq ptr %call47.i.i, null
  br i1 %tobool48.not.i.i, label %list_add.exit.i.i.if.then22_crit_edge, label %if.end50.i.i

list_add.exit.i.i.if.then22_crit_edge:            ; preds = %list_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end50.i.i:                                     ; preds = %list_add.exit.i.i
  %call51.i.i = tail call i32 @snd_soc_dapm_new_dai_widgets(ptr noundef %dapm.i.i.i, ptr noundef nonnull %call47.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %cmp52.not.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %cmp52.not.i.i, label %if.end50.i.i.if.end.i78_crit_edge, label %soc_tplg_dai_create.exit.i

if.end50.i.i.if.end.i78_crit_edge:                ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i78

soc_tplg_dai_create.exit.i:                       ; preds = %if.end50.i.i
  %dev57.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %call47.i.i, i32 0, i32 2
  %242 = ptrtoint ptr %dev57.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev57.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull @.str.146, i32 noundef %call51.i.i) #13
  tail call void @snd_soc_unregister_dai(ptr noundef nonnull %call47.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %cmp.i77 = icmp slt i32 %call51.i.i, 0
  br i1 %cmp.i77, label %soc_tplg_dai_create.exit.i.if.then22_crit_edge, label %soc_tplg_dai_create.exit.i.if.end.i78_crit_edge

soc_tplg_dai_create.exit.i.if.end.i78_crit_edge:  ; preds = %soc_tplg_dai_create.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i78

soc_tplg_dai_create.exit.i.if.then22_crit_edge:   ; preds = %soc_tplg_dai_create.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end.i78:                                       ; preds = %soc_tplg_dai_create.exit.i.if.end.i78_crit_edge, %if.end50.i.i.if.end.i78_crit_edge
  %244 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev4.i, align 4
  %call.i.i6.i = tail call noalias ptr @devm_kmalloc(ptr noundef %245, i32 noundef 152, i32 noundef 3520) #10
  %cmp.i7.i = icmp eq ptr %call.i.i6.i, null
  br i1 %cmp.i7.i, label %if.end.i78.if.then22_crit_edge, label %if.end.i12.i

if.end.i78.if.then22_crit_edge:                   ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end.i12.i:                                     ; preds = %if.end.i78
  %add.ptr.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 1
  %cpus.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 2
  %246 = ptrtoint ptr %cpus.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %add.ptr.i.i, ptr %cpus.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 1, i32 3
  %codecs.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 4
  %247 = ptrtoint ptr %codecs.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %arrayidx1.i.i, ptr %codecs.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 1, i32 6
  %platforms.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 6
  %248 = ptrtoint ptr %platforms.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %arrayidx2.i.i, ptr %platforms.i.i, align 4
  %num_cpus.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 3
  %249 = ptrtoint ptr %num_cpus.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 1, ptr %num_cpus.i.i, align 4
  %num_codecs.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 5
  %250 = ptrtoint ptr %num_codecs.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 1, ptr %num_codecs.i.i, align 4
  %num_platforms.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 7
  %251 = ptrtoint ptr %num_platforms.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 1, ptr %num_platforms.i.i, align 4
  %252 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %index.i.i.i, align 4
  %dobj.i9.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 19
  %index3.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 19, i32 1
  %254 = ptrtoint ptr %index3.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %index3.i.i, align 4
  %255 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %ops.i.i.i, align 4
  %ops5.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 19, i32 3
  %257 = ptrtoint ptr %ops5.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %256, ptr %ops5.i.i, align 4
  %258 = ptrtoint ptr %dobj.i9.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 6, ptr %dobj.i9.i, align 4
  %pcm_name.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 1
  %259 = ptrtoint ptr %pcm_name.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %char0.i10.i = load i8, ptr %pcm_name.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i10.i)
  %tobool.not.i11.i = icmp eq i8 %char0.i10.i, 0
  br i1 %tobool.not.i11.i, label %if.end.i12.i.if.end23.i.i_crit_edge, label %if.then8.i.i

if.end.i12.i.if.end23.i.i_crit_edge:              ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i

if.then8.i.i:                                     ; preds = %if.end.i12.i
  %260 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev4.i, align 4
  %call12.i.i = tail call noalias ptr @devm_kstrdup(ptr noundef %261, ptr noundef %pcm_name.i.i, i32 noundef 3264) #10
  %262 = ptrtoint ptr %call.i.i6.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %call12.i.i, ptr %call.i.i6.i, align 4
  %263 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dev4.i, align 4
  %call16.i.i = tail call noalias ptr @devm_kstrdup(ptr noundef %264, ptr noundef %pcm_name.i.i, i32 noundef 3264) #10
  %stream_name.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 1
  %265 = ptrtoint ptr %stream_name.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %call16.i.i, ptr %stream_name.i.i, align 4
  %266 = ptrtoint ptr %call.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %call.i.i6.i, align 4
  %tobool18.not.i.i = icmp eq ptr %267, null
  %tobool20.not.i.i = icmp eq ptr %call16.i.i, null
  %or.cond.i.i = select i1 %tobool18.not.i.i, i1 true, i1 %tobool20.not.i.i
  br i1 %or.cond.i.i, label %if.then8.i.i.if.then22_crit_edge, label %if.then8.i.i.if.end23.i.i_crit_edge

if.then8.i.i.if.end23.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i

if.then8.i.i.if.then22_crit_edge:                 ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end23.i.i:                                     ; preds = %if.then8.i.i.if.end23.i.i_crit_edge, %if.end.i12.i.if.end23.i.i_crit_edge
  %pcm_id.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 3
  %268 = ptrtoint ptr %pcm_id.i.i to i32
  call void @__asan_loadN_noabort(i32 %268, i32 4)
  %269 = load i32, ptr %pcm_id.i.i, align 1
  %270 = tail call i32 @llvm.bswap.i32(i32 %269) #10
  %id.i13.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 8
  %271 = ptrtoint ptr %id.i13.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %id.i13.i, align 4
  %272 = ptrtoint ptr %dai_name.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %char0126.i.i = load i8, ptr %dai_name.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0126.i.i)
  %tobool26.not.i.i = icmp eq i8 %char0126.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end23.i.i.if.end39.i17.i_crit_edge, label %if.then27.i.i

if.end23.i.i.if.end39.i17.i_crit_edge:            ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i17.i

if.then27.i.i:                                    ; preds = %if.end23.i.i
  %273 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev4.i, align 4
  %call31.i.i = tail call noalias ptr @devm_kstrdup(ptr noundef %274, ptr noundef %dai_name.i.i, i32 noundef 3264) #10
  %275 = ptrtoint ptr %cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cpus.i.i, align 4
  %dai_name33.i.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %276, i32 0, i32 2
  %277 = ptrtoint ptr %dai_name33.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %call31.i.i, ptr %dai_name33.i.i, align 4
  %278 = load ptr, ptr %cpus.i.i, align 4
  %dai_name35.i.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %278, i32 0, i32 2
  %279 = ptrtoint ptr %dai_name35.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dai_name35.i.i, align 4
  %tobool36.not.i.i = icmp eq ptr %280, null
  br i1 %tobool36.not.i.i, label %if.then27.i.i.if.then22_crit_edge, label %if.then27.i.i.if.end39.i17.i_crit_edge

if.then27.i.i.if.end39.i17.i_crit_edge:           ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i17.i

if.then27.i.i.if.then22_crit_edge:                ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end39.i17.i:                                   ; preds = %if.then27.i.i.if.end39.i17.i_crit_edge, %if.end23.i.i.if.end39.i17.i_crit_edge
  %281 = ptrtoint ptr %codecs.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %codecs.i.i, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr @.str.148, ptr %282, align 4
  %284 = load ptr, ptr %codecs.i.i, align 4
  %dai_name43.i.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %284, i32 0, i32 2
  %285 = ptrtoint ptr %dai_name43.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr @.str.149, ptr %dai_name43.i.i, align 4
  %286 = ptrtoint ptr %platforms.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %platforms.i.i, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr @.str.148, ptr %287, align 4
  %dynamic.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 18
  %289 = ptrtoint ptr %dynamic.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %bf.load.i.i = load i32, ptr %dynamic.i.i, align 4
  %290 = ptrtoint ptr %playback.i.i to i32
  call void @__asan_loadN_noabort(i32 %290, i32 4)
  %291 = load i32, ptr %playback.i.i, align 1
  %292 = lshr i32 %291, 3
  %bf.shl.i.i = and i32 %292, 2097152
  %bf.set.i.i = and i32 %bf.load.i.i, -14680065
  %293 = ptrtoint ptr %capture.i.i to i32
  call void @__asan_loadN_noabort(i32 %293, i32 4)
  %294 = load i32, ptr %capture.i.i, align 1
  %295 = lshr i32 %294, 2
  %bf.shl51.i.i = and i32 %295, 4194304
  %bf.clear47.i.i = or i32 %bf.set.i.i, %bf.shl.i.i
  %bf.set48.i.i = or i32 %bf.clear47.i.i, %bf.shl51.i.i
  %bf.set53.i.i = or i32 %bf.set48.i.i, 8388608
  store i32 %bf.set53.i.i, ptr %dynamic.i.i, align 4
  %flag_mask.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 11
  %296 = ptrtoint ptr %flag_mask.i.i to i32
  call void @__asan_loadN_noabort(i32 %296, i32 4)
  %297 = load i32, ptr %flag_mask.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool54.not.i.i = icmp eq i32 %297, 0
  br i1 %tobool54.not.i.i, label %if.end39.i17.i.if.end57.i.i_crit_edge, label %if.then55.i.i

if.end39.i17.i.if.end57.i.i_crit_edge:            ; preds = %if.end39.i17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i.i

if.then55.i.i:                                    ; preds = %if.end39.i17.i
  %298 = tail call i32 @llvm.bswap.i32(i32 %297) #10
  %flags.i.i = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 12
  %299 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %299, i32 4)
  %300 = load i32, ptr %flags.i.i, align 1
  %301 = tail call i32 @llvm.bswap.i32(i32 %300) #10
  %and.i.i.i = and i32 %298, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i18.i, label %if.then55.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then55.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i.i = shl i32 %301, 27
  %bf.shl.i.i.i = and i32 %and1.i.i.i, 134217728
  %bf.clear.i.i.i = and i32 %bf.set53.i.i, -134217729
  %bf.set.i.i.i = or i32 %bf.shl.i.i.i, %bf.clear.i.i.i
  %302 = ptrtoint ptr %dynamic.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %bf.set.i.i.i, ptr %dynamic.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then55.i.i.if.end.i.i.i_crit_edge
  %and3.i.i.i = and i32 %298, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end14.i.i.i_crit_edge, label %if.then5.i.i.i

if.end.i.i.i.if.end14.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %303 = ptrtoint ptr %dynamic.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %bf.load9.i.i.i = load i32, ptr %dynamic.i.i, align 4
  %304 = shl i32 %301, 25
  %bf.shl11.i.i.i = and i32 %304, 67108864
  %bf.clear12.i.i.i = and i32 %bf.load9.i.i.i, -67108865
  %bf.set13.i.i.i = or i32 %bf.clear12.i.i.i, %bf.shl11.i.i.i
  store i32 %bf.set13.i.i.i, ptr %dynamic.i.i, align 4
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then5.i.i.i, %if.end.i.i.i.if.end14.i.i.i_crit_edge
  %and15.i.i.i = and i32 %298, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %and15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end14.i.i.i.if.end26.i.i.i_crit_edge, label %if.then17.i.i.i

if.end14.i.i.i.if.end26.i.i.i_crit_edge:          ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i.i

if.then17.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %305 = ptrtoint ptr %dynamic.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %bf.load21.i.i.i = load i32, ptr %dynamic.i.i, align 4
  %306 = shl i32 %301, 23
  %bf.shl23.i.i.i = and i32 %306, 33554432
  %bf.clear24.i.i.i = and i32 %bf.load21.i.i.i, -33554433
  %bf.set25.i.i.i = or i32 %bf.clear24.i.i.i, %bf.shl23.i.i.i
  store i32 %bf.set25.i.i.i, ptr %dynamic.i.i, align 4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.then17.i.i.i, %if.end14.i.i.i.if.end26.i.i.i_crit_edge
  %and27.i.i.i = and i32 %298, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %and27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end26.i.i.i.if.end57.i.i_crit_edge, label %if.then29.i.i.i

if.end26.i.i.i.if.end57.i.i_crit_edge:            ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i.i

if.then29.i.i.i:                                  ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %307 = ptrtoint ptr %dynamic.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %bf.load33.i.i.i = load i32, ptr %dynamic.i.i, align 4
  %308 = shl i32 %301, 25
  %bf.shl35.i.i.i = and i32 %308, 268435456
  %bf.clear36.i.i.i = and i32 %bf.load33.i.i.i, -268435457
  %bf.set37.i.i.i = or i32 %bf.clear36.i.i.i, %bf.shl35.i.i.i
  store i32 %bf.set37.i.i.i, ptr %dynamic.i.i, align 4
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then29.i.i.i, %if.end26.i.i.i.if.end57.i.i_crit_edge, %if.end39.i17.i.if.end57.i.i_crit_edge
  %309 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %ops.i.i.i, align 4
  %tobool.not.i127.i19.i = icmp eq ptr %310, null
  br i1 %tobool.not.i127.i19.i, label %if.end57.i.i.if.end62.i.i_crit_edge, label %land.lhs.true.i.i21.i

if.end57.i.i.if.end62.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

land.lhs.true.i.i21.i:                            ; preds = %if.end57.i.i
  %link_load.i.i.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %310, i32 0, i32 9
  %311 = ptrtoint ptr %link_load.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %link_load.i.i.i, align 4
  %tobool2.not.i.i20.i = icmp eq ptr %312, null
  br i1 %tobool2.not.i.i20.i, label %land.lhs.true.i.i21.i.if.end62.i.i_crit_edge, label %soc_tplg_dai_link_load.exit.i.i

land.lhs.true.i.i21.i.if.end62.i.i_crit_edge:     ; preds = %land.lhs.true.i.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

soc_tplg_dai_link_load.exit.i.i:                  ; preds = %land.lhs.true.i.i21.i
  %313 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %comp.i.i, align 4
  %315 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %index.i.i.i, align 4
  %call.i128.i22.i = tail call i32 %312(ptr noundef %314, i32 noundef %316, ptr noundef nonnull %call.i.i6.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i22.i)
  %cmp59.i.i = icmp slt i32 %call.i128.i22.i, 0
  br i1 %cmp59.i.i, label %soc_tplg_dai_link_load.exit.i.i.if.then22.sink.split_crit_edge, label %soc_tplg_dai_link_load.exit.i.i.if.end62.i.i_crit_edge

soc_tplg_dai_link_load.exit.i.i.if.end62.i.i_crit_edge: ; preds = %soc_tplg_dai_link_load.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

soc_tplg_dai_link_load.exit.i.i.if.then22.sink.split_crit_edge: ; preds = %soc_tplg_dai_link_load.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.sink.split

if.end62.i.i:                                     ; preds = %soc_tplg_dai_link_load.exit.i.i.if.end62.i.i_crit_edge, %land.lhs.true.i.i21.i.if.end62.i.i_crit_edge, %if.end57.i.i.if.end62.i.i_crit_edge
  %317 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %comp.i.i, align 4
  %card.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %318, i32 0, i32 4
  %319 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %card.i.i, align 4
  %call63.i.i = tail call i32 @snd_soc_add_pcm_runtime(ptr noundef %320, ptr noundef nonnull %call.i.i6.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i.i)
  %cmp64.i.i = icmp slt i32 %call63.i.i, 0
  br i1 %cmp64.i.i, label %if.end62.i.i.if.then22.sink.split_crit_edge, label %if.end70.i.i

if.end62.i.i.if.then22.sink.split_crit_edge:      ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22.sink.split

if.end70.i.i:                                     ; preds = %if.end62.i.i
  %list.i25.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 19, i32 2
  %321 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %comp.i.i, align 4
  %dobj_list.i26.i = getelementptr inbounds %struct.snd_soc_component, ptr %322, i32 0, i32 16
  %323 = ptrtoint ptr %dobj_list.i26.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dobj_list.i26.i, align 4
  %call.i.i.i27.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i25.i, ptr noundef %dobj_list.i26.i, ptr noundef %324) #10
  br i1 %call.i.i.i27.i, label %if.end.i.i.i30.i, label %if.end70.i.i.if.end26_crit_edge

if.end70.i.i.if.end26_crit_edge:                  ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end.i.i.i30.i:                                 ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i28.i = getelementptr inbounds %struct.list_head, ptr %324, i32 0, i32 1
  %325 = ptrtoint ptr %prev1.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %list.i25.i, ptr %prev1.i.i.i28.i, align 4
  %326 = ptrtoint ptr %list.i25.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %324, ptr %list.i25.i, align 4
  %prev3.i.i.i29.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i6.i, i32 0, i32 19, i32 2, i32 1
  %327 = ptrtoint ptr %prev3.i.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %dobj_list.i26.i, ptr %prev3.i.i.i29.i, align 4
  %328 = ptrtoint ptr %dobj_list.i26.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store volatile ptr %list.i25.i, ptr %dobj_list.i26.i, align 4
  br label %if.end26

if.then22.sink.split:                             ; preds = %if.end62.i.i.if.then22.sink.split_crit_edge, %soc_tplg_dai_link_load.exit.i.i.if.then22.sink.split_crit_edge, %soc_tplg_dai_load.exit.i.i.if.then22.sink.split_crit_edge
  %.str.150.sink = phi ptr [ @.str.143, %soc_tplg_dai_load.exit.i.i.if.then22.sink.split_crit_edge ], [ @.str.150, %soc_tplg_dai_link_load.exit.i.i.if.then22.sink.split_crit_edge ], [ @.str.153, %if.end62.i.i.if.then22.sink.split_crit_edge ]
  %retval.0.i79.ph.ph = phi i32 [ %call.i128.i.i, %soc_tplg_dai_load.exit.i.i.if.then22.sink.split_crit_edge ], [ %call.i128.i22.i, %soc_tplg_dai_link_load.exit.i.i.if.then22.sink.split_crit_edge ], [ %call63.i.i, %if.end62.i.i.if.then22.sink.split_crit_edge ]
  %329 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %dev4.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %330, ptr noundef nonnull %.str.150.sink) #13
  br label %if.then22

if.then22:                                        ; preds = %if.then22.sink.split, %if.then27.i.i.if.then22_crit_edge, %if.then8.i.i.if.then22_crit_edge, %if.end.i78.if.then22_crit_edge, %soc_tplg_dai_create.exit.i.if.then22_crit_edge, %list_add.exit.i.i.if.then22_crit_edge, %if.then23.i.i.if.then22_crit_edge, %if.then14.i.i.if.then22_crit_edge, %if.then3.i.i.if.then22_crit_edge, %if.end19.if.then22_crit_edge
  %retval.0.i79.ph = phi i32 [ %retval.0.i79.ph.ph, %if.then22.sink.split ], [ -12, %if.end19.if.then22_crit_edge ], [ -12, %list_add.exit.i.i.if.then22_crit_edge ], [ -12, %if.then3.i.i.if.then22_crit_edge ], [ -12, %if.then14.i.i.if.then22_crit_edge ], [ -12, %if.then23.i.i.if.then22_crit_edge ], [ -12, %if.then27.i.i.if.then22_crit_edge ], [ -12, %if.then8.i.i.if.then22_crit_edge ], [ -12, %if.end.i78.if.then22_crit_edge ], [ %call51.i.i, %soc_tplg_dai_create.exit.i.if.then22_crit_edge ]
  br i1 %cmp13, label %if.then22.cleanup_crit_edge, label %if.then24

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %_pcm.1) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end.i.i.i30.i, %if.end70.i.i.if.end26_crit_edge
  %priv = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %_pcm.1, i32 0, i32 13
  %331 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %331, i32 4)
  %332 = load i32, ptr %priv, align 1
  %333 = tail call i32 @llvm.bswap.i32(i32 %332)
  %add = add i32 %333, %31
  %334 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %335, i32 %add
  store ptr %add.ptr, ptr %pos, align 4
  br i1 %cmp13, label %if.end26.for.inc_crit_edge, label %if.then30

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %_pcm.1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %if.end26.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.do.body32_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.body32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

do.body32:                                        ; preds = %for.inc.do.body32_crit_edge, %for.cond.preheader.do.body32_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_pcm_elems_load.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_pcm_elems_load, %if.then37)) #10
          to label %cleanup [label %if.then37], !srcloc !384

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %dev38 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %336 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_pcm_elems_load.__UNIQUE_ID_ddebug250, ptr noundef %337, ptr noundef nonnull @.str.136, i32 noundef %2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body32, %if.then24, %if.then22.cleanup_crit_edge, %do.end3.i.cleanup_crit_edge, %do.end.i75, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ %retval.0.i79.ph, %if.then24 ], [ %retval.0.i79.ph, %if.then22.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %do.body32 ], [ -22, %do.end.i75 ], [ -12, %do.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_tplg_dai_elems_load(ptr nocapture noundef %tplg, ptr nocapture noundef readonly %hdr) unnamed_addr #2 align 64 {
entry:
  %dai_component.i = alloca %struct.snd_soc_dai_link_component, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count1 = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 8
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %count1, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp44 = icmp sgt i32 %2, 0
  br i1 %cmp44, label %for.body.lr.ph, label %entry.do.body13_crit_edge

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

for.body.lr.ph:                                   ; preds = %entry
  %pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %3 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %dai_component.i, i32 0, i32 2
  %dev.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %ops.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %comp.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %index.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pos, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 402718720, i32 %7)
  %cmp2.not = icmp eq i32 %7, 402718720
  br i1 %cmp2.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.155) #13
  br label %cleanup22

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dai_component.i) #10
  %10 = ptrtoint ptr %dai_component.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %dai_component.i, align 8
  %dai_name.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dai_name.i, ptr %3, align 8
  %call.i = call ptr @snd_soc_find_dai(ptr noundef nonnull %dai_component.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.161, ptr noundef %dai_name.i) #13
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %dai_id.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %dai_id.i, align 1
  %16 = call i32 @llvm.bswap.i32(i32 %15) #10
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not.i = icmp eq i32 %16, %18
  br i1 %cmp.not.i, label %if.end11.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.164, ptr noundef %dai_name.i) #13
  br label %do.end7

if.end11.i:                                       ; preds = %if.end.i
  %driver.i = getelementptr inbounds %struct.snd_soc_dai, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver.i, align 4
  %tobool12.not.i = icmp eq ptr %22, null
  br i1 %tobool12.not.i, label %if.end11.i.do.end7_crit_edge, label %if.end14.i

if.end11.i.do.end7_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.end14.i:                                       ; preds = %if.end11.i
  %playback.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %playback.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %playback.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not.i = icmp eq i32 %24, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end23.i_crit_edge, label %if.then16.i

if.end14.i.if.end23.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then16.i:                                      ; preds = %if.end14.i
  %playback17.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 11
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 0, i32 1
  %call.i.i = call noalias ptr @devm_kstrdup(ptr noundef %26, ptr noundef %name.i.i, i32 noundef 3264) #10
  %27 = ptrtoint ptr %playback17.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i, ptr %playback17.i, align 8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then16.i.do.end7_crit_edge, label %set_stream_info.exit.i

if.then16.i.do.end7_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

set_stream_info.exit.i:                           ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %channels_min.i.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 0, i32 6
  %28 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %channels_min.i.i, align 1
  %30 = call i32 @llvm.bswap.i32(i32 %29) #10
  %channels_min2.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 11, i32 5
  %31 = ptrtoint ptr %channels_min2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %channels_min2.i.i, align 4
  %channels_max.i.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 0, i32 7
  %32 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %channels_max.i.i, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %33) #10
  %channels_max3.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 11, i32 6
  %35 = ptrtoint ptr %channels_max3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %channels_max3.i.i, align 8
  %rates.i.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 0, i32 3
  %36 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %rates.i.i, align 1
  %38 = call i32 @llvm.bswap.i32(i32 %37) #10
  %rates4.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 11, i32 2
  %39 = ptrtoint ptr %rates4.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rates4.i.i, align 8
  %rate_min.i.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 0, i32 4
  %40 = ptrtoint ptr %rate_min.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %rate_min.i.i, align 1
  %42 = call i32 @llvm.bswap.i32(i32 %41) #10
  %rate_min5.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 11, i32 3
  %43 = ptrtoint ptr %rate_min5.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rate_min5.i.i, align 4
  %rate_max.i.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 0, i32 5
  %44 = ptrtoint ptr %rate_max.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %rate_max.i.i, align 1
  %46 = call i32 @llvm.bswap.i32(i32 %45) #10
  %rate_max6.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 11, i32 4
  %47 = ptrtoint ptr %rate_max6.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rate_max6.i.i, align 8
  %formats.i.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 0, i32 2
  %48 = ptrtoint ptr %formats.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %formats.i.i, align 1
  %50 = call i64 @llvm.bswap.i64(i64 %49) #10
  %formats7.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 11, i32 1
  %51 = ptrtoint ptr %formats7.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %formats7.i.i, align 8
  %sig_bits.i.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 0, i32 14
  %52 = ptrtoint ptr %sig_bits.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %sig_bits.i.i, align 1
  %54 = call i32 @llvm.bswap.i32(i32 %53) #10
  %sig_bits8.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 11, i32 7
  %55 = ptrtoint ptr %sig_bits8.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %sig_bits8.i.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %set_stream_info.exit.i, %if.end14.i.if.end23.i_crit_edge
  %capture.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 4
  %56 = ptrtoint ptr %capture.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %capture.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool24.not.i = icmp eq i32 %57, 0
  br i1 %tobool24.not.i, label %if.end23.i.if.end33.i_crit_edge, label %if.then25.i

if.end23.i.if.end33.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then25.i:                                      ; preds = %if.end23.i
  %capture26.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 10
  %58 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i, align 4
  %name.i80.i = getelementptr %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 1, i32 1
  %call.i81.i = call noalias ptr @devm_kstrdup(ptr noundef %59, ptr noundef %name.i80.i, i32 noundef 3264) #10
  %60 = ptrtoint ptr %capture26.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i81.i, ptr %capture26.i, align 8
  %tobool.not.i82.i = icmp eq ptr %call.i81.i, null
  br i1 %tobool.not.i82.i, label %if.then25.i.do.end7_crit_edge, label %set_stream_info.exit99.i

if.then25.i.do.end7_crit_edge:                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

set_stream_info.exit99.i:                         ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  %channels_min.i83.i = getelementptr %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 1, i32 6
  %61 = ptrtoint ptr %channels_min.i83.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %channels_min.i83.i, align 1
  %63 = call i32 @llvm.bswap.i32(i32 %62) #10
  %channels_min2.i84.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 10, i32 5
  %64 = ptrtoint ptr %channels_min2.i84.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %channels_min2.i84.i, align 4
  %channels_max.i85.i = getelementptr %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 1, i32 7
  %65 = ptrtoint ptr %channels_max.i85.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %channels_max.i85.i, align 1
  %67 = call i32 @llvm.bswap.i32(i32 %66) #10
  %channels_max3.i86.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 10, i32 6
  %68 = ptrtoint ptr %channels_max3.i86.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %channels_max3.i86.i, align 8
  %rates.i87.i = getelementptr %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 1, i32 3
  %69 = ptrtoint ptr %rates.i87.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %rates.i87.i, align 1
  %71 = call i32 @llvm.bswap.i32(i32 %70) #10
  %rates4.i88.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 10, i32 2
  %72 = ptrtoint ptr %rates4.i88.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %rates4.i88.i, align 8
  %rate_min.i89.i = getelementptr %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 1, i32 4
  %73 = ptrtoint ptr %rate_min.i89.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %rate_min.i89.i, align 1
  %75 = call i32 @llvm.bswap.i32(i32 %74) #10
  %rate_min5.i90.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 10, i32 3
  %76 = ptrtoint ptr %rate_min5.i90.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %rate_min5.i90.i, align 4
  %rate_max.i91.i = getelementptr %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 1, i32 5
  %77 = ptrtoint ptr %rate_max.i91.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %rate_max.i91.i, align 1
  %79 = call i32 @llvm.bswap.i32(i32 %78) #10
  %rate_max6.i92.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 10, i32 4
  %80 = ptrtoint ptr %rate_max6.i92.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %rate_max6.i92.i, align 8
  %formats.i93.i = getelementptr %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 1, i32 2
  %81 = ptrtoint ptr %formats.i93.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %formats.i93.i, align 1
  %83 = call i64 @llvm.bswap.i64(i64 %82) #10
  %formats7.i94.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 10, i32 1
  %84 = ptrtoint ptr %formats7.i94.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %formats7.i94.i, align 8
  %sig_bits.i95.i = getelementptr %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 5, i32 1, i32 14
  %85 = ptrtoint ptr %sig_bits.i95.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %sig_bits.i95.i, align 1
  %87 = call i32 @llvm.bswap.i32(i32 %86) #10
  %sig_bits8.i96.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 10, i32 7
  %88 = ptrtoint ptr %sig_bits8.i96.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %sig_bits8.i96.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %set_stream_info.exit99.i, %if.end23.i.if.end33.i_crit_edge
  %flag_mask.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 6
  %89 = ptrtoint ptr %flag_mask.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %flag_mask.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool34.not.i = icmp eq i32 %90, 0
  br i1 %tobool34.not.i, label %if.end33.i.if.end37.i_crit_edge, label %if.then35.i

if.end33.i.if.end37.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.end33.i
  %91 = call i32 @llvm.bswap.i32(i32 %90) #10
  %flags.i = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 7
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %flags.i, align 1
  %94 = call i32 @llvm.bswap.i32(i32 %93) #10
  %and.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i100.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i100.i, label %if.then35.i.if.end.i101.i_crit_edge, label %if.then.i.i

if.then35.i.if.end.i101.i_crit_edge:              ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i101.i

if.then.i.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  %symmetric_rate.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 12
  %95 = trunc i32 %94 to i8
  %96 = ptrtoint ptr %symmetric_rate.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i.i = load i8, ptr %symmetric_rate.i.i, align 8
  %bf.shl.i.i = shl i8 %95, 7
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  %bf.set.i.i = or i8 %bf.clear.i.i, %bf.shl.i.i
  store i8 %bf.set.i.i, ptr %symmetric_rate.i.i, align 8
  br label %if.end.i101.i

if.end.i101.i:                                    ; preds = %if.then.i.i, %if.then35.i.if.end.i101.i_crit_edge
  %and3.i.i = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i101.i.if.end15.i.i_crit_edge, label %if.then5.i.i

if.end.i101.i.if.end15.i.i_crit_edge:             ; preds = %if.end.i101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i.i

if.then5.i.i:                                     ; preds = %if.end.i101.i
  call void @__sanitizer_cov_trace_pc() #12
  %symmetric_channels.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 12
  %97 = trunc i32 %94 to i8
  %98 = ptrtoint ptr %symmetric_channels.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %bf.load9.i.i = load i8, ptr %symmetric_channels.i.i, align 8
  %99 = shl i8 %97, 5
  %bf.shl11.i.i = and i8 %99, 64
  %bf.clear12.i.i = and i8 %bf.load9.i.i, -65
  %bf.set13.i.i = or i8 %bf.clear12.i.i, %bf.shl11.i.i
  store i8 %bf.set13.i.i, ptr %symmetric_channels.i.i, align 8
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then5.i.i, %if.end.i101.i.if.end15.i.i_crit_edge
  %and16.i.i = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end15.i.i.if.end37.i_crit_edge, label %if.then18.i.i

if.end15.i.i.if.end37.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %symmetric_sample_bits.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %22, i32 0, i32 12
  %100 = trunc i32 %94 to i8
  %101 = ptrtoint ptr %symmetric_sample_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load22.i.i = load i8, ptr %symmetric_sample_bits.i.i, align 8
  %102 = shl i8 %100, 3
  %bf.shl24.i.i = and i8 %102, 32
  %bf.clear25.i.i = and i8 %bf.load22.i.i, -33
  %bf.set26.i.i = or i8 %bf.clear25.i.i, %bf.shl24.i.i
  store i8 %bf.set26.i.i, ptr %symmetric_sample_bits.i.i, align 8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then18.i.i, %if.end15.i.i.if.end37.i_crit_edge, %if.end33.i.if.end37.i_crit_edge
  %103 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i102.i = icmp eq ptr %104, null
  br i1 %tobool.not.i102.i, label %if.end37.i.for.inc_crit_edge, label %land.lhs.true.i.i

if.end37.i.for.inc_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i.i:                                ; preds = %if.end37.i
  %dai_load.i.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %104, i32 0, i32 7
  %105 = ptrtoint ptr %dai_load.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dai_load.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %106, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.for.inc_crit_edge, label %soc_tplg_dai_load.exit.i

land.lhs.true.i.i.for.inc_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

soc_tplg_dai_load.exit.i:                         ; preds = %land.lhs.true.i.i
  %107 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %comp.i.i, align 4
  %109 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %index.i.i, align 4
  %call.i103.i = call i32 %106(ptr noundef %108, i32 noundef %110, ptr noundef nonnull %22, ptr noundef null, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %cmp39.i = icmp slt i32 %call.i103.i, 0
  br i1 %cmp39.i, label %do.end43.i, label %soc_tplg_dai_load.exit.i.for.inc_crit_edge

soc_tplg_dai_load.exit.i.for.inc_crit_edge:       ; preds = %soc_tplg_dai_load.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end43.i:                                       ; preds = %soc_tplg_dai_load.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.143) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end43.i, %if.then25.i.do.end7_crit_edge, %if.then16.i.do.end7_crit_edge, %if.end11.i.do.end7_crit_edge, %do.end7.i, %do.end.i
  %retval.0.i34.ph = phi i32 [ %call.i103.i, %do.end43.i ], [ -22, %do.end.i ], [ -22, %do.end7.i ], [ -22, %if.end11.i.do.end7_crit_edge ], [ -12, %if.then16.i.do.end7_crit_edge ], [ -12, %if.then25.i.do.end7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dai_component.i) #10
  %113 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.158) #13
  br label %cleanup22

for.inc:                                          ; preds = %soc_tplg_dai_load.exit.i.for.inc_crit_edge, %land.lhs.true.i.i.for.inc_crit_edge, %if.end37.i.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dai_component.i) #10
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dai, ptr %5, i32 0, i32 8
  %115 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %priv, align 1
  %117 = call i32 @llvm.bswap.i32(i32 %116)
  %add = add i32 %117, 280
  %118 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %119, i32 %add
  store ptr %add.ptr, ptr %pos, align 4
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.do.body13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.body13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

do.body13:                                        ; preds = %for.inc.do.body13_crit_edge, %entry.do.body13_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_dai_elems_load.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dai_elems_load, %if.then17)) #10
          to label %cleanup22 [label %if.then17], !srcloc !384

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %dev18 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %120 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev18, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_dai_elems_load.__UNIQUE_ID_ddebug251, ptr noundef %121, ptr noundef nonnull @.str.160, i32 noundef %2) #10
  br label %cleanup22

cleanup22:                                        ; preds = %if.then17, %do.body13, %do.end7, %do.end
  %retval.2 = phi i32 [ 0, %if.then17 ], [ 0, %do.body13 ], [ -22, %do.end ], [ %retval.0.i34.ph, %do.end7 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_tplg_link_elems_load(ptr nocapture noundef %tplg, ptr nocapture noundef readonly %hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count1 = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 8
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %count1, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pos, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %4, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = add i32 %7, -1657
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1069, i32 %8)
  %9 = icmp ult i32 %8, -1069
  br i1 %9, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.168, i32 noundef %7) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %payload_size = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 6
  %12 = ptrtoint ptr %payload_size to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %payload_size, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %mul.i = mul i32 %7, %2
  %add.ptr.i = getelementptr i8, ptr %4, i32 %mul.i
  %15 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tplg, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 %20
  %cmp.i = icmp ugt ptr %add.ptr.i, %add.ptr2.i
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.170) #13
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %14)
  %cmp4.i = icmp ugt i32 %mul.i, %14
  br i1 %cmp4.i, label %do.end8.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1099 = icmp sgt i32 %2, 0
  br i1 %cmp1099, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev4.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %comp.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %ops.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %index.i.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  br label %for.body

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev9.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %23 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.170, i32 noundef %2, i32 noundef %7, i32 noundef %14) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end8.i, %do.end.i
  %dev8 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %25 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.172, i32 noundef %2) #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pos, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %28, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013659136, i32 %30)
  %cmp13 = icmp eq i32 %30, 2013659136
  br i1 %cmp13, label %for.body.if.end19_crit_edge, label %if.else

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1275199488, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 1275199488
  %32 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev4.i, align 4
  br i1 %cmp.not.i, label %do.end3.i, label %do.end.i61

do.end.i61:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.174) #13
  br label %cleanup

do.end3.i:                                        ; preds = %if.else
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.177) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 1656) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end3.i.cleanup_crit_edge, label %if.end6.i

do.end3.i.cleanup_crit_edge:                      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %do.end3.i
  %35 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2013659136, ptr %call7.i.i.i, align 8
  %id.i = getelementptr inbounds %struct.snd_soc_tplg_link_config_v4, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %id.i, align 1
  %id8.i = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %call7.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %id8.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %id8.i, align 4
  %num_streams.i = getelementptr inbounds %struct.snd_soc_tplg_link_config_v4, ptr %28, i32 0, i32 3
  %39 = ptrtoint ptr %num_streams.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %num_streams.i, align 1
  %num_streams9.i = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %call7.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %num_streams9.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %num_streams9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp1130.not.i = icmp eq i32 %40, 0
  br i1 %cmp1130.not.i, label %if.end6.i.if.end19_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.if.end19_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_soc_tplg_link_config, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.031.i
  %arrayidx13.i = getelementptr %struct.snd_soc_tplg_link_config_v4, ptr %28, i32 0, i32 2, i32 %i.031.i
  %42 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx13.i, i32 72)
  %inc.i = add nuw i32 %i.031.i, 1
  %43 = ptrtoint ptr %num_streams9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_streams9.i, align 8
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  %cmp11.i = icmp ult i32 %inc.i, %45
  br i1 %cmp11.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end19_crit_edge

for.body.i.if.end19_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end19:                                         ; preds = %for.body.i.if.end19_crit_edge, %if.end6.i.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %_link.1 = phi ptr [ %28, %for.body.if.end19_crit_edge ], [ %call7.i.i.i, %if.end6.i.if.end19_crit_edge ], [ %call7.i.i.i, %for.body.i.if.end19_crit_edge ]
  %name1.i = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 2
  %call.i = tail call i32 @strnlen(ptr noundef %name1.i, i32 noundef 44) #17
  %46 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %call.i, label %if.end19.if.end6.i63_crit_edge [
    i32 44, label %if.end19.if.then22_crit_edge
    i32 0, label %if.else5.i
  ]

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end19.if.end6.i63_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i63

if.else5.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i63

if.end6.i63:                                      ; preds = %if.else5.i, %if.end19.if.end6.i63_crit_edge
  %name.0.i = phi ptr [ null, %if.else5.i ], [ %name1.i, %if.end19.if.end6.i63_crit_edge ]
  %stream_name7.i = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 3
  %call9.i = tail call i32 @strnlen(ptr noundef %stream_name7.i, i32 noundef 44) #17
  %47 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %call9.i, label %if.end6.i63.if.end19.i_crit_edge [
    i32 44, label %if.end6.i63.if.then22_crit_edge
    i32 0, label %if.else17.i
  ]

if.end6.i63.if.then22_crit_edge:                  ; preds = %if.end6.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end6.i63.if.end19.i_crit_edge:                 ; preds = %if.end6.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.else17.i:                                      ; preds = %if.end6.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else17.i, %if.end6.i63.if.end19.i_crit_edge
  %stream_name.0.i = phi ptr [ null, %if.else17.i ], [ %stream_name7.i, %if.end6.i63.if.end19.i_crit_edge ]
  %48 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %comp.i, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card.i, align 4
  %id.i64 = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 1
  %52 = ptrtoint ptr %id.i64 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %id.i64, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  %rtd_list.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %51, i32 0, i32 26
  %55 = ptrtoint ptr %rtd_list.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn39.i.i = load ptr, ptr %rtd_list.i.i, align 4
  %cmp.not40.i.i = icmp eq ptr %.pn39.i.i, %rtd_list.i.i
  br i1 %cmp.not40.i.i, label %if.end19.i.do.end.i66_crit_edge, label %for.body.lr.ph.i.i

if.end19.i.do.end.i66_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i66

for.body.lr.ph.i.i:                               ; preds = %if.end19.i
  %tobool.not.i.i = icmp eq ptr %name.0.i, null
  %tobool10.not.i.i = icmp eq ptr %stream_name.0.i, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn41.i.i = phi ptr [ %.pn39.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %dai_link.i.i = getelementptr i8, ptr %.pn41.i.i, i32 -1504
  %56 = ptrtoint ptr %dai_link.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dai_link.i.i, align 4
  %id2.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %id2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %54)
  %cmp3.not.i.i = icmp eq i32 %59, %54
  br i1 %cmp3.not.i.i, label %if.end.i.i, label %for.body.i.i.cleanup.i.i_crit_edge

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  %tobool5.not.i.i = icmp eq ptr %61, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %name.0.i, ptr noundef nonnull %61) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i.i, label %lor.lhs.false.i.i.if.end9.i.i_crit_edge, label %lor.lhs.false.i.i.cleanup.i.i_crit_edge

lor.lhs.false.i.i.cleanup.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

lor.lhs.false.i.i.if.end9.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %lor.lhs.false.i.i.if.end9.i.i_crit_edge, %if.end.i.i.if.end9.i.i_crit_edge
  br i1 %tobool10.not.i.i, label %if.end9.i.i.snd_soc_find_dai_link.exit.i_crit_edge, label %land.lhs.true11.i.i

if.end9.i.i.snd_soc_find_dai_link.exit.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_soc_find_dai_link.exit.i

land.lhs.true11.i.i:                              ; preds = %if.end9.i.i
  %stream_name12.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %stream_name12.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stream_name12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %63, null
  br i1 %tobool13.not.i.i, label %land.lhs.true11.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false14.i.i

land.lhs.true11.i.i.cleanup.i.i_crit_edge:        ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

lor.lhs.false14.i.i:                              ; preds = %land.lhs.true11.i.i
  %call16.i.i = tail call i32 @strcmp(ptr noundef nonnull %stream_name.0.i, ptr noundef nonnull %63) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %lor.lhs.false14.i.i.snd_soc_find_dai_link.exit.i_crit_edge, label %lor.lhs.false14.i.i.cleanup.i.i_crit_edge

lor.lhs.false14.i.i.cleanup.i.i_crit_edge:        ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

lor.lhs.false14.i.i.snd_soc_find_dai_link.exit.i_crit_edge: ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_soc_find_dai_link.exit.i

cleanup.i.i:                                      ; preds = %lor.lhs.false14.i.i.cleanup.i.i_crit_edge, %land.lhs.true11.i.i.cleanup.i.i_crit_edge, %lor.lhs.false.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %64 = ptrtoint ptr %.pn41.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn.i.i = load ptr, ptr %.pn41.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %rtd_list.i.i
  br i1 %cmp.not.i.i, label %cleanup.i.i.do.end.i66_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

cleanup.i.i.do.end.i66_crit_edge:                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i66

snd_soc_find_dai_link.exit.i:                     ; preds = %lor.lhs.false14.i.i.snd_soc_find_dai_link.exit.i_crit_edge, %if.end9.i.i.snd_soc_find_dai_link.exit.i_crit_edge
  %tobool21.not.i = icmp eq ptr %57, null
  br i1 %tobool21.not.i, label %snd_soc_find_dai_link.exit.i.do.end.i66_crit_edge, label %if.end24.i

snd_soc_find_dai_link.exit.i.do.end.i66_crit_edge: ; preds = %snd_soc_find_dai_link.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i66

do.end.i66:                                       ; preds = %snd_soc_find_dai_link.exit.i.do.end.i66_crit_edge, %cleanup.i.i.do.end.i66_crit_edge, %if.end19.i.do.end.i66_crit_edge
  %65 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev4.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.179, ptr noundef %name.0.i, i32 noundef %53) #13
  br label %if.then22

if.end24.i:                                       ; preds = %snd_soc_find_dai_link.exit.i
  %num_hw_configs.i = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 7
  %67 = ptrtoint ptr %num_hw_configs.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %num_hw_configs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool25.not.i = icmp eq i32 %68, 0
  br i1 %tobool25.not.i, label %if.end24.i.if.end27.i_crit_edge, label %for.body.lr.ph.i79.i

if.end24.i.if.end27.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

for.body.lr.ph.i79.i:                             ; preds = %if.end24.i
  %default_hw_config_id.i.i = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 8
  %dai_fmt.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 11
  br label %for.body.i80.i

for.body.i80.i:                                   ; preds = %for.inc.i.i.for.body.i80.i_crit_edge, %for.body.lr.ph.i79.i
  %i.0109.i.i = phi i32 [ 0, %for.body.lr.ph.i79.i ], [ %inc.i.i, %for.inc.i.i.for.body.i80.i_crit_edge ]
  %id.i.i = getelementptr %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 6, i32 %i.0109.i.i, i32 1
  %69 = ptrtoint ptr %id.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %id.i.i, align 1
  %71 = ptrtoint ptr %default_hw_config_id.i.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %default_hw_config_id.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp2.not.i.i = icmp eq i32 %70, %72
  br i1 %cmp2.not.i.i, label %if.end.i81.i, label %for.body.i80.i.for.inc.i.i_crit_edge

for.body.i80.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i81.i:                                     ; preds = %for.body.i80.i
  %fmt.i.i = getelementptr %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 6, i32 %i.0109.i.i, i32 2
  %73 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %fmt.i.i, align 1
  %75 = lshr i32 %74, 24
  %and.i.i = and i32 %75, 15
  %76 = ptrtoint ptr %dai_fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and.i.i, ptr %dai_fmt.i.i, align 4
  %clock_gated.i.i = getelementptr %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 6, i32 %i.0109.i.i, i32 3
  %77 = ptrtoint ptr %clock_gated.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %clock_gated.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %78)
  %cond.i.i = icmp eq i8 %78, 2
  br i1 %cond.i.i, label %sw.bb4.i.i, label %if.end.i81.i.sw.epilog.i.i_crit_edge

if.end.i81.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #12
  %or6.i.i = or i32 %and.i.i, 16
  %79 = ptrtoint ptr %dai_fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or6.i.i, ptr %dai_fmt.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb4.i.i, %if.end.i81.i.sw.epilog.i.i_crit_edge
  %invert_bclk7.i.i = getelementptr %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 6, i32 %i.0109.i.i, i32 4
  %80 = ptrtoint ptr %invert_bclk7.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %invert_bclk7.i.i, align 1
  %invert_fsync8.i.i = getelementptr %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 6, i32 %i.0109.i.i, i32 5
  %82 = ptrtoint ptr %invert_fsync8.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %invert_fsync8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i82.i = icmp eq i8 %81, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool9.not.i.i = icmp eq i8 %83, 0
  %or.cond.i.i = select i1 %tobool.not.i82.i, i1 %tobool9.not.i.i, i1 false
  br i1 %or.cond.i.i, label %sw.epilog.i.i.if.end33.i.i_crit_edge, label %if.else.i.i

sw.epilog.i.i.if.end33.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i.i

if.else.i.i:                                      ; preds = %sw.epilog.i.i
  %tobool.not.not.i.i = xor i1 %tobool.not.i82.i, true
  %or.cond102.i.i = select i1 %tobool.not.not.i.i, i1 true, i1 %tobool9.not.i.i
  br i1 %or.cond102.i.i, label %if.else20.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %dai_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dai_fmt.i.i, align 4
  %or19.i.i = or i32 %85, 512
  br label %if.end33.sink.split.i.i

if.else20.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool22.not.i.i = icmp ne i8 %81, 0
  %or.cond103.i.i = select i1 %tobool22.not.i.i, i1 %tobool9.not.i.i, i1 false
  %86 = ptrtoint ptr %dai_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dai_fmt.i.i, align 4
  br i1 %or.cond103.i.i, label %if.then25.i.i, label %if.else28.i.i

if.then25.i.i:                                    ; preds = %if.else20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or27.i.i = or i32 %87, 768
  br label %if.end33.sink.split.i.i

if.else28.i.i:                                    ; preds = %if.else20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or30.i.i = or i32 %87, 1024
  br label %if.end33.sink.split.i.i

if.end33.sink.split.i.i:                          ; preds = %if.else28.i.i, %if.then25.i.i, %if.then17.i.i
  %or19.sink.i.i = phi i32 [ %or19.i.i, %if.then17.i.i ], [ %or30.i.i, %if.else28.i.i ], [ %or27.i.i, %if.then25.i.i ]
  %88 = ptrtoint ptr %dai_fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or19.sink.i.i, ptr %dai_fmt.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.end33.sink.split.i.i, %sw.epilog.i.i.if.end33.i.i_crit_edge
  %bclk_provider34.i.i = getelementptr %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 6, i32 %i.0109.i.i, i32 6
  %89 = ptrtoint ptr %bclk_provider34.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bclk_provider34.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp36.i.i = icmp eq i8 %90, 0
  %fsync_provider39.i.i = getelementptr %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 6, i32 %i.0109.i.i, i32 7
  %91 = ptrtoint ptr %fsync_provider39.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %fsync_provider39.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp41.i.i = icmp eq i8 %92, 0
  %cmp36.not.i.i = xor i1 %cmp36.i.i, true
  %cmp41.not.i.i = xor i1 %cmp41.i.i, true
  %brmerge.i.i = select i1 %cmp36.not.i.i, i1 true, i1 %cmp41.not.i.i
  br i1 %brmerge.i.i, label %if.else52.i.i, label %if.then49.i.i

if.then49.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %dai_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dai_fmt.i.i, align 4
  %or51.i.i = or i32 %94, 4096
  br label %for.inc.sink.split.i.i

if.else52.i.i:                                    ; preds = %if.end33.i.i
  %brmerge105.i.i = select i1 %cmp36.i.i, i1 true, i1 %cmp41.not.i.i
  br i1 %brmerge105.i.i, label %if.else60.i.i, label %if.then57.i.i

if.then57.i.i:                                    ; preds = %if.else52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %dai_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dai_fmt.i.i, align 4
  %or59.i.i = or i32 %96, 8192
  br label %for.inc.sink.split.i.i

if.else60.i.i:                                    ; preds = %if.else52.i.i
  %brmerge107.i.i = select i1 %cmp36.not.i.i, i1 true, i1 %cmp41.i.i
  %97 = ptrtoint ptr %dai_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dai_fmt.i.i, align 4
  br i1 %brmerge107.i.i, label %if.else68.i.i, label %if.then65.i.i

if.then65.i.i:                                    ; preds = %if.else60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or67.i.i = or i32 %98, 12288
  br label %for.inc.sink.split.i.i

if.else68.i.i:                                    ; preds = %if.else60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or70.i.i = or i32 %98, 16384
  br label %for.inc.sink.split.i.i

for.inc.sink.split.i.i:                           ; preds = %if.else68.i.i, %if.then65.i.i, %if.then57.i.i, %if.then49.i.i
  %or51.sink.i.i = phi i32 [ %or51.i.i, %if.then49.i.i ], [ %or67.i.i, %if.then65.i.i ], [ %or70.i.i, %if.else68.i.i ], [ %or59.i.i, %if.then57.i.i ]
  %99 = ptrtoint ptr %dai_fmt.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or51.sink.i.i, ptr %dai_fmt.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.sink.split.i.i, %for.body.i80.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.0109.i.i, 1
  %100 = ptrtoint ptr %num_hw_configs.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %num_hw_configs.i, align 1
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #10
  %cmp.i.i = icmp ult i32 %inc.i.i, %102
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i80.i_crit_edge, label %for.inc.i.i.if.end27.i_crit_edge

for.inc.i.i.if.end27.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

for.inc.i.i.for.body.i80.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i80.i

if.end27.i:                                       ; preds = %for.inc.i.i.if.end27.i_crit_edge, %if.end24.i.if.end27.i_crit_edge
  %flag_mask.i = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 9
  %103 = ptrtoint ptr %flag_mask.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %flag_mask.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool28.not.i = icmp eq i32 %104, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end31.i_crit_edge, label %if.then29.i

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end27.i
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #10
  %flags.i = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 10
  %106 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %flags.i, align 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #10
  %and.i83.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83.i)
  %tobool.not.i84.i = icmp eq i32 %and.i83.i, 0
  br i1 %tobool.not.i84.i, label %if.then29.i.if.end.i85.i_crit_edge, label %if.then.i.i

if.then29.i.if.end.i85.i_crit_edge:               ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i85.i

if.then.i.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  %symmetric_rate.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 18
  %109 = ptrtoint ptr %symmetric_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %bf.load.i.i = load i32, ptr %symmetric_rate.i.i, align 4
  %and1.i.i = shl i32 %108, 27
  %bf.shl.i.i = and i32 %and1.i.i, 134217728
  %bf.clear.i.i = and i32 %bf.load.i.i, -134217729
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %symmetric_rate.i.i, align 4
  br label %if.end.i85.i

if.end.i85.i:                                     ; preds = %if.then.i.i, %if.then29.i.if.end.i85.i_crit_edge
  %and3.i.i = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i85.i.if.end14.i.i_crit_edge, label %if.then5.i.i

if.end.i85.i.if.end14.i.i_crit_edge:              ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

if.then5.i.i:                                     ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  %symmetric_channels.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 18
  %110 = ptrtoint ptr %symmetric_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %bf.load9.i.i = load i32, ptr %symmetric_channels.i.i, align 4
  %111 = shl i32 %108, 25
  %bf.shl11.i.i = and i32 %111, 67108864
  %bf.clear12.i.i = and i32 %bf.load9.i.i, -67108865
  %bf.set13.i.i = or i32 %bf.clear12.i.i, %bf.shl11.i.i
  store i32 %bf.set13.i.i, ptr %symmetric_channels.i.i, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then5.i.i, %if.end.i85.i.if.end14.i.i_crit_edge
  %and15.i.i = and i32 %105, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.if.end26.i.i_crit_edge, label %if.then17.i86.i

if.end14.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i

if.then17.i86.i:                                  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %symmetric_sample_bits.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 18
  %112 = ptrtoint ptr %symmetric_sample_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %bf.load21.i.i = load i32, ptr %symmetric_sample_bits.i.i, align 4
  %113 = shl i32 %108, 23
  %bf.shl23.i.i = and i32 %113, 33554432
  %bf.clear24.i.i = and i32 %bf.load21.i.i, -33554433
  %bf.set25.i.i = or i32 %bf.clear24.i.i, %bf.shl23.i.i
  store i32 %bf.set25.i.i, ptr %symmetric_sample_bits.i.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then17.i86.i, %if.end14.i.i.if.end26.i.i_crit_edge
  %and27.i.i = and i32 %105, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end26.i.i.if.end31.i_crit_edge, label %if.then29.i.i

if.end26.i.i.if.end31.i_crit_edge:                ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then29.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ignore_suspend.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 18
  %114 = ptrtoint ptr %ignore_suspend.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %bf.load33.i.i = load i32, ptr %ignore_suspend.i.i, align 4
  %115 = shl i32 %108, 25
  %bf.shl35.i.i = and i32 %115, 268435456
  %bf.clear36.i.i = and i32 %bf.load33.i.i, -268435457
  %bf.set37.i.i = or i32 %bf.clear36.i.i, %bf.shl35.i.i
  store i32 %bf.set37.i.i, ptr %ignore_suspend.i.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i.i, %if.end26.i.i.if.end31.i_crit_edge, %if.end27.i.if.end31.i_crit_edge
  %116 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i87.i = icmp eq ptr %117, null
  br i1 %tobool.not.i87.i, label %if.end31.i.if.end39.i_crit_edge, label %land.lhs.true.i88.i

if.end31.i.if.end39.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

land.lhs.true.i88.i:                              ; preds = %if.end31.i
  %link_load.i.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %117, i32 0, i32 9
  %118 = ptrtoint ptr %link_load.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %link_load.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %119, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i88.i.if.end39.i_crit_edge, label %soc_tplg_dai_link_load.exit.i

land.lhs.true.i88.i.if.end39.i_crit_edge:         ; preds = %land.lhs.true.i88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

soc_tplg_dai_link_load.exit.i:                    ; preds = %land.lhs.true.i88.i
  %120 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %comp.i, align 4
  %122 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %index.i.i, align 4
  %call.i89.i = tail call i32 %119(ptr noundef %121, i32 noundef %123, ptr noundef nonnull %57, ptr noundef %_link.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i)
  %cmp33.i = icmp slt i32 %call.i89.i, 0
  br i1 %cmp33.i, label %do.end37.i, label %soc_tplg_dai_link_load.exit.i.if.end39.i_crit_edge

soc_tplg_dai_link_load.exit.i.if.end39.i_crit_edge: ; preds = %soc_tplg_dai_link_load.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

do.end37.i:                                       ; preds = %soc_tplg_dai_link_load.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev4.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.182) #13
  br label %if.then22

if.end39.i:                                       ; preds = %soc_tplg_dai_link_load.exit.i.if.end39.i_crit_edge, %land.lhs.true.i88.i.if.end39.i_crit_edge, %if.end31.i.if.end39.i_crit_edge
  %126 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %index.i.i, align 4
  %dobj.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 19
  %index40.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 19, i32 1
  %128 = ptrtoint ptr %index40.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %index40.i, align 4
  %129 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ops.i.i, align 4
  %ops42.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 19, i32 3
  %131 = ptrtoint ptr %ops42.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %130, ptr %ops42.i, align 4
  %132 = ptrtoint ptr %dobj.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 9, ptr %dobj.i, align 4
  %list.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 19, i32 2
  %133 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %comp.i, align 4
  %dobj_list.i = getelementptr inbounds %struct.snd_soc_component, ptr %134, i32 0, i32 16
  %135 = ptrtoint ptr %dobj_list.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dobj_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %dobj_list.i, ptr noundef %136) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end39.i.if.end26_crit_edge

if.end39.i.if.end26_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end.i.i.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %138 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %136, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %57, i32 0, i32 19, i32 2, i32 1
  %139 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %dobj_list.i, ptr %prev3.i.i.i, align 4
  %140 = ptrtoint ptr %dobj_list.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %list.i, ptr %dobj_list.i, align 4
  br label %if.end26

if.then22:                                        ; preds = %do.end37.i, %do.end.i66, %if.end6.i63.if.then22_crit_edge, %if.end19.if.then22_crit_edge
  %retval.0.i67.ph = phi i32 [ -22, %do.end.i66 ], [ %call.i89.i, %do.end37.i ], [ -22, %if.end6.i63.if.then22_crit_edge ], [ -22, %if.end19.if.then22_crit_edge ]
  br i1 %cmp13, label %if.then22.cleanup_crit_edge, label %if.then24

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %_link.1) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end.i.i.i, %if.end39.i.if.end26_crit_edge
  %priv = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %_link.1, i32 0, i32 11
  %141 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %priv, align 1
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  %add = add i32 %143, %31
  %144 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %145, i32 %add
  store ptr %add.ptr, ptr %pos, align 4
  br i1 %cmp13, label %if.end26.for.inc_crit_edge, label %if.then30

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %_link.1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %if.end26.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then24, %if.then22.cleanup_crit_edge, %do.end3.i.cleanup_crit_edge, %do.end.i61, %do.end7, %for.cond.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ %retval.0.i67.ph, %if.then24 ], [ %retval.0.i67.ph, %if.then22.cleanup_crit_edge ], [ -22, %do.end.i61 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -12, %do.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_tplg_manifest_load(ptr nocapture noundef readonly %tplg, ptr nocapture noundef readnone %hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pos, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %3)
  %cmp = icmp eq i32 %3, 1879048192
  br i1 %cmp, label %entry.if.end3_crit_edge, label %if.else

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 469762048, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 469762048
  br i1 %cmp.not.i, label %if.else.do.end7.i_crit_edge, label %do.end.i

if.else.do.end7.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

do.end.i:                                         ; preds = %if.else
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  %dev.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.184, i32 noundef %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 469762048, ptr %1, align 1
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i, %if.else.do.end7.i_crit_edge
  %dev8.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %8 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.187) #13
  %priv.i = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %priv.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %add.i = add i32 %12, 112
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #14
  %tobool10.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool10.not.i, label %do.end7.i.cleanup_crit_edge, label %if.end12.i

do.end7.i.cleanup_crit_edge:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.i:                                       ; preds = %do.end7.i
  %13 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1879048192, ptr %call9.i.i.i, align 128
  %control_elems.i = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %control_elems.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %control_elems.i, align 1
  %control_elems14.i = getelementptr inbounds %struct.snd_soc_tplg_manifest, ptr %call9.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %control_elems14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %control_elems14.i, align 4
  %widget_elems.i = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %widget_elems.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %widget_elems.i, align 1
  %widget_elems15.i = getelementptr inbounds %struct.snd_soc_tplg_manifest, ptr %call9.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %widget_elems15.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %widget_elems15.i, align 8
  %graph_elems.i = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %graph_elems.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %graph_elems.i, align 1
  %graph_elems16.i = getelementptr inbounds %struct.snd_soc_tplg_manifest, ptr %call9.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %graph_elems16.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %graph_elems16.i, align 4
  %pcm_elems.i = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %pcm_elems.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %pcm_elems.i, align 1
  %pcm_elems17.i = getelementptr inbounds %struct.snd_soc_tplg_manifest, ptr %call9.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %pcm_elems17.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %pcm_elems17.i, align 16
  %dai_link_elems.i = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %dai_link_elems.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %dai_link_elems.i, align 1
  %dai_link_elems18.i = getelementptr inbounds %struct.snd_soc_tplg_manifest, ptr %call9.i.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %dai_link_elems18.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %dai_link_elems18.i, align 4
  %29 = ptrtoint ptr %priv.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %priv.i, align 1
  %priv21.i = getelementptr inbounds %struct.snd_soc_tplg_manifest, ptr %call9.i.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %priv21.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %priv21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25.not.i = icmp eq i32 %30, 0
  br i1 %tobool25.not.i, label %if.end12.i.if.end3_crit_edge, label %if.then26.i

if.end12.i.if.end3_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then26.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.snd_soc_tplg_manifest, ptr %call9.i.i.i, i32 1
  %data29.i = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, ptr %1, i32 1
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %priv.i, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %35 = call ptr @memcpy(ptr %data.i, ptr %data29.i, i32 %34)
  br label %if.end3

if.end3:                                          ; preds = %if.then26.i, %if.end12.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %_manifest.1 = phi ptr [ %1, %entry.if.end3_crit_edge ], [ %call9.i.i.i, %if.then26.i ], [ %call9.i.i.i, %if.end12.i.if.end3_crit_edge ]
  %ops = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %37, null
  br i1 %tobool.not, label %if.end3.if.end11_crit_edge, label %land.lhs.true

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end3
  %manifest5 = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %manifest5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %manifest5, align 4
  %tobool6.not = icmp eq ptr %39, null
  br i1 %tobool6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %comp = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %40 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %comp, align 4
  %index = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  %42 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index, align 4
  %call10 = tail call i32 %39(ptr noundef %41, i32 noundef %43, ptr noundef %_manifest.1) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %ret.1 = phi i32 [ %call10, %if.then7 ], [ 0, %land.lhs.true.if.end11_crit_edge ], [ 0, %if.end3.if.end11_crit_edge ]
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %_manifest.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end11.cleanup_crit_edge, %do.end7.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.then13 ], [ %ret.1, %if.end11.cleanup_crit_edge ], [ -12, %do.end7.i.cleanup_crit_edge ], [ -22, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @soc_tplg_vendor_load(ptr nocapture noundef readonly %tplg, ptr noundef %hdr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %vendor_load = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vendor_load to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor_load, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  %comp = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %4 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %comp, align 4
  %index = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 %3(ptr noundef %5, i32 noundef %7, ptr noundef %hdr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end8, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %vendor_type = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 5
  %10 = ptrtoint ptr %vendor_type to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %vendor_type, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.189, i32 noundef %11) #13
  br label %cleanup

do.end8:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev9 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  %hdr_pos.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 2
  %14 = ptrtoint ptr %hdr_pos.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdr_pos.i, align 4
  %16 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tplg, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %type = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 3
  %20 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %type, align 1
  %vendor_type12 = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %hdr, i32 0, i32 5
  %22 = ptrtoint ptr %vendor_type12 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %vendor_type12, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.192, i32 noundef %sub.ptr.sub.i, i32 noundef %sub.ptr.sub.i, i32 noundef %21, i32 noundef %23) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end8 ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soc_tplg_dmixer_create(ptr noundef %tplg, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %kc = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %kc) #10
  %pos.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %0 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pos.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 360
  %2 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tplg, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 %7
  %cmp.i = icmp ugt ptr %add.ptr.i, %add.ptr2.i
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.39) #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %size)
  %cmp4.i = icmp ult i32 %size, 360
  br i1 %cmp4.i, label %do.end8.i, label %for.body

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev9.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %10 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.39, i32 noundef 1, i32 noundef 360, i32 noundef %size) #13
  br label %do.end

do.end:                                           ; preds = %do.end8.i, %do.end.i
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.40, i32 noundef 1) #13
  br label %cleanup

for.body:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pos.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 2
  %call1 = tail call i32 @strnlen(ptr noundef %name, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 44
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %dev5 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef 72, i32 noundef 3520) #10
  %cmp7 = icmp eq ptr %call.i, null
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %priv, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add = add i32 %20, 360
  %21 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pos.i, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %add
  store ptr %add.ptr, ptr %pos.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_dmixer_create.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dmixer_create, %if.then17)) #10
          to label %do.end25 [label %if.then17], !srcloc !384

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev5, align 4
  %access = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 3
  %25 = ptrtoint ptr %access to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %access, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_dmixer_create.__UNIQUE_ID_ddebug240, ptr noundef %24, ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %26) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then17, %if.end9
  %27 = getelementptr inbounds i8, ptr %kc, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %name29 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 3
  %29 = ptrtoint ptr %name29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %name, ptr %name29, align 4
  %30 = ptrtoint ptr %call.i to i32
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %31 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %private_value, align 4
  %32 = ptrtoint ptr %kc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %kc, align 4
  %access31 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 3
  %33 = ptrtoint ptr %access31 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %access31, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %access32 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 5
  %36 = ptrtoint ptr %access32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %access32, align 4
  %channel = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7
  %id.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 0, i32 3
  %37 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %38)
  %cmp1.i = icmp eq i32 %38, 50331648
  br i1 %cmp1.i, label %do.end25.if.then.i_crit_edge, label %for.inc.i

do.end25.if.then.i_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %do.end25.if.then.i_crit_edge
  %i.02.lcssa.i = phi i32 [ 0, %do.end25.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ]
  %reg.i = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i, i32 1
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %reg.i, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  br label %tplc_chan_get_reg.exit

for.inc.i:                                        ; preds = %do.end25
  %id.1.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 1, i32 3
  %42 = ptrtoint ptr %id.1.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %id.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %43)
  %cmp1.1.i = icmp eq i32 %43, 50331648
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %id.2.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 2, i32 3
  %44 = ptrtoint ptr %id.2.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %id.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %45)
  %cmp1.2.i = icmp eq i32 %45, 50331648
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %id.3.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 3, i32 3
  %46 = ptrtoint ptr %id.3.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %id.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %47)
  %cmp1.3.i = icmp eq i32 %47, 50331648
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %id.4.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 4, i32 3
  %48 = ptrtoint ptr %id.4.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %id.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %49)
  %cmp1.4.i = icmp eq i32 %49, 50331648
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %id.5.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 5, i32 3
  %50 = ptrtoint ptr %id.5.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %id.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %51)
  %cmp1.5.i = icmp eq i32 %51, 50331648
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %id.6.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 6, i32 3
  %52 = ptrtoint ptr %id.6.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %id.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %53)
  %cmp1.6.i = icmp eq i32 %53, 50331648
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %id.7.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 7, i32 3
  %54 = ptrtoint ptr %id.7.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %id.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %55)
  %cmp1.7.i = icmp eq i32 %55, 50331648
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge

for.inc.6.i.tplc_chan_get_reg.exit_crit_edge:     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_reg.exit

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

tplc_chan_get_reg.exit:                           ; preds = %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge, %if.then.i
  %retval.0.i2 = phi i32 [ %41, %if.then.i ], [ -22, %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge ]
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 3
  %56 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %retval.0.i2, ptr %reg, align 4
  %57 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %58)
  %cmp1.i4 = icmp eq i32 %58, 67108864
  br i1 %cmp1.i4, label %tplc_chan_get_reg.exit.if.then.i7_crit_edge, label %for.inc.i10

tplc_chan_get_reg.exit.if.then.i7_crit_edge:      ; preds = %tplc_chan_get_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i7

if.then.i7:                                       ; preds = %for.inc.6.i28.if.then.i7_crit_edge, %for.inc.5.i25.if.then.i7_crit_edge, %for.inc.4.i22.if.then.i7_crit_edge, %for.inc.3.i19.if.then.i7_crit_edge, %for.inc.2.i16.if.then.i7_crit_edge, %for.inc.1.i13.if.then.i7_crit_edge, %for.inc.i10.if.then.i7_crit_edge, %tplc_chan_get_reg.exit.if.then.i7_crit_edge
  %i.02.lcssa.i5 = phi i32 [ 0, %tplc_chan_get_reg.exit.if.then.i7_crit_edge ], [ 1, %for.inc.i10.if.then.i7_crit_edge ], [ 2, %for.inc.1.i13.if.then.i7_crit_edge ], [ 3, %for.inc.2.i16.if.then.i7_crit_edge ], [ 4, %for.inc.3.i19.if.then.i7_crit_edge ], [ 5, %for.inc.4.i22.if.then.i7_crit_edge ], [ 6, %for.inc.5.i25.if.then.i7_crit_edge ], [ 7, %for.inc.6.i28.if.then.i7_crit_edge ]
  %reg.i6 = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i5, i32 1
  %59 = ptrtoint ptr %reg.i6 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %reg.i6, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  br label %tplc_chan_get_reg.exit30

for.inc.i10:                                      ; preds = %tplc_chan_get_reg.exit
  %id.1.i8 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 1, i32 3
  %62 = ptrtoint ptr %id.1.i8 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %id.1.i8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %63)
  %cmp1.1.i9 = icmp eq i32 %63, 67108864
  br i1 %cmp1.1.i9, label %for.inc.i10.if.then.i7_crit_edge, label %for.inc.1.i13

for.inc.i10.if.then.i7_crit_edge:                 ; preds = %for.inc.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i7

for.inc.1.i13:                                    ; preds = %for.inc.i10
  %id.2.i11 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 2, i32 3
  %64 = ptrtoint ptr %id.2.i11 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %id.2.i11, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %65)
  %cmp1.2.i12 = icmp eq i32 %65, 67108864
  br i1 %cmp1.2.i12, label %for.inc.1.i13.if.then.i7_crit_edge, label %for.inc.2.i16

for.inc.1.i13.if.then.i7_crit_edge:               ; preds = %for.inc.1.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i7

for.inc.2.i16:                                    ; preds = %for.inc.1.i13
  %id.3.i14 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 3, i32 3
  %66 = ptrtoint ptr %id.3.i14 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %id.3.i14, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %67)
  %cmp1.3.i15 = icmp eq i32 %67, 67108864
  br i1 %cmp1.3.i15, label %for.inc.2.i16.if.then.i7_crit_edge, label %for.inc.3.i19

for.inc.2.i16.if.then.i7_crit_edge:               ; preds = %for.inc.2.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i7

for.inc.3.i19:                                    ; preds = %for.inc.2.i16
  %id.4.i17 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 4, i32 3
  %68 = ptrtoint ptr %id.4.i17 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %id.4.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %69)
  %cmp1.4.i18 = icmp eq i32 %69, 67108864
  br i1 %cmp1.4.i18, label %for.inc.3.i19.if.then.i7_crit_edge, label %for.inc.4.i22

for.inc.3.i19.if.then.i7_crit_edge:               ; preds = %for.inc.3.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i7

for.inc.4.i22:                                    ; preds = %for.inc.3.i19
  %id.5.i20 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 5, i32 3
  %70 = ptrtoint ptr %id.5.i20 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %id.5.i20, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %71)
  %cmp1.5.i21 = icmp eq i32 %71, 67108864
  br i1 %cmp1.5.i21, label %for.inc.4.i22.if.then.i7_crit_edge, label %for.inc.5.i25

for.inc.4.i22.if.then.i7_crit_edge:               ; preds = %for.inc.4.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i7

for.inc.5.i25:                                    ; preds = %for.inc.4.i22
  %id.6.i23 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 6, i32 3
  %72 = ptrtoint ptr %id.6.i23 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %id.6.i23, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %73)
  %cmp1.6.i24 = icmp eq i32 %73, 67108864
  br i1 %cmp1.6.i24, label %for.inc.5.i25.if.then.i7_crit_edge, label %for.inc.6.i28

for.inc.5.i25.if.then.i7_crit_edge:               ; preds = %for.inc.5.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i7

for.inc.6.i28:                                    ; preds = %for.inc.5.i25
  %id.7.i26 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 7, i32 3
  %74 = ptrtoint ptr %id.7.i26 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %id.7.i26, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %75)
  %cmp1.7.i27 = icmp eq i32 %75, 67108864
  br i1 %cmp1.7.i27, label %for.inc.6.i28.if.then.i7_crit_edge, label %for.inc.6.i28.tplc_chan_get_reg.exit30_crit_edge

for.inc.6.i28.tplc_chan_get_reg.exit30_crit_edge: ; preds = %for.inc.6.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_reg.exit30

for.inc.6.i28.if.then.i7_crit_edge:               ; preds = %for.inc.6.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i7

tplc_chan_get_reg.exit30:                         ; preds = %for.inc.6.i28.tplc_chan_get_reg.exit30_crit_edge, %if.then.i7
  %retval.0.i29 = phi i32 [ %61, %if.then.i7 ], [ -22, %for.inc.6.i28.tplc_chan_get_reg.exit30_crit_edge ]
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 4
  %76 = ptrtoint ptr %rreg to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %retval.0.i29, ptr %rreg, align 4
  %77 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %78)
  %cmp1.i32 = icmp eq i32 %78, 50331648
  br i1 %cmp1.i32, label %tplc_chan_get_reg.exit30.if.then.i34_crit_edge, label %for.inc.i37

tplc_chan_get_reg.exit30.if.then.i34_crit_edge:   ; preds = %tplc_chan_get_reg.exit30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i34

if.then.i34:                                      ; preds = %for.inc.6.i55.if.then.i34_crit_edge, %for.inc.5.i52.if.then.i34_crit_edge, %for.inc.4.i49.if.then.i34_crit_edge, %for.inc.3.i46.if.then.i34_crit_edge, %for.inc.2.i43.if.then.i34_crit_edge, %for.inc.1.i40.if.then.i34_crit_edge, %for.inc.i37.if.then.i34_crit_edge, %tplc_chan_get_reg.exit30.if.then.i34_crit_edge
  %i.02.lcssa.i33 = phi i32 [ 0, %tplc_chan_get_reg.exit30.if.then.i34_crit_edge ], [ 1, %for.inc.i37.if.then.i34_crit_edge ], [ 2, %for.inc.1.i40.if.then.i34_crit_edge ], [ 3, %for.inc.2.i43.if.then.i34_crit_edge ], [ 4, %for.inc.3.i46.if.then.i34_crit_edge ], [ 5, %for.inc.4.i49.if.then.i34_crit_edge ], [ 6, %for.inc.5.i52.if.then.i34_crit_edge ], [ 7, %for.inc.6.i55.if.then.i34_crit_edge ]
  %shift.i = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i33, i32 2
  %79 = ptrtoint ptr %shift.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %shift.i, align 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #10
  br label %tplc_chan_get_shift.exit

for.inc.i37:                                      ; preds = %tplc_chan_get_reg.exit30
  %id.1.i35 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 1, i32 3
  %82 = ptrtoint ptr %id.1.i35 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %id.1.i35, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %83)
  %cmp1.1.i36 = icmp eq i32 %83, 50331648
  br i1 %cmp1.1.i36, label %for.inc.i37.if.then.i34_crit_edge, label %for.inc.1.i40

for.inc.i37.if.then.i34_crit_edge:                ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i34

for.inc.1.i40:                                    ; preds = %for.inc.i37
  %id.2.i38 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 2, i32 3
  %84 = ptrtoint ptr %id.2.i38 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %id.2.i38, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %85)
  %cmp1.2.i39 = icmp eq i32 %85, 50331648
  br i1 %cmp1.2.i39, label %for.inc.1.i40.if.then.i34_crit_edge, label %for.inc.2.i43

for.inc.1.i40.if.then.i34_crit_edge:              ; preds = %for.inc.1.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i34

for.inc.2.i43:                                    ; preds = %for.inc.1.i40
  %id.3.i41 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 3, i32 3
  %86 = ptrtoint ptr %id.3.i41 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %id.3.i41, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %87)
  %cmp1.3.i42 = icmp eq i32 %87, 50331648
  br i1 %cmp1.3.i42, label %for.inc.2.i43.if.then.i34_crit_edge, label %for.inc.3.i46

for.inc.2.i43.if.then.i34_crit_edge:              ; preds = %for.inc.2.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i34

for.inc.3.i46:                                    ; preds = %for.inc.2.i43
  %id.4.i44 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 4, i32 3
  %88 = ptrtoint ptr %id.4.i44 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %id.4.i44, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %89)
  %cmp1.4.i45 = icmp eq i32 %89, 50331648
  br i1 %cmp1.4.i45, label %for.inc.3.i46.if.then.i34_crit_edge, label %for.inc.4.i49

for.inc.3.i46.if.then.i34_crit_edge:              ; preds = %for.inc.3.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i34

for.inc.4.i49:                                    ; preds = %for.inc.3.i46
  %id.5.i47 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 5, i32 3
  %90 = ptrtoint ptr %id.5.i47 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %id.5.i47, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %91)
  %cmp1.5.i48 = icmp eq i32 %91, 50331648
  br i1 %cmp1.5.i48, label %for.inc.4.i49.if.then.i34_crit_edge, label %for.inc.5.i52

for.inc.4.i49.if.then.i34_crit_edge:              ; preds = %for.inc.4.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i34

for.inc.5.i52:                                    ; preds = %for.inc.4.i49
  %id.6.i50 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 6, i32 3
  %92 = ptrtoint ptr %id.6.i50 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %id.6.i50, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %93)
  %cmp1.6.i51 = icmp eq i32 %93, 50331648
  br i1 %cmp1.6.i51, label %for.inc.5.i52.if.then.i34_crit_edge, label %for.inc.6.i55

for.inc.5.i52.if.then.i34_crit_edge:              ; preds = %for.inc.5.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i34

for.inc.6.i55:                                    ; preds = %for.inc.5.i52
  %id.7.i53 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 7, i32 3
  %94 = ptrtoint ptr %id.7.i53 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %id.7.i53, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %95)
  %cmp1.7.i54 = icmp eq i32 %95, 50331648
  br i1 %cmp1.7.i54, label %for.inc.6.i55.if.then.i34_crit_edge, label %for.inc.6.i55.tplc_chan_get_shift.exit_crit_edge

for.inc.6.i55.tplc_chan_get_shift.exit_crit_edge: ; preds = %for.inc.6.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_shift.exit

for.inc.6.i55.if.then.i34_crit_edge:              ; preds = %for.inc.6.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i34

tplc_chan_get_shift.exit:                         ; preds = %for.inc.6.i55.tplc_chan_get_shift.exit_crit_edge, %if.then.i34
  %retval.0.i56 = phi i32 [ %81, %if.then.i34 ], [ -22, %for.inc.6.i55.tplc_chan_get_shift.exit_crit_edge ]
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 5
  %96 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %retval.0.i56, ptr %shift, align 4
  %97 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %98)
  %cmp1.i58 = icmp eq i32 %98, 67108864
  br i1 %cmp1.i58, label %tplc_chan_get_shift.exit.if.then.i61_crit_edge, label %for.inc.i64

tplc_chan_get_shift.exit.if.then.i61_crit_edge:   ; preds = %tplc_chan_get_shift.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i61

if.then.i61:                                      ; preds = %for.inc.6.i82.if.then.i61_crit_edge, %for.inc.5.i79.if.then.i61_crit_edge, %for.inc.4.i76.if.then.i61_crit_edge, %for.inc.3.i73.if.then.i61_crit_edge, %for.inc.2.i70.if.then.i61_crit_edge, %for.inc.1.i67.if.then.i61_crit_edge, %for.inc.i64.if.then.i61_crit_edge, %tplc_chan_get_shift.exit.if.then.i61_crit_edge
  %i.02.lcssa.i59 = phi i32 [ 0, %tplc_chan_get_shift.exit.if.then.i61_crit_edge ], [ 1, %for.inc.i64.if.then.i61_crit_edge ], [ 2, %for.inc.1.i67.if.then.i61_crit_edge ], [ 3, %for.inc.2.i70.if.then.i61_crit_edge ], [ 4, %for.inc.3.i73.if.then.i61_crit_edge ], [ 5, %for.inc.4.i76.if.then.i61_crit_edge ], [ 6, %for.inc.5.i79.if.then.i61_crit_edge ], [ 7, %for.inc.6.i82.if.then.i61_crit_edge ]
  %shift.i60 = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i59, i32 2
  %99 = ptrtoint ptr %shift.i60 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %shift.i60, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #10
  br label %tplc_chan_get_shift.exit84

for.inc.i64:                                      ; preds = %tplc_chan_get_shift.exit
  %id.1.i62 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 1, i32 3
  %102 = ptrtoint ptr %id.1.i62 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %id.1.i62, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %103)
  %cmp1.1.i63 = icmp eq i32 %103, 67108864
  br i1 %cmp1.1.i63, label %for.inc.i64.if.then.i61_crit_edge, label %for.inc.1.i67

for.inc.i64.if.then.i61_crit_edge:                ; preds = %for.inc.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i61

for.inc.1.i67:                                    ; preds = %for.inc.i64
  %id.2.i65 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 2, i32 3
  %104 = ptrtoint ptr %id.2.i65 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %id.2.i65, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %105)
  %cmp1.2.i66 = icmp eq i32 %105, 67108864
  br i1 %cmp1.2.i66, label %for.inc.1.i67.if.then.i61_crit_edge, label %for.inc.2.i70

for.inc.1.i67.if.then.i61_crit_edge:              ; preds = %for.inc.1.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i61

for.inc.2.i70:                                    ; preds = %for.inc.1.i67
  %id.3.i68 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 3, i32 3
  %106 = ptrtoint ptr %id.3.i68 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %id.3.i68, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %107)
  %cmp1.3.i69 = icmp eq i32 %107, 67108864
  br i1 %cmp1.3.i69, label %for.inc.2.i70.if.then.i61_crit_edge, label %for.inc.3.i73

for.inc.2.i70.if.then.i61_crit_edge:              ; preds = %for.inc.2.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i61

for.inc.3.i73:                                    ; preds = %for.inc.2.i70
  %id.4.i71 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 4, i32 3
  %108 = ptrtoint ptr %id.4.i71 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %id.4.i71, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %109)
  %cmp1.4.i72 = icmp eq i32 %109, 67108864
  br i1 %cmp1.4.i72, label %for.inc.3.i73.if.then.i61_crit_edge, label %for.inc.4.i76

for.inc.3.i73.if.then.i61_crit_edge:              ; preds = %for.inc.3.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i61

for.inc.4.i76:                                    ; preds = %for.inc.3.i73
  %id.5.i74 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 5, i32 3
  %110 = ptrtoint ptr %id.5.i74 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %id.5.i74, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %111)
  %cmp1.5.i75 = icmp eq i32 %111, 67108864
  br i1 %cmp1.5.i75, label %for.inc.4.i76.if.then.i61_crit_edge, label %for.inc.5.i79

for.inc.4.i76.if.then.i61_crit_edge:              ; preds = %for.inc.4.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i61

for.inc.5.i79:                                    ; preds = %for.inc.4.i76
  %id.6.i77 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 6, i32 3
  %112 = ptrtoint ptr %id.6.i77 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %id.6.i77, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %113)
  %cmp1.6.i78 = icmp eq i32 %113, 67108864
  br i1 %cmp1.6.i78, label %for.inc.5.i79.if.then.i61_crit_edge, label %for.inc.6.i82

for.inc.5.i79.if.then.i61_crit_edge:              ; preds = %for.inc.5.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i61

for.inc.6.i82:                                    ; preds = %for.inc.5.i79
  %id.7.i80 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 7, i32 7, i32 3
  %114 = ptrtoint ptr %id.7.i80 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %id.7.i80, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %115)
  %cmp1.7.i81 = icmp eq i32 %115, 67108864
  br i1 %cmp1.7.i81, label %for.inc.6.i82.if.then.i61_crit_edge, label %for.inc.6.i82.tplc_chan_get_shift.exit84_crit_edge

for.inc.6.i82.tplc_chan_get_shift.exit84_crit_edge: ; preds = %for.inc.6.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_shift.exit84

for.inc.6.i82.if.then.i61_crit_edge:              ; preds = %for.inc.6.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i61

tplc_chan_get_shift.exit84:                       ; preds = %for.inc.6.i82.tplc_chan_get_shift.exit84_crit_edge, %if.then.i61
  %retval.0.i83 = phi i32 [ %101, %if.then.i61 ], [ -22, %for.inc.6.i82.tplc_chan_get_shift.exit84_crit_edge ]
  %rshift = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 6
  %116 = ptrtoint ptr %rshift to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %retval.0.i83, ptr %rshift, align 4
  %max = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 3
  %117 = ptrtoint ptr %max to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %max, align 1
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  %max44 = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 1
  %120 = ptrtoint ptr %max44 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %max44, align 4
  %min = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 2
  %121 = ptrtoint ptr %min to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %min, align 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %122)
  %124 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %call.i, align 4
  %invert = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 5
  %125 = ptrtoint ptr %invert to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %invert, align 1
  %invert46 = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 8
  %127 = ptrtoint ptr %invert46 to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load = load i8, ptr %invert46, align 4
  %sh.diff = lshr i32 %126, 17
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %invert46, align 4
  %platform_max = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %15, i32 0, i32 4
  %128 = ptrtoint ptr %platform_max to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %platform_max, align 1
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  %platform_max47 = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 2
  %131 = ptrtoint ptr %platform_max47 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %platform_max47, align 4
  %index = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  %132 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %index, align 4
  %dobj = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 9
  %index48 = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 9, i32 1
  %134 = ptrtoint ptr %index48 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %index48, align 4
  %ops = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %135 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ops, align 4
  %ops50 = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 9, i32 3
  %137 = ptrtoint ptr %ops50 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %ops50, align 4
  %138 = ptrtoint ptr %dobj to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %dobj, align 4
  %list = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 9, i32 2
  %139 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 9, i32 2, i32 1
  %140 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %list, ptr %prev.i, align 4
  %call54 = call fastcc i32 @soc_tplg_kcontrol_bind_io(ptr noundef %15, ptr noundef nonnull %kc, ptr noundef %tplg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end61, label %if.then56

if.then56:                                        ; preds = %tplc_chan_get_shift.exit84
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev5, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 4
  %143 = ptrtoint ptr %ops.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %ops.i, align 1
  %put.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 4, i32 1
  %145 = ptrtoint ptr %put.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %put.i, align 1
  %info.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 4, i32 2
  %147 = ptrtoint ptr %info.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %info.i, align 1
  %149 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pos.i, align 4
  %151 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tplg, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %150 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %154 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %144, i32 noundef %146, i32 noundef %148, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup

if.end61:                                         ; preds = %tplc_chan_get_shift.exit84
  %155 = ptrtoint ptr %access31 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %access31, align 1
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #10
  %and.i = and i32 %157, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %and2.i = and i32 %157, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.then4.i, label %if.end61.if.end73_crit_edge

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then4.i:                                       ; preds = %if.end61
  %type.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 5, i32 1
  %158 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %159)
  %cond.i = icmp eq i32 %159, 16777216
  br i1 %cond.i, label %sw.bb.i, label %do.body.i

sw.bb.i:                                          ; preds = %if.then4.i
  %160 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev5, align 4
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %161, i32 noundef 16, i32 noundef 3520) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.i.do.end68_crit_edge, label %if.end.i.i

sw.bb.i.do.end68_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %162 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 5, i32 2
  %163 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %call.i.i.i, align 4
  %arrayidx1.i.i = getelementptr i32, ptr %call.i.i.i, i32 1
  %164 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 8, ptr %arrayidx1.i.i, align 4
  %165 = ptrtoint ptr %162 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %162, align 1
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #10
  %arrayidx2.i.i = getelementptr i32, ptr %call.i.i.i, i32 2
  %168 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %arrayidx2.i.i, align 4
  %step.i.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 5, i32 2, i32 0, i32 1
  %169 = ptrtoint ptr %step.i.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %step.i.i, align 1
  %171 = and i32 %170, -65536
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #10
  %mute.i.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 5, i32 2, i32 0, i32 2
  %173 = ptrtoint ptr %mute.i.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %mute.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool3.not.i.i = icmp eq i32 %174, 0
  %cond.i.i = select i1 %tobool3.not.i.i, i32 0, i32 65536
  %or.i.i = or i32 %cond.i.i, %172
  %arrayidx4.i.i = getelementptr i32, ptr %call.i.i.i, i32 3
  %175 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %or.i.i, ptr %arrayidx4.i.i, align 4
  %tlv.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 10
  %176 = ptrtoint ptr %tlv.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call.i.i.i, ptr %tlv.i.i, align 4
  br label %if.end73

do.body.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_create_tlv.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dmixer_create, %if.then9.i)) #10
          to label %do.end68 [label %if.then9.i], !srcloc !384

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev5, align 4
  %179 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %type.i, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_create_tlv.__UNIQUE_ID_ddebug238, ptr noundef %178, ptr noundef nonnull @.str.60, i32 noundef %180) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then9.i, %do.body.i, %sw.bb.i.do.end68_crit_edge
  %retval.0.i87102 = phi i32 [ -22, %do.body.i ], [ -12, %sw.bb.i.do.end68_crit_edge ], [ -22, %if.then9.i ]
  %181 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull @.str.44, ptr noundef %name) #13
  br label %cleanup

if.end73:                                         ; preds = %if.end.i.i, %if.end61.if.end73_crit_edge
  %183 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ops, align 4
  %tobool.not.i89 = icmp eq ptr %184, null
  br i1 %tobool.not.i89, label %if.end73.if.end84_crit_edge, label %land.lhs.true.i

if.end73.if.end84_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

land.lhs.true.i:                                  ; preds = %if.end73
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %tobool2.not.i = icmp eq ptr %186, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end84_crit_edge, label %soc_tplg_init_kcontrol.exit

land.lhs.true.i.if.end84_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

soc_tplg_init_kcontrol.exit:                      ; preds = %land.lhs.true.i
  %comp.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %187 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %comp.i, align 4
  %189 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %index, align 4
  %call.i90 = call i32 %186(ptr noundef %188, i32 noundef %190, ptr noundef nonnull %kc, ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp75 = icmp slt i32 %call.i90, 0
  br i1 %cmp75, label %do.end79, label %soc_tplg_init_kcontrol.exit.if.end84_crit_edge

soc_tplg_init_kcontrol.exit.if.end84_crit_edge:   ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end79:                                         ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  %191 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.47, ptr noundef %name) #13
  br label %cleanup

if.end84:                                         ; preds = %soc_tplg_init_kcontrol.exit.if.end84_crit_edge, %land.lhs.true.i.if.end84_crit_edge, %if.end73.if.end84_crit_edge
  %193 = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 9, i32 4
  %comp1.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %194 = ptrtoint ptr %comp1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %comp1.i, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %195, i32 0, i32 4
  %196 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %card.i, align 4
  %snd_card.i = getelementptr inbounds %struct.snd_soc_card, ptr %197, i32 0, i32 6
  %198 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %snd_card.i, align 4
  %200 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev5, align 4
  %name_prefix.i = getelementptr inbounds %struct.snd_soc_component, ptr %195, i32 0, i32 2
  %202 = ptrtoint ptr %name_prefix.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %name_prefix.i, align 4
  %204 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %name29, align 4
  %call.i.i = call ptr @snd_soc_cnew(ptr noundef nonnull %kc, ptr noundef %195, ptr noundef %205, ptr noundef %203) #10
  %206 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call.i.i, ptr %193, align 4
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i94

do.end.i.i:                                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %207 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %name29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.61, ptr noundef %208) #13
  br label %do.end91

if.end.i.i94:                                     ; preds = %if.end84
  %call2.i.i = call i32 @snd_ctl_add(ptr noundef %199, ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end7.i.i, label %if.end96

do.end7.i.i:                                      ; preds = %if.end.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  %209 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %name29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.64, ptr noundef %210, i32 noundef %call2.i.i) #13
  br label %do.end91

do.end91:                                         ; preds = %do.end7.i.i, %do.end.i.i
  %retval.0.i.i.ph = phi i32 [ %call2.i.i, %do.end7.i.i ], [ -12, %do.end.i.i ]
  %211 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %212, ptr noundef nonnull @.str.50, ptr noundef %name) #13
  br label %cleanup

if.end96:                                         ; preds = %if.end.i.i94
  %213 = ptrtoint ptr %comp1.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %comp1.i, align 4
  %dobj_list = getelementptr inbounds %struct.snd_soc_component, ptr %214, i32 0, i32 16
  %215 = ptrtoint ptr %dobj_list to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dobj_list, align 4
  %call.i.i95 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %dobj_list, ptr noundef %216) #10
  br i1 %call.i.i95, label %if.end.i.i96, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i96:                                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %list, ptr %prev1.i.i, align 4
  %218 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %216, ptr %list, align 4
  %219 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %dobj_list, ptr %prev.i, align 4
  %220 = ptrtoint ptr %dobj_list to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %list, ptr %dobj_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i96, %if.end96.cleanup_crit_edge, %do.end91, %do.end79, %do.end68, %if.then56, %if.end4.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %for.body.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call54, %if.then56 ], [ %retval.0.i87102, %do.end68 ], [ %call.i90, %do.end79 ], [ %retval.0.i.i.ph, %do.end91 ], [ 0, %if.end96.cleanup_crit_edge ], [ 0, %if.end.i.i96 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %kc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soc_tplg_denum_create(ptr noundef %tplg, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %kc = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %kc) #10
  %pos.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %0 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pos.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1764
  %2 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tplg, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 %7
  %cmp.i = icmp ugt ptr %add.ptr.i, %add.ptr2.i
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.66) #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1764, i32 %size)
  %cmp4.i = icmp ult i32 %size, 1764
  br i1 %cmp4.i, label %do.end8.i, label %for.body

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev9.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %10 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.66, i32 noundef 1, i32 noundef 1764, i32 noundef %size) #13
  br label %do.end

do.end:                                           ; preds = %do.end8.i, %do.end.i
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.67, i32 noundef 1) #13
  br label %cleanup

for.body:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pos.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 2
  %call1 = tail call i32 @strnlen(ptr noundef %name, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 44
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %dev5 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef 64, i32 noundef 3520) #10
  %cmp7 = icmp eq ptr %call.i, null
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 9
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %priv, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add = add i32 %20, 1764
  %21 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pos.i, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %add
  store ptr %add.ptr, ptr %pos.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_denum_create.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_denum_create, %if.then17)) #10
          to label %do.end24 [label %if.then17], !srcloc !384

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev5, align 4
  %items = getelementptr inbounds %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 4
  %25 = ptrtoint ptr %items to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %items, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_denum_create.__UNIQUE_ID_ddebug241, ptr noundef %24, ptr noundef nonnull @.str.69, ptr noundef %name, i32 noundef %26) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then17, %if.end9
  %27 = getelementptr inbounds i8, ptr %kc, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %name28 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 3
  %29 = ptrtoint ptr %name28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %name, ptr %name28, align 4
  %30 = ptrtoint ptr %call.i to i32
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %31 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %private_value, align 4
  %32 = ptrtoint ptr %kc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %kc, align 4
  %access = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 3
  %33 = ptrtoint ptr %access to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %access, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %access30 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 5
  %36 = ptrtoint ptr %access30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %access30, align 4
  %channel = getelementptr inbounds %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3
  %id.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 0, i32 3
  %37 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %38)
  %cmp1.i = icmp eq i32 %38, 50331648
  br i1 %cmp1.i, label %do.end24.if.then.i_crit_edge, label %for.inc.i

do.end24.if.then.i_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %do.end24.if.then.i_crit_edge
  %i.02.lcssa.i = phi i32 [ 0, %do.end24.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ]
  %reg.i = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i, i32 1
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %reg.i, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  br label %tplc_chan_get_reg.exit

for.inc.i:                                        ; preds = %do.end24
  %id.1.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 1, i32 3
  %42 = ptrtoint ptr %id.1.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %id.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %43)
  %cmp1.1.i = icmp eq i32 %43, 50331648
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %id.2.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 2, i32 3
  %44 = ptrtoint ptr %id.2.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %id.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %45)
  %cmp1.2.i = icmp eq i32 %45, 50331648
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %id.3.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 3, i32 3
  %46 = ptrtoint ptr %id.3.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %id.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %47)
  %cmp1.3.i = icmp eq i32 %47, 50331648
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %id.4.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 4, i32 3
  %48 = ptrtoint ptr %id.4.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %id.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %49)
  %cmp1.4.i = icmp eq i32 %49, 50331648
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %id.5.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 5, i32 3
  %50 = ptrtoint ptr %id.5.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %id.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %51)
  %cmp1.5.i = icmp eq i32 %51, 50331648
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %id.6.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 6, i32 3
  %52 = ptrtoint ptr %id.6.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %id.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %53)
  %cmp1.6.i = icmp eq i32 %53, 50331648
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %id.7.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 7, i32 3
  %54 = ptrtoint ptr %id.7.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %id.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %55)
  %cmp1.7.i = icmp eq i32 %55, 50331648
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge

for.inc.6.i.tplc_chan_get_reg.exit_crit_edge:     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_reg.exit

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

tplc_chan_get_reg.exit:                           ; preds = %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge, %if.then.i
  %retval.0.i2 = phi i32 [ %41, %if.then.i ], [ -22, %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge ]
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %retval.0.i2, ptr %call.i, align 4
  %57 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %58)
  %cmp1.i4 = icmp eq i32 %58, 50331648
  br i1 %cmp1.i4, label %tplc_chan_get_reg.exit.if.then.i6_crit_edge, label %for.inc.i9

tplc_chan_get_reg.exit.if.then.i6_crit_edge:      ; preds = %tplc_chan_get_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i6

if.then.i6:                                       ; preds = %for.inc.6.i27.if.then.i6_crit_edge, %for.inc.5.i24.if.then.i6_crit_edge, %for.inc.4.i21.if.then.i6_crit_edge, %for.inc.3.i18.if.then.i6_crit_edge, %for.inc.2.i15.if.then.i6_crit_edge, %for.inc.1.i12.if.then.i6_crit_edge, %for.inc.i9.if.then.i6_crit_edge, %tplc_chan_get_reg.exit.if.then.i6_crit_edge
  %i.02.lcssa.i5 = phi i32 [ 0, %tplc_chan_get_reg.exit.if.then.i6_crit_edge ], [ 1, %for.inc.i9.if.then.i6_crit_edge ], [ 2, %for.inc.1.i12.if.then.i6_crit_edge ], [ 3, %for.inc.2.i15.if.then.i6_crit_edge ], [ 4, %for.inc.3.i18.if.then.i6_crit_edge ], [ 5, %for.inc.4.i21.if.then.i6_crit_edge ], [ 6, %for.inc.5.i24.if.then.i6_crit_edge ], [ 7, %for.inc.6.i27.if.then.i6_crit_edge ]
  %shift.i = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i5, i32 2
  %59 = ptrtoint ptr %shift.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %shift.i, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  br label %tplc_chan_get_shift.exit

for.inc.i9:                                       ; preds = %tplc_chan_get_reg.exit
  %id.1.i7 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 1, i32 3
  %62 = ptrtoint ptr %id.1.i7 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %id.1.i7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %63)
  %cmp1.1.i8 = icmp eq i32 %63, 50331648
  br i1 %cmp1.1.i8, label %for.inc.i9.if.then.i6_crit_edge, label %for.inc.1.i12

for.inc.i9.if.then.i6_crit_edge:                  ; preds = %for.inc.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i6

for.inc.1.i12:                                    ; preds = %for.inc.i9
  %id.2.i10 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 2, i32 3
  %64 = ptrtoint ptr %id.2.i10 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %id.2.i10, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %65)
  %cmp1.2.i11 = icmp eq i32 %65, 50331648
  br i1 %cmp1.2.i11, label %for.inc.1.i12.if.then.i6_crit_edge, label %for.inc.2.i15

for.inc.1.i12.if.then.i6_crit_edge:               ; preds = %for.inc.1.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i6

for.inc.2.i15:                                    ; preds = %for.inc.1.i12
  %id.3.i13 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 3, i32 3
  %66 = ptrtoint ptr %id.3.i13 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %id.3.i13, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %67)
  %cmp1.3.i14 = icmp eq i32 %67, 50331648
  br i1 %cmp1.3.i14, label %for.inc.2.i15.if.then.i6_crit_edge, label %for.inc.3.i18

for.inc.2.i15.if.then.i6_crit_edge:               ; preds = %for.inc.2.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i6

for.inc.3.i18:                                    ; preds = %for.inc.2.i15
  %id.4.i16 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 4, i32 3
  %68 = ptrtoint ptr %id.4.i16 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %id.4.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %69)
  %cmp1.4.i17 = icmp eq i32 %69, 50331648
  br i1 %cmp1.4.i17, label %for.inc.3.i18.if.then.i6_crit_edge, label %for.inc.4.i21

for.inc.3.i18.if.then.i6_crit_edge:               ; preds = %for.inc.3.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i6

for.inc.4.i21:                                    ; preds = %for.inc.3.i18
  %id.5.i19 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 5, i32 3
  %70 = ptrtoint ptr %id.5.i19 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %id.5.i19, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %71)
  %cmp1.5.i20 = icmp eq i32 %71, 50331648
  br i1 %cmp1.5.i20, label %for.inc.4.i21.if.then.i6_crit_edge, label %for.inc.5.i24

for.inc.4.i21.if.then.i6_crit_edge:               ; preds = %for.inc.4.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i6

for.inc.5.i24:                                    ; preds = %for.inc.4.i21
  %id.6.i22 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 6, i32 3
  %72 = ptrtoint ptr %id.6.i22 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %id.6.i22, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %73)
  %cmp1.6.i23 = icmp eq i32 %73, 50331648
  br i1 %cmp1.6.i23, label %for.inc.5.i24.if.then.i6_crit_edge, label %for.inc.6.i27

for.inc.5.i24.if.then.i6_crit_edge:               ; preds = %for.inc.5.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i6

for.inc.6.i27:                                    ; preds = %for.inc.5.i24
  %id.7.i25 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 7, i32 3
  %74 = ptrtoint ptr %id.7.i25 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %id.7.i25, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %75)
  %cmp1.7.i26 = icmp eq i32 %75, 50331648
  br i1 %cmp1.7.i26, label %for.inc.6.i27.if.then.i6_crit_edge, label %for.inc.6.i27.tplc_chan_get_shift.exit_crit_edge

for.inc.6.i27.tplc_chan_get_shift.exit_crit_edge: ; preds = %for.inc.6.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_shift.exit

for.inc.6.i27.if.then.i6_crit_edge:               ; preds = %for.inc.6.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i6

tplc_chan_get_shift.exit:                         ; preds = %for.inc.6.i27.tplc_chan_get_shift.exit_crit_edge, %if.then.i6
  %retval.0.i28 = phi i32 [ %61, %if.then.i6 ], [ -22, %for.inc.6.i27.tplc_chan_get_shift.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i28 to i8
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 1
  %76 = ptrtoint ptr %shift_l to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv, ptr %shift_l, align 4
  %77 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %78)
  %cmp1.i30 = icmp eq i32 %78, 50331648
  br i1 %cmp1.i30, label %tplc_chan_get_shift.exit.if.then.i33_crit_edge, label %for.inc.i36

tplc_chan_get_shift.exit.if.then.i33_crit_edge:   ; preds = %tplc_chan_get_shift.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i33

if.then.i33:                                      ; preds = %for.inc.6.i54.if.then.i33_crit_edge, %for.inc.5.i51.if.then.i33_crit_edge, %for.inc.4.i48.if.then.i33_crit_edge, %for.inc.3.i45.if.then.i33_crit_edge, %for.inc.2.i42.if.then.i33_crit_edge, %for.inc.1.i39.if.then.i33_crit_edge, %for.inc.i36.if.then.i33_crit_edge, %tplc_chan_get_shift.exit.if.then.i33_crit_edge
  %i.02.lcssa.i31 = phi i32 [ 0, %tplc_chan_get_shift.exit.if.then.i33_crit_edge ], [ 1, %for.inc.i36.if.then.i33_crit_edge ], [ 2, %for.inc.1.i39.if.then.i33_crit_edge ], [ 3, %for.inc.2.i42.if.then.i33_crit_edge ], [ 4, %for.inc.3.i45.if.then.i33_crit_edge ], [ 5, %for.inc.4.i48.if.then.i33_crit_edge ], [ 6, %for.inc.5.i51.if.then.i33_crit_edge ], [ 7, %for.inc.6.i54.if.then.i33_crit_edge ]
  %shift.i32 = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i31, i32 2
  %79 = ptrtoint ptr %shift.i32 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %shift.i32, align 1
  %81 = lshr i32 %80, 24
  %phi.cast = trunc i32 %81 to i8
  br label %tplc_chan_get_shift.exit56

for.inc.i36:                                      ; preds = %tplc_chan_get_shift.exit
  %id.1.i34 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 1, i32 3
  %82 = ptrtoint ptr %id.1.i34 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %id.1.i34, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %83)
  %cmp1.1.i35 = icmp eq i32 %83, 50331648
  br i1 %cmp1.1.i35, label %for.inc.i36.if.then.i33_crit_edge, label %for.inc.1.i39

for.inc.i36.if.then.i33_crit_edge:                ; preds = %for.inc.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i33

for.inc.1.i39:                                    ; preds = %for.inc.i36
  %id.2.i37 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 2, i32 3
  %84 = ptrtoint ptr %id.2.i37 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %id.2.i37, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %85)
  %cmp1.2.i38 = icmp eq i32 %85, 50331648
  br i1 %cmp1.2.i38, label %for.inc.1.i39.if.then.i33_crit_edge, label %for.inc.2.i42

for.inc.1.i39.if.then.i33_crit_edge:              ; preds = %for.inc.1.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i33

for.inc.2.i42:                                    ; preds = %for.inc.1.i39
  %id.3.i40 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 3, i32 3
  %86 = ptrtoint ptr %id.3.i40 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %id.3.i40, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %87)
  %cmp1.3.i41 = icmp eq i32 %87, 50331648
  br i1 %cmp1.3.i41, label %for.inc.2.i42.if.then.i33_crit_edge, label %for.inc.3.i45

for.inc.2.i42.if.then.i33_crit_edge:              ; preds = %for.inc.2.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i33

for.inc.3.i45:                                    ; preds = %for.inc.2.i42
  %id.4.i43 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 4, i32 3
  %88 = ptrtoint ptr %id.4.i43 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %id.4.i43, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %89)
  %cmp1.4.i44 = icmp eq i32 %89, 50331648
  br i1 %cmp1.4.i44, label %for.inc.3.i45.if.then.i33_crit_edge, label %for.inc.4.i48

for.inc.3.i45.if.then.i33_crit_edge:              ; preds = %for.inc.3.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i33

for.inc.4.i48:                                    ; preds = %for.inc.3.i45
  %id.5.i46 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 5, i32 3
  %90 = ptrtoint ptr %id.5.i46 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %id.5.i46, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %91)
  %cmp1.5.i47 = icmp eq i32 %91, 50331648
  br i1 %cmp1.5.i47, label %for.inc.4.i48.if.then.i33_crit_edge, label %for.inc.5.i51

for.inc.4.i48.if.then.i33_crit_edge:              ; preds = %for.inc.4.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i33

for.inc.5.i51:                                    ; preds = %for.inc.4.i48
  %id.6.i49 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 6, i32 3
  %92 = ptrtoint ptr %id.6.i49 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %id.6.i49, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %93)
  %cmp1.6.i50 = icmp eq i32 %93, 50331648
  br i1 %cmp1.6.i50, label %for.inc.5.i51.if.then.i33_crit_edge, label %for.inc.6.i54

for.inc.5.i51.if.then.i33_crit_edge:              ; preds = %for.inc.5.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i33

for.inc.6.i54:                                    ; preds = %for.inc.5.i51
  %id.7.i52 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 3, i32 7, i32 3
  %94 = ptrtoint ptr %id.7.i52 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %id.7.i52, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %95)
  %cmp1.7.i53 = icmp eq i32 %95, 50331648
  br i1 %cmp1.7.i53, label %for.inc.6.i54.if.then.i33_crit_edge, label %for.inc.6.i54.tplc_chan_get_shift.exit56_crit_edge

for.inc.6.i54.tplc_chan_get_shift.exit56_crit_edge: ; preds = %for.inc.6.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_shift.exit56

for.inc.6.i54.if.then.i33_crit_edge:              ; preds = %for.inc.6.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i33

tplc_chan_get_shift.exit56:                       ; preds = %for.inc.6.i54.tplc_chan_get_shift.exit56_crit_edge, %if.then.i33
  %retval.0.i55 = phi i8 [ %phi.cast, %if.then.i33 ], [ -22, %for.inc.6.i54.tplc_chan_get_shift.exit56_crit_edge ]
  %shift_r = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 2
  %96 = ptrtoint ptr %shift_r to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %retval.0.i55, ptr %shift_r, align 1
  %mask = getelementptr inbounds %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 5
  %97 = ptrtoint ptr %mask to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %mask, align 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %mask40 = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 4
  %100 = ptrtoint ptr %mask40 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %mask40, align 4
  %index = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  %101 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %index, align 4
  %dobj = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 8
  %index41 = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 8, i32 1
  %103 = ptrtoint ptr %index41 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %index41, align 4
  %104 = ptrtoint ptr %dobj to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 3, ptr %dobj, align 4
  %ops = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %105 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops, align 4
  %ops44 = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 8, i32 3
  %107 = ptrtoint ptr %ops44 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %ops44, align 4
  %list = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 8, i32 2
  %108 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 8, i32 2, i32 1
  %109 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %list, ptr %prev.i, align 4
  %info = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 4, i32 2
  %110 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %info, align 1
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %112, label %sw.default [
    i32 67, label %tplc_chan_get_shift.exit56.sw.bb_crit_edge
    i32 6, label %tplc_chan_get_shift.exit56.sw.bb_crit_edge80
    i32 4, label %tplc_chan_get_shift.exit56.sw.bb60_crit_edge
    i32 65, label %tplc_chan_get_shift.exit56.sw.bb60_crit_edge81
    i32 66, label %tplc_chan_get_shift.exit56.sw.bb60_crit_edge82
  ]

tplc_chan_get_shift.exit56.sw.bb60_crit_edge82:   ; preds = %tplc_chan_get_shift.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb60

tplc_chan_get_shift.exit56.sw.bb60_crit_edge81:   ; preds = %tplc_chan_get_shift.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb60

tplc_chan_get_shift.exit56.sw.bb60_crit_edge:     ; preds = %tplc_chan_get_shift.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb60

tplc_chan_get_shift.exit56.sw.bb_crit_edge80:     ; preds = %tplc_chan_get_shift.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

tplc_chan_get_shift.exit56.sw.bb_crit_edge:       ; preds = %tplc_chan_get_shift.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %tplc_chan_get_shift.exit56.sw.bb_crit_edge, %tplc_chan_get_shift.exit56.sw.bb_crit_edge80
  %items.i = getelementptr inbounds %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 4
  %114 = ptrtoint ptr %items.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %items.i, align 1
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %116)
  %cmp.i57 = icmp ugt i32 %116, 16
  br i1 %cmp.i57, label %sw.bb.do.end54_crit_edge, label %devm_kcalloc.exit.i

sw.bb.do.end54_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

devm_kcalloc.exit.i:                              ; preds = %sw.bb
  %117 = shl nuw nsw i32 %116, 2
  %118 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev5, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %119, i32 noundef %117, i32 noundef 3520) #10
  %dvalues.i = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 8, i32 4, i32 0, i32 2
  %120 = ptrtoint ptr %dvalues.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call5.i.i.i, ptr %dvalues.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.do.end54_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.do.end54_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %121 = ptrtoint ptr %items.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %items.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp722.not.i = icmp eq i32 %122, 0
  br i1 %cmp722.not.i, label %for.cond.preheader.i.sw.bb60_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.sw.bb60_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb60

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %15, i32 0, i32 8, i32 %i.023.i
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %arrayidx.i, align 1
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #10
  %126 = ptrtoint ptr %dvalues.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dvalues.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %127, i32 %i.023.i
  %128 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %125, ptr %arrayidx10.i, align 4
  %inc.i = add nuw i32 %i.023.i, 1
  %129 = ptrtoint ptr %items.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %items.i, align 1
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #10
  %cmp7.i = icmp ult i32 %inc.i, %131
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sw.bb60_crit_edge

for.body.i.sw.bb60_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb60

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end54:                                         ; preds = %devm_kcalloc.exit.i.do.end54_crit_edge, %sw.bb.do.end54_crit_edge
  %retval.0.i59.ph = phi i32 [ -12, %devm_kcalloc.exit.i.do.end54_crit_edge ], [ -22, %sw.bb.do.end54_crit_edge ]
  %132 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.71, ptr noundef %name) #13
  br label %cleanup

sw.bb60:                                          ; preds = %for.body.i.sw.bb60_crit_edge, %for.cond.preheader.i.sw.bb60_crit_edge, %tplc_chan_get_shift.exit56.sw.bb60_crit_edge, %tplc_chan_get_shift.exit56.sw.bb60_crit_edge81, %tplc_chan_get_shift.exit56.sw.bb60_crit_edge82
  %call61 = tail call fastcc i32 @soc_tplg_denum_create_texts(ptr noundef %tplg, ptr noundef nonnull %call.i, ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.end67, label %sw.epilog

do.end67:                                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.74, ptr noundef %name) #13
  br label %cleanup

sw.default:                                       ; preds = %tplc_chan_get_shift.exit56
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.77, i32 noundef %111, ptr noundef %name) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb60
  %call84 = call fastcc i32 @soc_tplg_kcontrol_bind_io(ptr noundef %15, ptr noundef nonnull %kc, ptr noundef %tplg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end91, label %if.then86

if.then86:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev5, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 4
  %140 = ptrtoint ptr %ops.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %ops.i, align 1
  %put.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 4, i32 1
  %142 = ptrtoint ptr %put.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %put.i, align 1
  %144 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %info, align 1
  %146 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pos.i, align 4
  %148 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %tplg, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %147 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %151 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %141, i32 noundef %143, i32 noundef %145, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup

if.end91:                                         ; preds = %sw.epilog
  %152 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops, align 4
  %tobool.not.i62 = icmp eq ptr %153, null
  br i1 %tobool.not.i62, label %if.end91.if.end103_crit_edge, label %land.lhs.true.i

if.end91.if.end103_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

land.lhs.true.i:                                  ; preds = %if.end91
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %tobool2.not.i = icmp eq ptr %155, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end103_crit_edge, label %soc_tplg_init_kcontrol.exit

land.lhs.true.i.if.end103_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

soc_tplg_init_kcontrol.exit:                      ; preds = %land.lhs.true.i
  %comp.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %156 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %comp.i, align 4
  %158 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %index, align 4
  %call.i63 = call i32 %155(ptr noundef %157, i32 noundef %159, ptr noundef nonnull %kc, ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp93 = icmp slt i32 %call.i63, 0
  br i1 %cmp93, label %do.end98, label %soc_tplg_init_kcontrol.exit.if.end103_crit_edge

soc_tplg_init_kcontrol.exit.if.end103_crit_edge:  ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

do.end98:                                         ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.47, ptr noundef %name) #13
  br label %cleanup

if.end103:                                        ; preds = %soc_tplg_init_kcontrol.exit.if.end103_crit_edge, %land.lhs.true.i.if.end103_crit_edge, %if.end91.if.end103_crit_edge
  %162 = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 8, i32 4
  %comp1.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %163 = ptrtoint ptr %comp1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %comp1.i, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %card.i, align 4
  %snd_card.i = getelementptr inbounds %struct.snd_soc_card, ptr %166, i32 0, i32 6
  %167 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %snd_card.i, align 4
  %169 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev5, align 4
  %name_prefix.i = getelementptr inbounds %struct.snd_soc_component, ptr %164, i32 0, i32 2
  %171 = ptrtoint ptr %name_prefix.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %name_prefix.i, align 4
  %173 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %name28, align 4
  %call.i.i = call ptr @snd_soc_cnew(ptr noundef nonnull %kc, ptr noundef %164, ptr noundef %174, ptr noundef %172) #10
  %175 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call.i.i, ptr %162, align 4
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %176 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.61, ptr noundef %177) #13
  br label %do.end111

if.end.i.i:                                       ; preds = %if.end103
  %call2.i.i = call i32 @snd_ctl_add(ptr noundef %168, ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end7.i.i, label %if.end116

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %178 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %name28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.64, ptr noundef %179, i32 noundef %call2.i.i) #13
  br label %do.end111

do.end111:                                        ; preds = %do.end7.i.i, %do.end.i.i
  %retval.0.i.i.ph = phi i32 [ %call2.i.i, %do.end7.i.i ], [ -12, %do.end.i.i ]
  %180 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.82, ptr noundef %name) #13
  br label %cleanup

if.end116:                                        ; preds = %if.end.i.i
  %182 = ptrtoint ptr %comp1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %comp1.i, align 4
  %dobj_list = getelementptr inbounds %struct.snd_soc_component, ptr %183, i32 0, i32 16
  %184 = ptrtoint ptr %dobj_list to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dobj_list, align 4
  %call.i.i67 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %dobj_list, ptr noundef %185) #10
  br i1 %call.i.i67, label %if.end.i.i68, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i68:                                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %list, ptr %prev1.i.i, align 4
  %187 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %185, ptr %list, align 4
  %188 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %dobj_list, ptr %prev.i, align 4
  %189 = ptrtoint ptr %dobj_list to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %list, ptr %dobj_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i68, %if.end116.cleanup_crit_edge, %do.end111, %do.end98, %if.then86, %sw.default, %do.end67, %do.end54, %if.end4.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %for.body.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ -22, %sw.default ], [ %call61, %do.end67 ], [ %call84, %if.then86 ], [ %call.i63, %do.end98 ], [ %retval.0.i.i.ph, %do.end111 ], [ %retval.0.i59.ph, %do.end54 ], [ 0, %if.end116.cleanup_crit_edge ], [ 0, %if.end.i.i68 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %kc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soc_tplg_dbytes_create(ptr nocapture noundef %tplg, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %kc = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %kc) #10
  %pos.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %0 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pos.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 240
  %2 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tplg, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 %7
  %cmp.i = icmp ugt ptr %add.ptr.i, %add.ptr2.i
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.84) #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %size)
  %cmp4.i = icmp ult i32 %size, 240
  br i1 %cmp4.i, label %do.end8.i, label %for.body

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev9.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %10 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.84, i32 noundef 1, i32 noundef 240, i32 noundef %size) #13
  br label %do.end

do.end:                                           ; preds = %do.end8.i, %do.end.i
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.85, i32 noundef 1) #13
  br label %cleanup

for.body:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pos.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 2
  %call1 = tail call i32 @strnlen(ptr noundef %name, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 44
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %dev5 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef 48, i32 noundef 3520) #10
  %cmp7 = icmp eq ptr %call.i, null
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, ptr %15, i32 0, i32 7
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %priv, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add = add i32 %20, 240
  %21 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pos.i, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %add
  store ptr %add.ptr, ptr %pos.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_dbytes_create.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dbytes_create, %if.then17)) #10
          to label %do.end25 [label %if.then17], !srcloc !384

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev5, align 4
  %access = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 3
  %25 = ptrtoint ptr %access to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %access, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_dbytes_create.__UNIQUE_ID_ddebug239, ptr noundef %24, ptr noundef nonnull @.str.87, ptr noundef %name, i32 noundef %26) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then17, %if.end9
  %27 = getelementptr inbounds i8, ptr %kc, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %name29 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 3
  %29 = ptrtoint ptr %name29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %name, ptr %name29, align 4
  %30 = ptrtoint ptr %call.i to i32
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %31 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %private_value, align 4
  %32 = ptrtoint ptr %kc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %kc, align 4
  %access31 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 3
  %33 = ptrtoint ptr %access31 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %access31, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %access32 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 5
  %36 = ptrtoint ptr %access32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %access32, align 4
  %max = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, ptr %15, i32 0, i32 2
  %37 = ptrtoint ptr %max to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %max, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %call.i, align 4
  %dobj = getelementptr inbounds %struct.soc_bytes_ext, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %dobj to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %dobj, align 4
  %ops = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %ops35 = getelementptr inbounds %struct.soc_bytes_ext, ptr %call.i, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %ops35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %ops35, align 4
  %list = getelementptr inbounds %struct.soc_bytes_ext, ptr %call.i, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.soc_bytes_ext, ptr %call.i, i32 0, i32 1, i32 2, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %list, ptr %prev.i, align 4
  %call38 = call fastcc i32 @soc_tplg_kcontrol_bind_io(ptr noundef %15, ptr noundef nonnull %kc, ptr noundef %tplg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %if.then40

if.then40:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev5, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 4
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %ops.i, align 1
  %put.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %put.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %put.i, align 1
  %info.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %15, i32 0, i32 4, i32 2
  %53 = ptrtoint ptr %info.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %info.i, align 1
  %55 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pos.i, align 4
  %57 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tplg, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup

if.end45:                                         ; preds = %do.end25
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %if.end45.if.end56_crit_edge, label %land.lhs.true.i

if.end45.if.end56_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

land.lhs.true.i:                                  ; preds = %if.end45
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool2.not.i = icmp eq ptr %64, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end56_crit_edge, label %soc_tplg_init_kcontrol.exit

land.lhs.true.i.if.end56_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

soc_tplg_init_kcontrol.exit:                      ; preds = %land.lhs.true.i
  %comp.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %65 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %comp.i, align 4
  %index.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  %67 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index.i, align 4
  %call.i4 = call i32 %64(ptr noundef %66, i32 noundef %68, ptr noundef nonnull %kc, ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp47 = icmp slt i32 %call.i4, 0
  br i1 %cmp47, label %do.end51, label %soc_tplg_init_kcontrol.exit.if.end56_crit_edge

soc_tplg_init_kcontrol.exit.if.end56_crit_edge:   ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

do.end51:                                         ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.47, ptr noundef %name) #13
  br label %cleanup

if.end56:                                         ; preds = %soc_tplg_init_kcontrol.exit.if.end56_crit_edge, %land.lhs.true.i.if.end56_crit_edge, %if.end45.if.end56_crit_edge
  %71 = getelementptr inbounds %struct.soc_bytes_ext, ptr %call.i, i32 0, i32 1, i32 4
  %comp1.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %72 = ptrtoint ptr %comp1.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %comp1.i, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card.i, align 4
  %snd_card.i = getelementptr inbounds %struct.snd_soc_card, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %snd_card.i, align 4
  %78 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev5, align 4
  %name_prefix.i = getelementptr inbounds %struct.snd_soc_component, ptr %73, i32 0, i32 2
  %80 = ptrtoint ptr %name_prefix.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name_prefix.i, align 4
  %82 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name29, align 4
  %call.i.i = call ptr @snd_soc_cnew(ptr noundef nonnull %kc, ptr noundef %73, ptr noundef %83, ptr noundef %81) #10
  %84 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i.i, ptr %71, align 4
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.61, ptr noundef %86) #13
  br label %do.end63

if.end.i.i:                                       ; preds = %if.end56
  %call2.i.i = call i32 @snd_ctl_add(ptr noundef %77, ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end7.i.i, label %if.end68

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.64, ptr noundef %88, i32 noundef %call2.i.i) #13
  br label %do.end63

do.end63:                                         ; preds = %do.end7.i.i, %do.end.i.i
  %retval.0.i.i.ph = phi i32 [ %call2.i.i, %do.end7.i.i ], [ -12, %do.end.i.i ]
  %89 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.50, ptr noundef %name) #13
  br label %cleanup

if.end68:                                         ; preds = %if.end.i.i
  %91 = ptrtoint ptr %comp1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %comp1.i, align 4
  %dobj_list = getelementptr inbounds %struct.snd_soc_component, ptr %92, i32 0, i32 16
  %93 = ptrtoint ptr %dobj_list to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dobj_list, align 4
  %call.i.i7 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %dobj_list, ptr noundef %94) #10
  br i1 %call.i.i7, label %if.end.i.i8, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i8:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %list, ptr %prev1.i.i, align 4
  %96 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %94, ptr %list, align 4
  %97 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %dobj_list, ptr %prev.i, align 4
  %98 = ptrtoint ptr %dobj_list to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %list, ptr %dobj_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i8, %if.end68.cleanup_crit_edge, %do.end63, %do.end51, %if.then40, %if.end4.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %for.body.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call38, %if.then40 ], [ %call.i4, %do.end51 ], [ %retval.0.i.i.ph, %do.end63 ], [ 0, %if.end.i.i8 ], [ 0, %if.end68.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %kc) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soc_tplg_kcontrol_bind_io(ptr nocapture noundef readonly %hdr, ptr nocapture noundef %k, ptr nocapture noundef readonly %tplg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 4
  %info = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %1)
  %cmp = icmp eq i32 %1, 83886080
  br i1 %cmp, label %land.lhs.true, label %entry.if.end53_crit_edge

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %k, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end53_crit_edge, label %land.lhs.true2

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true2:                                   ; preds = %land.lhs.true
  %access = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 5
  %4 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %access, align 4
  %and3 = and i32 %5, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %and7 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = or i1 %tobool4.not, %tobool8.not
  br i1 %or.cond, label %land.lhs.true2.if.end53_crit_edge, label %if.then

land.lhs.true2.if.end53_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then:                                          ; preds = %land.lhs.true2
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 11
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %info9 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 7
  %9 = ptrtoint ptr %info9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @snd_soc_bytes_info_ext, ptr %info9, align 4
  %tlv = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 10
  %10 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @snd_soc_bytes_tlv_callback, ptr %tlv, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %12)
  %cmp10 = icmp sgt i32 %12, 512
  br i1 %cmp10, label %if.then11, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %5, 16777216
  %13 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %access, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then.if.end_crit_edge
  %bytes_ext_ops = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 9
  %14 = ptrtoint ptr %bytes_ext_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bytes_ext_ops, align 4
  %bytes_ext_ops_count = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 10
  %16 = ptrtoint ptr %bytes_ext_ops_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes_ext_ops_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp13248 = icmp sgt i32 %17, 0
  br i1 %cmp13248, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %put = getelementptr inbounds %struct.soc_bytes_ext, ptr %8, i32 0, i32 3
  %put17 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, ptr %hdr, i32 0, i32 6, i32 1
  %get = getelementptr inbounds %struct.soc_bytes_ext, ptr %8, i32 0, i32 2
  %ext_ops28 = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, ptr %hdr, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0249 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %put, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %land.lhs.true15, label %for.body.if.end23_crit_edge

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true15:                                  ; preds = %for.body
  %arrayidx = getelementptr %struct.snd_soc_tplg_bytes_ext_ops, ptr %15, i32 %i.0249
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %put17 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %put17, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %24)
  %cmp18 = icmp eq i32 %21, %24
  br i1 %cmp18, label %if.then19, label %land.lhs.true15.if.end23_crit_edge

land.lhs.true15.if.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  %put21 = getelementptr %struct.snd_soc_tplg_bytes_ext_ops, ptr %15, i32 %i.0249, i32 2
  %25 = ptrtoint ptr %put21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %put21, align 4
  %27 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %put, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true15.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %28 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get, align 4
  %tobool24.not = icmp eq ptr %29, null
  br i1 %tobool24.not, label %land.lhs.true25, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true25:                                  ; preds = %if.end23
  %arrayidx26 = getelementptr %struct.snd_soc_tplg_bytes_ext_ops, ptr %15, i32 %i.0249
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx26, align 4
  %32 = ptrtoint ptr %ext_ops28 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %ext_ops28, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %34)
  %cmp30 = icmp eq i32 %31, %34
  br i1 %cmp30, label %if.then31, label %land.lhs.true25.for.inc_crit_edge

land.lhs.true25.for.inc_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then31:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  %get33 = getelementptr %struct.snd_soc_tplg_bytes_ext_ops, ptr %15, i32 %i.0249, i32 1
  %35 = ptrtoint ptr %get33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get33, align 4
  %37 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %get, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %land.lhs.true25.for.inc_crit_edge, %if.end23.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0249, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %38 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %access, align 4
  %and37 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %for.end.if.end43_crit_edge, label %land.lhs.true39

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true39:                                  ; preds = %for.end
  %get40 = getelementptr inbounds %struct.soc_bytes_ext, ptr %8, i32 0, i32 2
  %40 = ptrtoint ptr %get40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get40, align 4
  %tobool41.not = icmp eq ptr %41, null
  br i1 %tobool41.not, label %land.lhs.true39.cleanup164_crit_edge, label %land.lhs.true39.if.end43_crit_edge

land.lhs.true39.if.end43_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true39.cleanup164_crit_edge:             ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup164

if.end43:                                         ; preds = %land.lhs.true39.if.end43_crit_edge, %for.end.if.end43_crit_edge
  %and45 = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end51_crit_edge, label %land.lhs.true47

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

land.lhs.true47:                                  ; preds = %if.end43
  %put48 = getelementptr inbounds %struct.soc_bytes_ext, ptr %8, i32 0, i32 3
  %42 = ptrtoint ptr %put48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %put48, align 4
  %tobool49.not = icmp eq ptr %43, null
  br i1 %tobool49.not, label %land.lhs.true47.cleanup164_crit_edge, label %land.lhs.true47.if.end51_crit_edge

land.lhs.true47.if.end51_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

land.lhs.true47.cleanup164_crit_edge:             ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup164

if.end51:                                         ; preds = %land.lhs.true47.if.end51_crit_edge, %if.end43.if.end51_crit_edge
  br label %cleanup164

if.end53:                                         ; preds = %land.lhs.true2.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %entry.if.end53_crit_edge
  %io_ops = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 7
  %44 = ptrtoint ptr %io_ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_ops, align 4
  %io_ops_count = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 8
  %46 = ptrtoint ptr %io_ops_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %io_ops_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp55252 = icmp sgt i32 %47, 0
  br i1 %cmp55252, label %for.body56.lr.ph, label %if.end53.for.end98_crit_edge

if.end53.for.end98_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end98

for.body56.lr.ph:                                 ; preds = %if.end53
  %put57 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 9
  %put63 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %get70 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 8
  %info83 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 7
  br label %for.body56

for.body56:                                       ; preds = %for.inc96.for.body56_crit_edge, %for.body56.lr.ph
  %i.1253 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc97, %for.inc96.for.body56_crit_edge ]
  %48 = ptrtoint ptr %put57 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %put57, align 4
  %cmp58 = icmp eq ptr %49, null
  br i1 %cmp58, label %land.lhs.true59, label %for.body56.if.end69_crit_edge

for.body56.if.end69_crit_edge:                    ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

land.lhs.true59:                                  ; preds = %for.body56
  %arrayidx60 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr %45, i32 %i.1253
  %50 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx60, align 4
  %52 = ptrtoint ptr %put63 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %put63, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %54)
  %cmp64 = icmp eq i32 %51, %54
  br i1 %cmp64, label %if.then65, label %land.lhs.true59.if.end69_crit_edge

land.lhs.true59.if.end69_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then65:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #12
  %put67 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr %45, i32 %i.1253, i32 2
  %55 = ptrtoint ptr %put67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %put67, align 4
  %57 = ptrtoint ptr %put57 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %put57, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %land.lhs.true59.if.end69_crit_edge, %for.body56.if.end69_crit_edge
  %58 = ptrtoint ptr %get70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get70, align 4
  %cmp71 = icmp eq ptr %59, null
  br i1 %cmp71, label %land.lhs.true72, label %if.end69.if.end82_crit_edge

if.end69.if.end82_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

land.lhs.true72:                                  ; preds = %if.end69
  %arrayidx73 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr %45, i32 %i.1253
  %60 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx73, align 4
  %62 = ptrtoint ptr %ops1 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %ops1, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %64)
  %cmp77 = icmp eq i32 %61, %64
  br i1 %cmp77, label %if.then78, label %land.lhs.true72.if.end82_crit_edge

land.lhs.true72.if.end82_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then78:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  %get80 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr %45, i32 %i.1253, i32 1
  %65 = ptrtoint ptr %get80 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %get80, align 4
  %67 = ptrtoint ptr %get70 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %get70, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %land.lhs.true72.if.end82_crit_edge, %if.end69.if.end82_crit_edge
  %68 = ptrtoint ptr %info83 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %info83, align 4
  %cmp84 = icmp eq ptr %69, null
  br i1 %cmp84, label %land.lhs.true85, label %if.end82.for.inc96_crit_edge

if.end82.for.inc96_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc96

land.lhs.true85:                                  ; preds = %if.end82
  %arrayidx86 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr %45, i32 %i.1253
  %70 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx86, align 4
  %72 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %info, align 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %74)
  %cmp90 = icmp eq i32 %71, %74
  br i1 %cmp90, label %if.then91, label %land.lhs.true85.for.inc96_crit_edge

land.lhs.true85.for.inc96_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc96

if.then91:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  %info93 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr %45, i32 %i.1253, i32 3
  %75 = ptrtoint ptr %info93 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %info93, align 4
  %77 = ptrtoint ptr %info83 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %info83, align 4
  br label %for.inc96

for.inc96:                                        ; preds = %if.then91, %land.lhs.true85.for.inc96_crit_edge, %if.end82.for.inc96_crit_edge
  %inc97 = add nuw nsw i32 %i.1253, 1
  %exitcond261.not = icmp eq i32 %inc97, %47
  br i1 %exitcond261.not, label %for.inc96.for.end98_crit_edge, label %for.inc96.for.body56_crit_edge

for.inc96.for.body56_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body56

for.inc96.for.end98_crit_edge:                    ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end98

for.end98:                                        ; preds = %for.inc96.for.end98_crit_edge, %if.end53.for.end98_crit_edge
  %put99 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 9
  %78 = ptrtoint ptr %put99 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %put99, align 4
  %tobool100.not = icmp eq ptr %79, null
  br i1 %tobool100.not, label %for.end98.if.end108_crit_edge, label %land.lhs.true101

for.end98.if.end108_crit_edge:                    ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

land.lhs.true101:                                 ; preds = %for.end98
  %get102 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 8
  %80 = ptrtoint ptr %get102 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %get102, align 4
  %tobool103.not = icmp eq ptr %81, null
  br i1 %tobool103.not, label %land.lhs.true101.if.end108_crit_edge, label %land.lhs.true104

land.lhs.true101.if.end108_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

land.lhs.true104:                                 ; preds = %land.lhs.true101
  %info105 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 7
  %82 = ptrtoint ptr %info105 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %info105, align 4
  %tobool106.not = icmp eq ptr %83, null
  br i1 %tobool106.not, label %land.lhs.true104.if.end108_crit_edge, label %land.lhs.true104.cleanup164_crit_edge

land.lhs.true104.cleanup164_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup164

land.lhs.true104.if.end108_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.end108:                                        ; preds = %land.lhs.true104.if.end108_crit_edge, %land.lhs.true101.if.end108_crit_edge, %for.end98.if.end108_crit_edge
  %get125 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 8
  %info138 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %k, i32 0, i32 7
  %put118 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 4, i32 1
  br label %for.body111

for.body111:                                      ; preds = %for.inc151.for.body111_crit_edge, %if.end108
  %i.2257 = phi i32 [ 0, %if.end108 ], [ %inc152, %for.inc151.for.body111_crit_edge ]
  %84 = ptrtoint ptr %put99 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %put99, align 4
  %cmp113 = icmp eq ptr %85, null
  br i1 %cmp113, label %land.lhs.true114, label %for.body111.if.end124_crit_edge

for.body111.if.end124_crit_edge:                  ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

land.lhs.true114:                                 ; preds = %for.body111
  %arrayidx115 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr @io_ops, i32 %i.2257
  %86 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx115, align 4
  %88 = ptrtoint ptr %put118 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %put118, align 1
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %90)
  %cmp119 = icmp eq i32 %87, %90
  br i1 %cmp119, label %if.then120, label %land.lhs.true114.if.end124_crit_edge

land.lhs.true114.if.end124_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then120:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #12
  %put122 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr @io_ops, i32 %i.2257, i32 2
  %91 = ptrtoint ptr %put122 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %put122, align 4
  %93 = ptrtoint ptr %put99 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %put99, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %land.lhs.true114.if.end124_crit_edge, %for.body111.if.end124_crit_edge
  %94 = ptrtoint ptr %get125 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %get125, align 4
  %cmp126 = icmp eq ptr %95, null
  br i1 %cmp126, label %land.lhs.true127, label %if.end124.if.end137_crit_edge

if.end124.if.end137_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

land.lhs.true127:                                 ; preds = %if.end124
  %arrayidx128 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr @io_ops, i32 %i.2257
  %96 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx128, align 4
  %98 = ptrtoint ptr %ops1 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %ops1, align 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %100)
  %cmp132 = icmp eq i32 %97, %100
  br i1 %cmp132, label %if.then133, label %land.lhs.true127.if.end137_crit_edge

land.lhs.true127.if.end137_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then133:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  %get135 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr @io_ops, i32 %i.2257, i32 1
  %101 = ptrtoint ptr %get135 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %get135, align 4
  %103 = ptrtoint ptr %get125 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %get125, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then133, %land.lhs.true127.if.end137_crit_edge, %if.end124.if.end137_crit_edge
  %104 = ptrtoint ptr %info138 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %info138, align 4
  %cmp139 = icmp eq ptr %105, null
  br i1 %cmp139, label %land.lhs.true140, label %if.end137.for.inc151_crit_edge

if.end137.for.inc151_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc151

land.lhs.true140:                                 ; preds = %if.end137
  %arrayidx141 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr @io_ops, i32 %i.2257
  %106 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx141, align 4
  %108 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %info, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %110)
  %cmp145 = icmp eq i32 %107, %110
  br i1 %cmp145, label %if.then146, label %land.lhs.true140.for.inc151_crit_edge

land.lhs.true140.for.inc151_crit_edge:            ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc151

if.then146:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #12
  %info148 = getelementptr %struct.snd_soc_tplg_kcontrol_ops, ptr @io_ops, i32 %i.2257, i32 3
  %111 = ptrtoint ptr %info148 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %info148, align 4
  %113 = ptrtoint ptr %info138 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %info138, align 4
  br label %for.inc151

for.inc151:                                       ; preds = %if.then146, %land.lhs.true140.for.inc151_crit_edge, %if.end137.for.inc151_crit_edge
  %inc152 = add nuw nsw i32 %i.2257, 1
  %exitcond262.not = icmp eq i32 %inc152, 13
  br i1 %exitcond262.not, label %for.end153, label %for.inc151.for.body111_crit_edge

for.inc151.for.body111_crit_edge:                 ; preds = %for.inc151
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body111

for.end153:                                       ; preds = %for.inc151
  %114 = ptrtoint ptr %put99 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %put99, align 4
  %tobool155.not = icmp eq ptr %115, null
  br i1 %tobool155.not, label %for.end153.if.end163_crit_edge, label %land.lhs.true156

for.end153.if.end163_crit_edge:                   ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

land.lhs.true156:                                 ; preds = %for.end153
  %116 = ptrtoint ptr %get125 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %get125, align 4
  %tobool158.not = icmp eq ptr %117, null
  br i1 %tobool158.not, label %land.lhs.true156.if.end163_crit_edge, label %land.lhs.true159

land.lhs.true156.if.end163_crit_edge:             ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

land.lhs.true159:                                 ; preds = %land.lhs.true156
  %118 = ptrtoint ptr %info138 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %info138, align 4
  %tobool161.not = icmp eq ptr %119, null
  br i1 %tobool161.not, label %land.lhs.true159.if.end163_crit_edge, label %land.lhs.true159.cleanup164_crit_edge

land.lhs.true159.cleanup164_crit_edge:            ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup164

land.lhs.true159.if.end163_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.end163:                                        ; preds = %land.lhs.true159.if.end163_crit_edge, %land.lhs.true156.if.end163_crit_edge, %for.end153.if.end163_crit_edge
  br label %cleanup164

cleanup164:                                       ; preds = %if.end163, %land.lhs.true159.cleanup164_crit_edge, %land.lhs.true104.cleanup164_crit_edge, %if.end51, %land.lhs.true47.cleanup164_crit_edge, %land.lhs.true39.cleanup164_crit_edge
  %retval.1 = phi i32 [ -22, %if.end163 ], [ 0, %if.end51 ], [ -22, %land.lhs.true39.cleanup164_crit_edge ], [ -22, %land.lhs.true47.cleanup164_crit_edge ], [ 0, %land.lhs.true104.cleanup164_crit_edge ], [ 0, %land.lhs.true159.cleanup164_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info_ext(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_tlv_callback(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_sx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_sx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_put(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_range(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_range(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_range(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_xr_sx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_xr_sx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_xr_sx(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_strobe(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_strobe(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_cnew(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soc_tplg_denum_create_texts(ptr nocapture noundef readonly %tplg, ptr nocapture noundef %se, ptr noundef %ec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %items = getelementptr inbounds %struct.snd_soc_tplg_enum_control, ptr %ec, i32 0, i32 4
  %0 = ptrtoint ptr %items to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %items, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp = icmp ugt i32 %2, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %3 = shl nuw nsw i32 %2, 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %3, i32 noundef 3520) #10
  %dtexts = getelementptr inbounds %struct.soc_enum, ptr %se, i32 0, i32 8, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %dtexts to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %dtexts, align 4
  %cmp4 = icmp eq ptr %call5.i.i, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %7 = ptrtoint ptr %items to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %items, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp854.not = icmp eq i32 %8, 0
  br i1 %cmp854.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %if.end12
  %inc = add nuw i32 %i.055, 1
  %10 = ptrtoint ptr %items to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %items, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %cmp8 = icmp ult i32 %inc, %12
  br i1 %cmp8, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_soc_tplg_enum_control, ptr %ec, i32 0, i32 7, i32 %i.055
  %call9 = tail call i32 @strnlen(ptr noundef %arrayidx, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 44
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %if.end12

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call17 = tail call noalias ptr @devm_kstrdup(ptr noundef %14, ptr noundef %arrayidx, i32 noundef 3264) #10
  %15 = ptrtoint ptr %dtexts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dtexts, align 4
  %arrayidx20 = getelementptr ptr, ptr %16, i32 %i.055
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call17, ptr %arrayidx20, align 4
  %18 = load ptr, ptr %dtexts, align 4
  %arrayidx23 = getelementptr ptr, ptr %18, i32 %i.055
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx23, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %for.cond

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %9, %for.cond.preheader.for.end_crit_edge ], [ %12, %for.cond.for.end_crit_edge ]
  %items27 = getelementptr inbounds %struct.soc_enum, ptr %se, i32 0, i32 3
  %21 = ptrtoint ptr %items27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.lcssa, ptr %items27, align 4
  %22 = ptrtoint ptr %dtexts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dtexts, align 4
  %texts30 = getelementptr inbounds %struct.soc_enum, ptr %se, i32 0, i32 5
  %24 = ptrtoint ptr %texts30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %texts30, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end12.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soc_tplg_dapm_widget_create(ptr nocapture noundef %tplg, ptr noundef %w) unnamed_addr #2 align 64 {
entry:
  %template = alloca %struct.snd_soc_dapm_widget, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp, align 4
  %dapm1 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %template) #10
  %2 = call ptr @memset(ptr %template, i32 255, i32 180)
  %card3 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card3, align 4
  %name = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 2
  %call = tail call i32 @strnlen(ptr noundef %name, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call)
  %cmp = icmp eq i32 %call, 44
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sname = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 3
  %call5 = tail call i32 @strnlen(ptr noundef %sname, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 44
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_dapm_widget_create.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dapm_widget_create, %if.then12)) #10
          to label %do.end [label %if.then12], !srcloc !384

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %id, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_dapm_widget_create.__UNIQUE_ID_ddebug247, ptr noundef %6, ptr noundef nonnull @.str.114, ptr noundef %name, i32 noundef %8) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %9 = getelementptr inbounds i8, ptr %template, i32 12
  %10 = call ptr @memset(ptr %9, i32 0, i32 168)
  %id16 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 1
  %11 = ptrtoint ptr %id16 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %id16, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %13)
  %switch = icmp ult i32 %13, 24
  br i1 %switch, label %get_widget_id.exit, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

get_widget_id.exit:                               ; preds = %do.end
  %kid.i = getelementptr [24 x %struct.soc_tplg_map], ptr @dapm_map, i32 0, i32 %13, i32 1
  %14 = ptrtoint ptr %kid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %kid.i, align 4
  %16 = ptrtoint ptr %template to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %template, align 4
  %call26 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #10
  %name27 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 1
  %17 = ptrtoint ptr %name27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call26, ptr %name27, align 4
  %tobool29.not = icmp eq ptr %call26, null
  br i1 %tobool29.not, label %get_widget_id.exit.cleanup_crit_edge, label %if.end31

get_widget_id.exit.cleanup_crit_edge:             ; preds = %get_widget_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %get_widget_id.exit
  %call34 = tail call noalias ptr @kstrdup(ptr noundef %sname, i32 noundef 3264) #10
  %sname35 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 2
  %18 = ptrtoint ptr %sname35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call34, ptr %sname35, align 4
  %tobool37.not = icmp eq ptr %call34, null
  br i1 %tobool37.not, label %if.end31.cleanup.sink.split_crit_edge, label %if.end39

if.end31.cleanup.sink.split_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end39:                                         ; preds = %if.end31
  %reg = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 4
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %reg, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %reg40 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 8
  %22 = ptrtoint ptr %reg40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %reg40, align 4
  %shift = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 5
  %23 = ptrtoint ptr %shift to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %shift, align 1
  %25 = lshr i32 %24, 24
  %conv = trunc i32 %25 to i8
  %shift41 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 9
  %26 = ptrtoint ptr %shift41 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %shift41, align 4
  %mask = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 6
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %mask, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %mask42 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 10
  %30 = ptrtoint ptr %mask42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %mask42, align 4
  %subseq = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 7
  %31 = ptrtoint ptr %subseq to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %subseq, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %subseq43 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 14
  %34 = ptrtoint ptr %subseq43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %subseq43, align 4
  %invert = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 8
  %35 = ptrtoint ptr %invert to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %invert, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool44.not = icmp eq i32 %36, 0
  %cond = zext i1 %tobool44.not to i32
  %on_val = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 11
  %37 = ptrtoint ptr %on_val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond, ptr %on_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool46.not = icmp ne i32 %36, 0
  %cond47 = zext i1 %tobool46.not to i32
  %off_val = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 12
  %38 = ptrtoint ptr %off_val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond47, ptr %off_val, align 4
  %ignore_suspend = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 9
  %39 = ptrtoint ptr %ignore_suspend to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %ignore_suspend, align 1
  %ignore_suspend49 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 13
  %41 = ptrtoint ptr %ignore_suspend49 to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load = load i16, ptr %ignore_suspend49, align 4
  %sh.diff = lshr i32 %40, 14
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %bf.shl = and i16 %tr.sh.diff, 1024
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %ignore_suspend49, align 4
  %event_flags = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 10
  %42 = ptrtoint ptr %event_flags to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %event_flags, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %event_flags50 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 16
  %45 = ptrtoint ptr %event_flags50 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %event_flags50, align 4
  %index = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  %46 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index, align 4
  %index51 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 21, i32 1
  %48 = ptrtoint ptr %index51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %index51, align 4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 13
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %priv, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %add = add i32 %51, 132
  %pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %53, i32 %add
  store ptr %add.ptr, ptr %pos, align 4
  %num_kcontrols = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %w, i32 0, i32 12
  %54 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %num_kcontrols, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp52 = icmp eq i32 %55, 0
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %num_kcontrols55 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 18
  %56 = ptrtoint ptr %num_kcontrols55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %num_kcontrols55, align 4
  br label %widget133

if.end56:                                         ; preds = %if.end39
  %57 = tail call i32 @llvm.bswap.i32(i32 %55)
  %num_kcontrols58 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 18
  %58 = ptrtoint ptr %num_kcontrols58 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %num_kcontrols58, align 4
  %dev59 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 48) #10
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %if.end56.cleanup.sink.split_crit_edge, label %devm_kcalloc.exit, !prof !385

if.end56.cleanup.sink.split_crit_edge:            ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

devm_kcalloc.exit:                                ; preds = %if.end56
  %61 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev59, align 4
  %63 = extractvalue { i32, i1 } %59, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %62, i32 noundef %63, i32 noundef 3520) #10
  %tobool62.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool62.not, label %devm_kcalloc.exit.cleanup.sink.split_crit_edge, label %if.end64

devm_kcalloc.exit.cleanup.sink.split_crit_edge:   ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end64:                                         ; preds = %devm_kcalloc.exit
  %64 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %num_kcontrols, align 1
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %66, i32 4) #10
  %68 = extractvalue { i32, i1 } %67, 1
  br i1 %68, label %if.end64.cleanup.sink.split_crit_edge, label %devm_kcalloc.exit275, !prof !385

if.end64.cleanup.sink.split_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

devm_kcalloc.exit275:                             ; preds = %if.end64
  %69 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev59, align 4
  %71 = extractvalue { i32, i1 } %67, 0
  %call5.i.i272 = tail call noalias ptr @devm_kmalloc(ptr noundef %70, i32 noundef %71, i32 noundef 3520) #10
  %tobool68.not = icmp eq ptr %call5.i.i272, null
  br i1 %tobool68.not, label %devm_kcalloc.exit275.cleanup.sink.split_crit_edge, label %for.cond.preheader

devm_kcalloc.exit275.cleanup.sink.split_crit_edge: ; preds = %devm_kcalloc.exit275
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %devm_kcalloc.exit275
  %72 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %num_kcontrols, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp72309.not = icmp eq i32 %73, 0
  br i1 %cmp72309.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0313 = phi i32 [ %inc113, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %enum_count.0312 = phi i32 [ %enum_count.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %bytes_count.0311 = phi i32 [ %bytes_count.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mixer_count.0310 = phi i32 [ %mixer_count.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %74 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pos, align 4
  %info = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %75, i32 0, i32 4, i32 2
  %76 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %info, align 1
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %78, label %do.end107 [
    i32 1, label %for.body.sw.bb_crit_edge
    i32 8, label %for.body.sw.bb_crit_edge342
    i32 2, label %for.body.sw.bb_crit_edge343
    i32 3, label %for.body.sw.bb_crit_edge344
    i32 7, label %for.body.sw.bb_crit_edge345
    i32 64, label %for.body.sw.bb_crit_edge346
    i32 4, label %for.body.sw.bb83_crit_edge
    i32 6, label %for.body.sw.bb83_crit_edge347
    i32 65, label %for.body.sw.bb83_crit_edge348
    i32 66, label %for.body.sw.bb83_crit_edge349
    i32 67, label %for.body.sw.bb83_crit_edge350
    i32 5, label %sw.bb94
  ]

for.body.sw.bb83_crit_edge350:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb83

for.body.sw.bb83_crit_edge349:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb83

for.body.sw.bb83_crit_edge348:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb83

for.body.sw.bb83_crit_edge347:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb83

for.body.sw.bb83_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb83

for.body.sw.bb_crit_edge346:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge345:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge344:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge343:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge342:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge342, %for.body.sw.bb_crit_edge343, %for.body.sw.bb_crit_edge344, %for.body.sw.bb_crit_edge345, %for.body.sw.bb_crit_edge346
  %arrayidx = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.0313
  %index75 = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.0313, i32 4
  %80 = ptrtoint ptr %index75 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mixer_count.0310, ptr %index75, align 4
  %arrayidx76 = getelementptr i32, ptr %call5.i.i272, i32 %i.0313
  %81 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %arrayidx76, align 4
  %inc = add i32 %mixer_count.0310, 1
  %call78 = tail call fastcc i32 @soc_tplg_dapm_widget_dmixer_create(ptr noundef %tplg, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %sw.bb.cleanup.sink.split.sink.split_crit_edge, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb.cleanup.sink.split.sink.split_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

sw.bb83:                                          ; preds = %for.body.sw.bb83_crit_edge, %for.body.sw.bb83_crit_edge347, %for.body.sw.bb83_crit_edge348, %for.body.sw.bb83_crit_edge349, %for.body.sw.bb83_crit_edge350
  %arrayidx84 = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.0313
  %index85 = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.0313, i32 4
  %82 = ptrtoint ptr %index85 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %enum_count.0312, ptr %index85, align 4
  %arrayidx86 = getelementptr i32, ptr %call5.i.i272, i32 %i.0313
  %83 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %arrayidx86, align 4
  %inc87 = add i32 %enum_count.0312, 1
  %call89 = tail call fastcc i32 @soc_tplg_dapm_widget_denum_create(ptr noundef %tplg, ptr noundef %arrayidx84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %sw.bb83.cleanup.sink.split.sink.split_crit_edge, label %sw.bb83.for.inc_crit_edge

sw.bb83.for.inc_crit_edge:                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb83.cleanup.sink.split.sink.split_crit_edge:  ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

sw.bb94:                                          ; preds = %for.body
  %arrayidx95 = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.0313
  %index96 = getelementptr %struct.snd_kcontrol_new, ptr %call5.i.i, i32 %i.0313, i32 4
  %84 = ptrtoint ptr %index96 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %bytes_count.0311, ptr %index96, align 4
  %arrayidx97 = getelementptr i32, ptr %call5.i.i272, i32 %i.0313
  %85 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %arrayidx97, align 4
  %inc98 = add i32 %bytes_count.0311, 1
  %call100 = tail call fastcc i32 @soc_tplg_dapm_widget_dbytes_create(ptr noundef %tplg, ptr noundef %arrayidx95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %sw.bb94.cleanup.sink.split.sink.split_crit_edge, label %sw.bb94.for.inc_crit_edge

sw.bb94.for.inc_crit_edge:                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sw.bb94.cleanup.sink.split.sink.split_crit_edge:  ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

do.end107:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %75, i32 0, i32 4
  %86 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev59, align 4
  %88 = ptrtoint ptr %ops to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %ops, align 1
  %put = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %75, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %put to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %put, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.115, i32 noundef %89, i32 noundef %91, i32 noundef %78) #13
  br label %cleanup.sink.split.sink.split

for.inc:                                          ; preds = %sw.bb94.for.inc_crit_edge, %sw.bb83.for.inc_crit_edge, %sw.bb.for.inc_crit_edge
  %mixer_count.1 = phi i32 [ %mixer_count.0310, %sw.bb94.for.inc_crit_edge ], [ %mixer_count.0310, %sw.bb83.for.inc_crit_edge ], [ %inc, %sw.bb.for.inc_crit_edge ]
  %bytes_count.1 = phi i32 [ %inc98, %sw.bb94.for.inc_crit_edge ], [ %bytes_count.0311, %sw.bb83.for.inc_crit_edge ], [ %bytes_count.0311, %sw.bb.for.inc_crit_edge ]
  %enum_count.1 = phi i32 [ %enum_count.0312, %sw.bb94.for.inc_crit_edge ], [ %inc87, %sw.bb83.for.inc_crit_edge ], [ %enum_count.0312, %sw.bb.for.inc_crit_edge ]
  %inc113 = add nuw i32 %i.0313, 1
  %92 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %num_kcontrols, align 1
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %cmp72 = icmp ult i32 %inc113, %94
  br i1 %cmp72, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mixer_count.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %mixer_count.1, %for.inc.for.end_crit_edge ]
  %bytes_count.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %bytes_count.1, %for.inc.for.end_crit_edge ]
  %enum_count.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %enum_count.1, %for.inc.for.end_crit_edge ]
  %kcontrol_news = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %template, i32 0, i32 19
  %95 = ptrtoint ptr %kcontrol_news to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call5.i.i, ptr %kcontrol_news, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_dapm_widget_create.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dapm_widget_create, %if.then126)) #10
          to label %widget133 [label %if.then126], !srcloc !384

if.then126:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_dapm_widget_create.__UNIQUE_ID_ddebug248, ptr noundef %97, ptr noundef nonnull @.str.116, ptr noundef %name, i32 noundef %mixer_count.0.lcssa, i32 noundef %enum_count.0.lcssa, i32 noundef %bytes_count.0.lcssa) #10
  br label %widget133

widget133:                                        ; preds = %if.then126, %for.end, %if.then54
  %kcontrol_type.0 = phi ptr [ null, %if.then54 ], [ %call5.i.i272, %if.then126 ], [ %call5.i.i272, %for.end ]
  %ops.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %98 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %99, null
  br i1 %tobool.not.i, label %widget133.if.end138_crit_edge, label %land.lhs.true.i

widget133.if.end138_crit_edge:                    ; preds = %widget133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

land.lhs.true.i:                                  ; preds = %widget133
  %widget_load.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %widget_load.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %widget_load.i, align 4
  %tobool2.not.i = icmp eq ptr %101, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end138_crit_edge, label %soc_tplg_widget_load.exit

land.lhs.true.i.if.end138_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

soc_tplg_widget_load.exit:                        ; preds = %land.lhs.true.i
  %102 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %comp, align 4
  %104 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %index, align 4
  %call.i = call i32 %101(ptr noundef %103, i32 noundef %105, ptr noundef nonnull %template, ptr noundef %w) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp135 = icmp slt i32 %call.i, 0
  br i1 %cmp135, label %soc_tplg_widget_load.exit.cleanup.sink.split.sink.split_crit_edge, label %soc_tplg_widget_load.exit.if.end138_crit_edge

soc_tplg_widget_load.exit.if.end138_crit_edge:    ; preds = %soc_tplg_widget_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

soc_tplg_widget_load.exit.cleanup.sink.split.sink.split_crit_edge: ; preds = %soc_tplg_widget_load.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.end138:                                        ; preds = %soc_tplg_widget_load.exit.if.end138_crit_edge, %land.lhs.true.i.if.end138_crit_edge, %widget133.if.end138_crit_edge
  %instantiated = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 56
  %106 = ptrtoint ptr %instantiated to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load139 = load i8, ptr %instantiated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load139)
  %tobool140.not = icmp sgt i8 %bf.load139, -1
  br i1 %tobool140.not, label %if.else, label %if.then141

if.then141:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  %call142 = call ptr @snd_soc_dapm_new_control(ptr noundef %dapm1, ptr noundef nonnull %template) #10
  br label %if.end144

if.else:                                          ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  %call143 = call ptr @snd_soc_dapm_new_control_unlocked(ptr noundef %dapm1, ptr noundef nonnull %template) #10
  br label %if.end144

if.end144:                                        ; preds = %if.else, %if.then141
  %widget.0 = phi ptr [ %call142, %if.then141 ], [ %call143, %if.else ]
  %cmp.i = icmp ugt ptr %widget.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then146, label %if.end148

if.then146:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %widget.0 to i32
  br label %cleanup.sink.split.sink.split

if.end148:                                        ; preds = %if.end144
  %dobj149 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %widget.0, i32 0, i32 21
  %108 = ptrtoint ptr %dobj149 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 5, ptr %dobj149, align 4
  %109 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %widget.0, i32 0, i32 21, i32 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %kcontrol_type.0, ptr %109, align 4
  %111 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i, align 4
  %ops154 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %widget.0, i32 0, i32 21, i32 3
  %113 = ptrtoint ptr %ops154 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %ops154, align 4
  %114 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %index, align 4
  %index157 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %widget.0, i32 0, i32 21, i32 1
  %116 = ptrtoint ptr %index157 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %index157, align 4
  %list = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %widget.0, i32 0, i32 21, i32 2
  %117 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %comp, align 4
  %dobj_list = getelementptr inbounds %struct.snd_soc_component, ptr %118, i32 0, i32 16
  %119 = ptrtoint ptr %dobj_list to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dobj_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %dobj_list, ptr noundef %120) #10
  br i1 %call.i.i, label %if.end.i.i278, label %if.end148.list_add.exit_crit_edge

if.end148.list_add.exit_crit_edge:                ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i278:                                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %list, ptr %prev1.i.i, align 4
  %122 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %120, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %widget.0, i32 0, i32 21, i32 2, i32 1
  %123 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %dobj_list, ptr %prev3.i.i, align 4
  %124 = ptrtoint ptr %dobj_list to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %list, ptr %dobj_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i278, %if.end148.list_add.exit_crit_edge
  %125 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i, align 4
  %tobool.not.i280 = icmp eq ptr %126, null
  br i1 %tobool.not.i280, label %list_add.exit.cleanup.sink.split.sink.split_crit_edge, label %land.lhs.true.i282

list_add.exit.cleanup.sink.split.sink.split_crit_edge: ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

land.lhs.true.i282:                               ; preds = %list_add.exit
  %widget_ready.i = getelementptr inbounds %struct.snd_soc_tplg_ops, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %widget_ready.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %widget_ready.i, align 4
  %tobool2.not.i281 = icmp eq ptr %128, null
  br i1 %tobool2.not.i281, label %land.lhs.true.i282.cleanup.sink.split.sink.split_crit_edge, label %soc_tplg_widget_ready.exit

land.lhs.true.i282.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.lhs.true.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

soc_tplg_widget_ready.exit:                       ; preds = %land.lhs.true.i282
  %129 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %comp, align 4
  %131 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %index, align 4
  %call.i285 = call i32 %128(ptr noundef %130, i32 noundef %132, ptr noundef %widget.0, ptr noundef %w) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285)
  %cmp161 = icmp slt i32 %call.i285, 0
  br i1 %cmp161, label %ready_err, label %soc_tplg_widget_ready.exit.cleanup.sink.split.sink.split_crit_edge

soc_tplg_widget_ready.exit.cleanup.sink.split.sink.split_crit_edge: ; preds = %soc_tplg_widget_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

ready_err:                                        ; preds = %soc_tplg_widget_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dapm167 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %widget.0, i32 0, i32 4
  %133 = ptrtoint ptr %dapm167 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dapm167, align 4
  %component = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %component, align 4
  call fastcc void @remove_widget(ptr noundef %136, ptr noundef %dobj149, i32 noundef 3)
  call void @snd_soc_dapm_free_widget(ptr noundef %widget.0) #10
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %ready_err, %soc_tplg_widget_ready.exit.cleanup.sink.split.sink.split_crit_edge, %land.lhs.true.i282.cleanup.sink.split.sink.split_crit_edge, %list_add.exit.cleanup.sink.split.sink.split_crit_edge, %if.then146, %soc_tplg_widget_load.exit.cleanup.sink.split.sink.split_crit_edge, %do.end107, %sw.bb94.cleanup.sink.split.sink.split_crit_edge, %sw.bb83.cleanup.sink.split.sink.split_crit_edge, %sw.bb.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ 0, %list_add.exit.cleanup.sink.split.sink.split_crit_edge ], [ 0, %land.lhs.true.i282.cleanup.sink.split.sink.split_crit_edge ], [ 0, %soc_tplg_widget_ready.exit.cleanup.sink.split.sink.split_crit_edge ], [ %call.i, %soc_tplg_widget_load.exit.cleanup.sink.split.sink.split_crit_edge ], [ %107, %if.then146 ], [ %call.i285, %ready_err ], [ -22, %do.end107 ], [ %call78, %sw.bb.cleanup.sink.split.sink.split_crit_edge ], [ %call89, %sw.bb83.cleanup.sink.split.sink.split_crit_edge ], [ %call100, %sw.bb94.cleanup.sink.split.sink.split_crit_edge ]
  %137 = ptrtoint ptr %sname35 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sname35, align 4
  call void @kfree(ptr noundef %138) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %devm_kcalloc.exit275.cleanup.sink.split_crit_edge, %if.end64.cleanup.sink.split_crit_edge, %devm_kcalloc.exit.cleanup.sink.split_crit_edge, %if.end56.cleanup.sink.split_crit_edge, %if.end31.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %devm_kcalloc.exit275.cleanup.sink.split_crit_edge ], [ 0, %devm_kcalloc.exit.cleanup.sink.split_crit_edge ], [ -12, %if.end31.cleanup.sink.split_crit_edge ], [ 0, %if.end56.cleanup.sink.split_crit_edge ], [ 0, %if.end64.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %139 = ptrtoint ptr %name27 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %name27, align 4
  call void @kfree(ptr noundef %140) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %get_widget_id.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %get_widget_id.exit.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %template) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soc_tplg_dapm_widget_dmixer_create(ptr nocapture noundef %tplg, ptr noundef %kc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pos, align 4
  %name = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 2
  %call = tail call i32 @strnlen(ptr noundef %name, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call)
  %cmp = icmp eq i32 %call, 44
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 72, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %priv, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add = add i32 %6, 360
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %add
  store ptr %add.ptr, ptr %pos, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_dapm_widget_dmixer_create.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dapm_widget_dmixer_create, %if.then9)) #10
          to label %do.end [label %if.then9], !srcloc !384

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_dapm_widget_dmixer_create.__UNIQUE_ID_ddebug244, ptr noundef %10, ptr noundef nonnull @.str.118, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end3
  %11 = ptrtoint ptr %call.i to i32
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %12 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %private_value, align 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call19 = tail call noalias ptr @devm_kstrdup(ptr noundef %14, ptr noundef %name, i32 noundef 3264) #10
  %name20 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 3
  %15 = ptrtoint ptr %name20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call19, ptr %name20, align 4
  %tobool22.not = icmp eq ptr %call19, null
  br i1 %tobool22.not, label %do.end.cleanup_crit_edge, label %if.end24

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %do.end
  %16 = ptrtoint ptr %kc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %kc, align 4
  %access = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %access to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %access, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %access26 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 5
  %20 = ptrtoint ptr %access26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %access26, align 4
  %channel = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7
  %id.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 0, i32 3
  %21 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %22)
  %cmp1.i = icmp eq i32 %22, 50331648
  br i1 %cmp1.i, label %if.end24.if.then.i_crit_edge, label %for.inc.i

if.end24.if.then.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %if.end24.if.then.i_crit_edge
  %i.02.lcssa.i = phi i32 [ 0, %if.end24.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ]
  %reg.i = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i, i32 1
  %23 = ptrtoint ptr %reg.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %reg.i, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  br label %tplc_chan_get_reg.exit

for.inc.i:                                        ; preds = %if.end24
  %id.1.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 1, i32 3
  %26 = ptrtoint ptr %id.1.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %id.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %27)
  %cmp1.1.i = icmp eq i32 %27, 50331648
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %id.2.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 2, i32 3
  %28 = ptrtoint ptr %id.2.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %id.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %29)
  %cmp1.2.i = icmp eq i32 %29, 50331648
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %id.3.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 3, i32 3
  %30 = ptrtoint ptr %id.3.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %id.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %31)
  %cmp1.3.i = icmp eq i32 %31, 50331648
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %id.4.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 4, i32 3
  %32 = ptrtoint ptr %id.4.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %id.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %33)
  %cmp1.4.i = icmp eq i32 %33, 50331648
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %id.5.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 5, i32 3
  %34 = ptrtoint ptr %id.5.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %id.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %35)
  %cmp1.5.i = icmp eq i32 %35, 50331648
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %id.6.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 6, i32 3
  %36 = ptrtoint ptr %id.6.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %id.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %37)
  %cmp1.6.i = icmp eq i32 %37, 50331648
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %id.7.i = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 7, i32 3
  %38 = ptrtoint ptr %id.7.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %id.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %39)
  %cmp1.7.i = icmp eq i32 %39, 50331648
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge

for.inc.6.i.tplc_chan_get_reg.exit_crit_edge:     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_reg.exit

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

tplc_chan_get_reg.exit:                           ; preds = %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge, %if.then.i
  %retval.0.i135 = phi i32 [ %25, %if.then.i ], [ -22, %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge ]
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i135, ptr %reg, align 4
  %41 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %42)
  %cmp1.i137 = icmp eq i32 %42, 67108864
  br i1 %cmp1.i137, label %tplc_chan_get_reg.exit.if.then.i140_crit_edge, label %for.inc.i143

tplc_chan_get_reg.exit.if.then.i140_crit_edge:    ; preds = %tplc_chan_get_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i140

if.then.i140:                                     ; preds = %for.inc.6.i161.if.then.i140_crit_edge, %for.inc.5.i158.if.then.i140_crit_edge, %for.inc.4.i155.if.then.i140_crit_edge, %for.inc.3.i152.if.then.i140_crit_edge, %for.inc.2.i149.if.then.i140_crit_edge, %for.inc.1.i146.if.then.i140_crit_edge, %for.inc.i143.if.then.i140_crit_edge, %tplc_chan_get_reg.exit.if.then.i140_crit_edge
  %i.02.lcssa.i138 = phi i32 [ 0, %tplc_chan_get_reg.exit.if.then.i140_crit_edge ], [ 1, %for.inc.i143.if.then.i140_crit_edge ], [ 2, %for.inc.1.i146.if.then.i140_crit_edge ], [ 3, %for.inc.2.i149.if.then.i140_crit_edge ], [ 4, %for.inc.3.i152.if.then.i140_crit_edge ], [ 5, %for.inc.4.i155.if.then.i140_crit_edge ], [ 6, %for.inc.5.i158.if.then.i140_crit_edge ], [ 7, %for.inc.6.i161.if.then.i140_crit_edge ]
  %reg.i139 = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i138, i32 1
  %43 = ptrtoint ptr %reg.i139 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %reg.i139, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  br label %tplc_chan_get_reg.exit163

for.inc.i143:                                     ; preds = %tplc_chan_get_reg.exit
  %id.1.i141 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 1, i32 3
  %46 = ptrtoint ptr %id.1.i141 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %id.1.i141, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %47)
  %cmp1.1.i142 = icmp eq i32 %47, 67108864
  br i1 %cmp1.1.i142, label %for.inc.i143.if.then.i140_crit_edge, label %for.inc.1.i146

for.inc.i143.if.then.i140_crit_edge:              ; preds = %for.inc.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i140

for.inc.1.i146:                                   ; preds = %for.inc.i143
  %id.2.i144 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 2, i32 3
  %48 = ptrtoint ptr %id.2.i144 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %id.2.i144, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %49)
  %cmp1.2.i145 = icmp eq i32 %49, 67108864
  br i1 %cmp1.2.i145, label %for.inc.1.i146.if.then.i140_crit_edge, label %for.inc.2.i149

for.inc.1.i146.if.then.i140_crit_edge:            ; preds = %for.inc.1.i146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i140

for.inc.2.i149:                                   ; preds = %for.inc.1.i146
  %id.3.i147 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 3, i32 3
  %50 = ptrtoint ptr %id.3.i147 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %id.3.i147, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %51)
  %cmp1.3.i148 = icmp eq i32 %51, 67108864
  br i1 %cmp1.3.i148, label %for.inc.2.i149.if.then.i140_crit_edge, label %for.inc.3.i152

for.inc.2.i149.if.then.i140_crit_edge:            ; preds = %for.inc.2.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i140

for.inc.3.i152:                                   ; preds = %for.inc.2.i149
  %id.4.i150 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 4, i32 3
  %52 = ptrtoint ptr %id.4.i150 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %id.4.i150, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %53)
  %cmp1.4.i151 = icmp eq i32 %53, 67108864
  br i1 %cmp1.4.i151, label %for.inc.3.i152.if.then.i140_crit_edge, label %for.inc.4.i155

for.inc.3.i152.if.then.i140_crit_edge:            ; preds = %for.inc.3.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i140

for.inc.4.i155:                                   ; preds = %for.inc.3.i152
  %id.5.i153 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 5, i32 3
  %54 = ptrtoint ptr %id.5.i153 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %id.5.i153, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %55)
  %cmp1.5.i154 = icmp eq i32 %55, 67108864
  br i1 %cmp1.5.i154, label %for.inc.4.i155.if.then.i140_crit_edge, label %for.inc.5.i158

for.inc.4.i155.if.then.i140_crit_edge:            ; preds = %for.inc.4.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i140

for.inc.5.i158:                                   ; preds = %for.inc.4.i155
  %id.6.i156 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 6, i32 3
  %56 = ptrtoint ptr %id.6.i156 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %id.6.i156, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %57)
  %cmp1.6.i157 = icmp eq i32 %57, 67108864
  br i1 %cmp1.6.i157, label %for.inc.5.i158.if.then.i140_crit_edge, label %for.inc.6.i161

for.inc.5.i158.if.then.i140_crit_edge:            ; preds = %for.inc.5.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i140

for.inc.6.i161:                                   ; preds = %for.inc.5.i158
  %id.7.i159 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 7, i32 3
  %58 = ptrtoint ptr %id.7.i159 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %id.7.i159, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %59)
  %cmp1.7.i160 = icmp eq i32 %59, 67108864
  br i1 %cmp1.7.i160, label %for.inc.6.i161.if.then.i140_crit_edge, label %for.inc.6.i161.tplc_chan_get_reg.exit163_crit_edge

for.inc.6.i161.tplc_chan_get_reg.exit163_crit_edge: ; preds = %for.inc.6.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_reg.exit163

for.inc.6.i161.if.then.i140_crit_edge:            ; preds = %for.inc.6.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i140

tplc_chan_get_reg.exit163:                        ; preds = %for.inc.6.i161.tplc_chan_get_reg.exit163_crit_edge, %if.then.i140
  %retval.0.i162 = phi i32 [ %45, %if.then.i140 ], [ -22, %for.inc.6.i161.tplc_chan_get_reg.exit163_crit_edge ]
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 4
  %60 = ptrtoint ptr %rreg to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i162, ptr %rreg, align 4
  %61 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %62)
  %cmp1.i165 = icmp eq i32 %62, 50331648
  br i1 %cmp1.i165, label %tplc_chan_get_reg.exit163.if.then.i167_crit_edge, label %for.inc.i170

tplc_chan_get_reg.exit163.if.then.i167_crit_edge: ; preds = %tplc_chan_get_reg.exit163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i167

if.then.i167:                                     ; preds = %for.inc.6.i188.if.then.i167_crit_edge, %for.inc.5.i185.if.then.i167_crit_edge, %for.inc.4.i182.if.then.i167_crit_edge, %for.inc.3.i179.if.then.i167_crit_edge, %for.inc.2.i176.if.then.i167_crit_edge, %for.inc.1.i173.if.then.i167_crit_edge, %for.inc.i170.if.then.i167_crit_edge, %tplc_chan_get_reg.exit163.if.then.i167_crit_edge
  %i.02.lcssa.i166 = phi i32 [ 0, %tplc_chan_get_reg.exit163.if.then.i167_crit_edge ], [ 1, %for.inc.i170.if.then.i167_crit_edge ], [ 2, %for.inc.1.i173.if.then.i167_crit_edge ], [ 3, %for.inc.2.i176.if.then.i167_crit_edge ], [ 4, %for.inc.3.i179.if.then.i167_crit_edge ], [ 5, %for.inc.4.i182.if.then.i167_crit_edge ], [ 6, %for.inc.5.i185.if.then.i167_crit_edge ], [ 7, %for.inc.6.i188.if.then.i167_crit_edge ]
  %shift.i = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i166, i32 2
  %63 = ptrtoint ptr %shift.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %shift.i, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  br label %tplc_chan_get_shift.exit

for.inc.i170:                                     ; preds = %tplc_chan_get_reg.exit163
  %id.1.i168 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 1, i32 3
  %66 = ptrtoint ptr %id.1.i168 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %id.1.i168, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %67)
  %cmp1.1.i169 = icmp eq i32 %67, 50331648
  br i1 %cmp1.1.i169, label %for.inc.i170.if.then.i167_crit_edge, label %for.inc.1.i173

for.inc.i170.if.then.i167_crit_edge:              ; preds = %for.inc.i170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i167

for.inc.1.i173:                                   ; preds = %for.inc.i170
  %id.2.i171 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 2, i32 3
  %68 = ptrtoint ptr %id.2.i171 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %id.2.i171, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %69)
  %cmp1.2.i172 = icmp eq i32 %69, 50331648
  br i1 %cmp1.2.i172, label %for.inc.1.i173.if.then.i167_crit_edge, label %for.inc.2.i176

for.inc.1.i173.if.then.i167_crit_edge:            ; preds = %for.inc.1.i173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i167

for.inc.2.i176:                                   ; preds = %for.inc.1.i173
  %id.3.i174 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 3, i32 3
  %70 = ptrtoint ptr %id.3.i174 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %id.3.i174, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %71)
  %cmp1.3.i175 = icmp eq i32 %71, 50331648
  br i1 %cmp1.3.i175, label %for.inc.2.i176.if.then.i167_crit_edge, label %for.inc.3.i179

for.inc.2.i176.if.then.i167_crit_edge:            ; preds = %for.inc.2.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i167

for.inc.3.i179:                                   ; preds = %for.inc.2.i176
  %id.4.i177 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 4, i32 3
  %72 = ptrtoint ptr %id.4.i177 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %id.4.i177, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %73)
  %cmp1.4.i178 = icmp eq i32 %73, 50331648
  br i1 %cmp1.4.i178, label %for.inc.3.i179.if.then.i167_crit_edge, label %for.inc.4.i182

for.inc.3.i179.if.then.i167_crit_edge:            ; preds = %for.inc.3.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i167

for.inc.4.i182:                                   ; preds = %for.inc.3.i179
  %id.5.i180 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 5, i32 3
  %74 = ptrtoint ptr %id.5.i180 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %id.5.i180, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %75)
  %cmp1.5.i181 = icmp eq i32 %75, 50331648
  br i1 %cmp1.5.i181, label %for.inc.4.i182.if.then.i167_crit_edge, label %for.inc.5.i185

for.inc.4.i182.if.then.i167_crit_edge:            ; preds = %for.inc.4.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i167

for.inc.5.i185:                                   ; preds = %for.inc.4.i182
  %id.6.i183 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 6, i32 3
  %76 = ptrtoint ptr %id.6.i183 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %id.6.i183, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %77)
  %cmp1.6.i184 = icmp eq i32 %77, 50331648
  br i1 %cmp1.6.i184, label %for.inc.5.i185.if.then.i167_crit_edge, label %for.inc.6.i188

for.inc.5.i185.if.then.i167_crit_edge:            ; preds = %for.inc.5.i185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i167

for.inc.6.i188:                                   ; preds = %for.inc.5.i185
  %id.7.i186 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 7, i32 3
  %78 = ptrtoint ptr %id.7.i186 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %id.7.i186, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %79)
  %cmp1.7.i187 = icmp eq i32 %79, 50331648
  br i1 %cmp1.7.i187, label %for.inc.6.i188.if.then.i167_crit_edge, label %for.inc.6.i188.tplc_chan_get_shift.exit_crit_edge

for.inc.6.i188.tplc_chan_get_shift.exit_crit_edge: ; preds = %for.inc.6.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_shift.exit

for.inc.6.i188.if.then.i167_crit_edge:            ; preds = %for.inc.6.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i167

tplc_chan_get_shift.exit:                         ; preds = %for.inc.6.i188.tplc_chan_get_shift.exit_crit_edge, %if.then.i167
  %retval.0.i189 = phi i32 [ %65, %if.then.i167 ], [ -22, %for.inc.6.i188.tplc_chan_get_shift.exit_crit_edge ]
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 5
  %80 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i189, ptr %shift, align 4
  %81 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %82)
  %cmp1.i191 = icmp eq i32 %82, 67108864
  br i1 %cmp1.i191, label %tplc_chan_get_shift.exit.if.then.i194_crit_edge, label %for.inc.i197

tplc_chan_get_shift.exit.if.then.i194_crit_edge:  ; preds = %tplc_chan_get_shift.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i194

if.then.i194:                                     ; preds = %for.inc.6.i215.if.then.i194_crit_edge, %for.inc.5.i212.if.then.i194_crit_edge, %for.inc.4.i209.if.then.i194_crit_edge, %for.inc.3.i206.if.then.i194_crit_edge, %for.inc.2.i203.if.then.i194_crit_edge, %for.inc.1.i200.if.then.i194_crit_edge, %for.inc.i197.if.then.i194_crit_edge, %tplc_chan_get_shift.exit.if.then.i194_crit_edge
  %i.02.lcssa.i192 = phi i32 [ 0, %tplc_chan_get_shift.exit.if.then.i194_crit_edge ], [ 1, %for.inc.i197.if.then.i194_crit_edge ], [ 2, %for.inc.1.i200.if.then.i194_crit_edge ], [ 3, %for.inc.2.i203.if.then.i194_crit_edge ], [ 4, %for.inc.3.i206.if.then.i194_crit_edge ], [ 5, %for.inc.4.i209.if.then.i194_crit_edge ], [ 6, %for.inc.5.i212.if.then.i194_crit_edge ], [ 7, %for.inc.6.i215.if.then.i194_crit_edge ]
  %shift.i193 = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i192, i32 2
  %83 = ptrtoint ptr %shift.i193 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %shift.i193, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #10
  br label %tplc_chan_get_shift.exit217

for.inc.i197:                                     ; preds = %tplc_chan_get_shift.exit
  %id.1.i195 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 1, i32 3
  %86 = ptrtoint ptr %id.1.i195 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %id.1.i195, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %87)
  %cmp1.1.i196 = icmp eq i32 %87, 67108864
  br i1 %cmp1.1.i196, label %for.inc.i197.if.then.i194_crit_edge, label %for.inc.1.i200

for.inc.i197.if.then.i194_crit_edge:              ; preds = %for.inc.i197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i194

for.inc.1.i200:                                   ; preds = %for.inc.i197
  %id.2.i198 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 2, i32 3
  %88 = ptrtoint ptr %id.2.i198 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %id.2.i198, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %89)
  %cmp1.2.i199 = icmp eq i32 %89, 67108864
  br i1 %cmp1.2.i199, label %for.inc.1.i200.if.then.i194_crit_edge, label %for.inc.2.i203

for.inc.1.i200.if.then.i194_crit_edge:            ; preds = %for.inc.1.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i194

for.inc.2.i203:                                   ; preds = %for.inc.1.i200
  %id.3.i201 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 3, i32 3
  %90 = ptrtoint ptr %id.3.i201 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %id.3.i201, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %91)
  %cmp1.3.i202 = icmp eq i32 %91, 67108864
  br i1 %cmp1.3.i202, label %for.inc.2.i203.if.then.i194_crit_edge, label %for.inc.3.i206

for.inc.2.i203.if.then.i194_crit_edge:            ; preds = %for.inc.2.i203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i194

for.inc.3.i206:                                   ; preds = %for.inc.2.i203
  %id.4.i204 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 4, i32 3
  %92 = ptrtoint ptr %id.4.i204 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %id.4.i204, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %93)
  %cmp1.4.i205 = icmp eq i32 %93, 67108864
  br i1 %cmp1.4.i205, label %for.inc.3.i206.if.then.i194_crit_edge, label %for.inc.4.i209

for.inc.3.i206.if.then.i194_crit_edge:            ; preds = %for.inc.3.i206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i194

for.inc.4.i209:                                   ; preds = %for.inc.3.i206
  %id.5.i207 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 5, i32 3
  %94 = ptrtoint ptr %id.5.i207 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %id.5.i207, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %95)
  %cmp1.5.i208 = icmp eq i32 %95, 67108864
  br i1 %cmp1.5.i208, label %for.inc.4.i209.if.then.i194_crit_edge, label %for.inc.5.i212

for.inc.4.i209.if.then.i194_crit_edge:            ; preds = %for.inc.4.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i194

for.inc.5.i212:                                   ; preds = %for.inc.4.i209
  %id.6.i210 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 6, i32 3
  %96 = ptrtoint ptr %id.6.i210 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %id.6.i210, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %97)
  %cmp1.6.i211 = icmp eq i32 %97, 67108864
  br i1 %cmp1.6.i211, label %for.inc.5.i212.if.then.i194_crit_edge, label %for.inc.6.i215

for.inc.5.i212.if.then.i194_crit_edge:            ; preds = %for.inc.5.i212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i194

for.inc.6.i215:                                   ; preds = %for.inc.5.i212
  %id.7.i213 = getelementptr %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 7, i32 7, i32 3
  %98 = ptrtoint ptr %id.7.i213 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %id.7.i213, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %99)
  %cmp1.7.i214 = icmp eq i32 %99, 67108864
  br i1 %cmp1.7.i214, label %for.inc.6.i215.if.then.i194_crit_edge, label %for.inc.6.i215.tplc_chan_get_shift.exit217_crit_edge

for.inc.6.i215.tplc_chan_get_shift.exit217_crit_edge: ; preds = %for.inc.6.i215
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_shift.exit217

for.inc.6.i215.if.then.i194_crit_edge:            ; preds = %for.inc.6.i215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i194

tplc_chan_get_shift.exit217:                      ; preds = %for.inc.6.i215.tplc_chan_get_shift.exit217_crit_edge, %if.then.i194
  %retval.0.i216 = phi i32 [ %85, %if.then.i194 ], [ -22, %for.inc.6.i215.tplc_chan_get_shift.exit217_crit_edge ]
  %rshift = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 6
  %100 = ptrtoint ptr %rshift to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %retval.0.i216, ptr %rshift, align 4
  %max = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 3
  %101 = ptrtoint ptr %max to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %max, align 1
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %max38 = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 1
  %104 = ptrtoint ptr %max38 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %max38, align 4
  %min = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 2
  %105 = ptrtoint ptr %min to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %min, align 1
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %108 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %call.i, align 4
  %invert = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 5
  %109 = ptrtoint ptr %invert to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %invert, align 1
  %invert40 = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 8
  %111 = ptrtoint ptr %invert40 to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load = load i8, ptr %invert40, align 4
  %sh.diff = lshr i32 %110, 17
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %invert40, align 4
  %platform_max = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %1, i32 0, i32 4
  %112 = ptrtoint ptr %platform_max to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %platform_max, align 1
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  %platform_max41 = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 2
  %115 = ptrtoint ptr %platform_max41 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %platform_max41, align 4
  %index = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  %116 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %index, align 4
  %index42 = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 9, i32 1
  %118 = ptrtoint ptr %index42 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %index42, align 4
  %list = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 9, i32 2
  %119 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.soc_mixer_control, ptr %call.i, i32 0, i32 9, i32 2, i32 1
  %120 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %list, ptr %prev.i, align 4
  %call45 = tail call fastcc i32 @soc_tplg_kcontrol_bind_io(ptr noundef %1, ptr noundef %kc, ptr noundef %tplg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end52, label %if.then47

if.then47:                                        ; preds = %tplc_chan_get_shift.exit217
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 4
  %123 = ptrtoint ptr %ops.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %ops.i, align 1
  %put.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 4, i32 1
  %125 = ptrtoint ptr %put.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %put.i, align 1
  %info.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 4, i32 2
  %127 = ptrtoint ptr %info.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %info.i, align 1
  %129 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pos, align 4
  %131 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tplg, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %130 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %134 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %124, i32 noundef %126, i32 noundef %128, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup

if.end52:                                         ; preds = %tplc_chan_get_shift.exit217
  %135 = ptrtoint ptr %access to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %access, align 1
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #10
  %and.i = and i32 %137, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %and2.i = and i32 %137, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.then4.i, label %if.end52.if.end64_crit_edge

if.end52.if.end64_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then4.i:                                       ; preds = %if.end52
  %type.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 5, i32 1
  %138 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %139)
  %cond.i = icmp eq i32 %139, 16777216
  br i1 %cond.i, label %sw.bb.i, label %do.body.i

sw.bb.i:                                          ; preds = %if.then4.i
  %140 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev, align 4
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %141, i32 noundef 16, i32 noundef 3520) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.i.do.end59_crit_edge, label %if.end.i.i

sw.bb.i.do.end59_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end59

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %142 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 5, i32 2
  %143 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %call.i.i.i, align 4
  %arrayidx1.i.i = getelementptr i32, ptr %call.i.i.i, i32 1
  %144 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 8, ptr %arrayidx1.i.i, align 4
  %145 = ptrtoint ptr %142 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %142, align 1
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #10
  %arrayidx2.i.i = getelementptr i32, ptr %call.i.i.i, i32 2
  %148 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx2.i.i, align 4
  %step.i.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 5, i32 2, i32 0, i32 1
  %149 = ptrtoint ptr %step.i.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %step.i.i, align 1
  %151 = and i32 %150, -65536
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #10
  %mute.i.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 5, i32 2, i32 0, i32 2
  %153 = ptrtoint ptr %mute.i.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %mute.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool3.not.i.i = icmp eq i32 %154, 0
  %cond.i.i = select i1 %tobool3.not.i.i, i32 0, i32 65536
  %or.i.i = or i32 %cond.i.i, %152
  %arrayidx4.i.i = getelementptr i32, ptr %call.i.i.i, i32 3
  %155 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or.i.i, ptr %arrayidx4.i.i, align 4
  %tlv.i.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 10
  %156 = ptrtoint ptr %tlv.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call.i.i.i, ptr %tlv.i.i, align 4
  br label %if.end64

do.body.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_create_tlv.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dapm_widget_dmixer_create, %if.then9.i)) #10
          to label %do.end59 [label %if.then9.i], !srcloc !384

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %157 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev, align 4
  %159 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %type.i, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_create_tlv.__UNIQUE_ID_ddebug238, ptr noundef %158, ptr noundef nonnull @.str.60, i32 noundef %160) #10
  br label %do.end59

do.end59:                                         ; preds = %if.then9.i, %do.body.i, %sw.bb.i.do.end59_crit_edge
  %retval.0.i219228 = phi i32 [ -22, %do.body.i ], [ -12, %sw.bb.i.do.end59_crit_edge ], [ -22, %if.then9.i ]
  %161 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str.44, ptr noundef %name) #13
  br label %cleanup

if.end64:                                         ; preds = %if.end.i.i, %if.end52.if.end64_crit_edge
  %ops.i220 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %163 = ptrtoint ptr %ops.i220 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ops.i220, align 4
  %tobool.not.i221 = icmp eq ptr %164, null
  br i1 %tobool.not.i221, label %if.end64.cleanup_crit_edge, label %land.lhs.true.i

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end64
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %tobool2.not.i = icmp eq ptr %166, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %soc_tplg_init_kcontrol.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

soc_tplg_init_kcontrol.exit:                      ; preds = %land.lhs.true.i
  %comp.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %167 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %comp.i, align 4
  %169 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %index, align 4
  %call.i222 = tail call i32 %166(ptr noundef %168, i32 noundef %170, ptr noundef %kc, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %cmp66 = icmp slt i32 %call.i222, 0
  br i1 %cmp66, label %do.end70, label %soc_tplg_init_kcontrol.exit.cleanup_crit_edge

soc_tplg_init_kcontrol.exit.cleanup_crit_edge:    ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end70:                                         ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.47, ptr noundef %name) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %soc_tplg_init_kcontrol.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %do.end59, %if.then47, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.then47 ], [ %retval.0.i219228, %do.end59 ], [ %call.i222, %do.end70 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %soc_tplg_init_kcontrol.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soc_tplg_dapm_widget_denum_create(ptr nocapture noundef %tplg, ptr noundef %kc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pos, align 4
  %name = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 2
  %call = tail call i32 @strnlen(ptr noundef %name, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call)
  %cmp = icmp eq i32 %call, 44
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 64, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %priv, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add = add i32 %6, 1764
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %add
  store ptr %add.ptr, ptr %pos, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_dapm_widget_denum_create.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dapm_widget_denum_create, %if.then9)) #10
          to label %do.end [label %if.then9], !srcloc !384

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_dapm_widget_denum_create.__UNIQUE_ID_ddebug245, ptr noundef %10, ptr noundef nonnull @.str.122, ptr noundef %name) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end3
  %11 = ptrtoint ptr %call.i to i32
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %12 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %private_value, align 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call19 = tail call noalias ptr @devm_kstrdup(ptr noundef %14, ptr noundef %name, i32 noundef 3264) #10
  %name20 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 3
  %15 = ptrtoint ptr %name20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call19, ptr %name20, align 4
  %tobool22.not = icmp eq ptr %call19, null
  br i1 %tobool22.not, label %do.end.cleanup_crit_edge, label %if.end24

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %do.end
  %16 = ptrtoint ptr %kc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %kc, align 4
  %access = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %access to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %access, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %access26 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 5
  %20 = ptrtoint ptr %access26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %access26, align 4
  %channel = getelementptr inbounds %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3
  %id.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 0, i32 3
  %21 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %22)
  %cmp1.i = icmp eq i32 %22, 50331648
  br i1 %cmp1.i, label %if.end24.if.then.i_crit_edge, label %for.inc.i

if.end24.if.then.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %if.end24.if.then.i_crit_edge
  %i.02.lcssa.i = phi i32 [ 0, %if.end24.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ]
  %reg.i = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i, i32 1
  %23 = ptrtoint ptr %reg.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %reg.i, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  br label %tplc_chan_get_reg.exit

for.inc.i:                                        ; preds = %if.end24
  %id.1.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 1, i32 3
  %26 = ptrtoint ptr %id.1.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %id.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %27)
  %cmp1.1.i = icmp eq i32 %27, 50331648
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %id.2.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 2, i32 3
  %28 = ptrtoint ptr %id.2.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %id.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %29)
  %cmp1.2.i = icmp eq i32 %29, 50331648
  br i1 %cmp1.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %id.3.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 3, i32 3
  %30 = ptrtoint ptr %id.3.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %id.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %31)
  %cmp1.3.i = icmp eq i32 %31, 50331648
  br i1 %cmp1.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %id.4.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 4, i32 3
  %32 = ptrtoint ptr %id.4.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %id.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %33)
  %cmp1.4.i = icmp eq i32 %33, 50331648
  br i1 %cmp1.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %id.5.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 5, i32 3
  %34 = ptrtoint ptr %id.5.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %id.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %35)
  %cmp1.5.i = icmp eq i32 %35, 50331648
  br i1 %cmp1.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %id.6.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 6, i32 3
  %36 = ptrtoint ptr %id.6.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %id.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %37)
  %cmp1.6.i = icmp eq i32 %37, 50331648
  br i1 %cmp1.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %id.7.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 7, i32 3
  %38 = ptrtoint ptr %id.7.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %id.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %39)
  %cmp1.7.i = icmp eq i32 %39, 50331648
  br i1 %cmp1.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge

for.inc.6.i.tplc_chan_get_reg.exit_crit_edge:     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_reg.exit

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

tplc_chan_get_reg.exit:                           ; preds = %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge, %if.then.i
  %retval.0.i158 = phi i32 [ %25, %if.then.i ], [ -22, %for.inc.6.i.tplc_chan_get_reg.exit_crit_edge ]
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i158, ptr %call.i, align 4
  %41 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %42)
  %cmp1.i160 = icmp eq i32 %42, 50331648
  br i1 %cmp1.i160, label %tplc_chan_get_reg.exit.if.then.i162_crit_edge, label %for.inc.i165

tplc_chan_get_reg.exit.if.then.i162_crit_edge:    ; preds = %tplc_chan_get_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i162

if.then.i162:                                     ; preds = %for.inc.6.i183.if.then.i162_crit_edge, %for.inc.5.i180.if.then.i162_crit_edge, %for.inc.4.i177.if.then.i162_crit_edge, %for.inc.3.i174.if.then.i162_crit_edge, %for.inc.2.i171.if.then.i162_crit_edge, %for.inc.1.i168.if.then.i162_crit_edge, %for.inc.i165.if.then.i162_crit_edge, %tplc_chan_get_reg.exit.if.then.i162_crit_edge
  %i.02.lcssa.i161 = phi i32 [ 0, %tplc_chan_get_reg.exit.if.then.i162_crit_edge ], [ 1, %for.inc.i165.if.then.i162_crit_edge ], [ 2, %for.inc.1.i168.if.then.i162_crit_edge ], [ 3, %for.inc.2.i171.if.then.i162_crit_edge ], [ 4, %for.inc.3.i174.if.then.i162_crit_edge ], [ 5, %for.inc.4.i177.if.then.i162_crit_edge ], [ 6, %for.inc.5.i180.if.then.i162_crit_edge ], [ 7, %for.inc.6.i183.if.then.i162_crit_edge ]
  %shift.i = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i161, i32 2
  %43 = ptrtoint ptr %shift.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %shift.i, align 1
  %45 = lshr i32 %44, 24
  %phi.cast = trunc i32 %45 to i8
  br label %tplc_chan_get_shift.exit

for.inc.i165:                                     ; preds = %tplc_chan_get_reg.exit
  %id.1.i163 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 1, i32 3
  %46 = ptrtoint ptr %id.1.i163 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %id.1.i163, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %47)
  %cmp1.1.i164 = icmp eq i32 %47, 50331648
  br i1 %cmp1.1.i164, label %for.inc.i165.if.then.i162_crit_edge, label %for.inc.1.i168

for.inc.i165.if.then.i162_crit_edge:              ; preds = %for.inc.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i162

for.inc.1.i168:                                   ; preds = %for.inc.i165
  %id.2.i166 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 2, i32 3
  %48 = ptrtoint ptr %id.2.i166 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %id.2.i166, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %49)
  %cmp1.2.i167 = icmp eq i32 %49, 50331648
  br i1 %cmp1.2.i167, label %for.inc.1.i168.if.then.i162_crit_edge, label %for.inc.2.i171

for.inc.1.i168.if.then.i162_crit_edge:            ; preds = %for.inc.1.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i162

for.inc.2.i171:                                   ; preds = %for.inc.1.i168
  %id.3.i169 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 3, i32 3
  %50 = ptrtoint ptr %id.3.i169 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %id.3.i169, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %51)
  %cmp1.3.i170 = icmp eq i32 %51, 50331648
  br i1 %cmp1.3.i170, label %for.inc.2.i171.if.then.i162_crit_edge, label %for.inc.3.i174

for.inc.2.i171.if.then.i162_crit_edge:            ; preds = %for.inc.2.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i162

for.inc.3.i174:                                   ; preds = %for.inc.2.i171
  %id.4.i172 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 4, i32 3
  %52 = ptrtoint ptr %id.4.i172 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %id.4.i172, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %53)
  %cmp1.4.i173 = icmp eq i32 %53, 50331648
  br i1 %cmp1.4.i173, label %for.inc.3.i174.if.then.i162_crit_edge, label %for.inc.4.i177

for.inc.3.i174.if.then.i162_crit_edge:            ; preds = %for.inc.3.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i162

for.inc.4.i177:                                   ; preds = %for.inc.3.i174
  %id.5.i175 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 5, i32 3
  %54 = ptrtoint ptr %id.5.i175 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %id.5.i175, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %55)
  %cmp1.5.i176 = icmp eq i32 %55, 50331648
  br i1 %cmp1.5.i176, label %for.inc.4.i177.if.then.i162_crit_edge, label %for.inc.5.i180

for.inc.4.i177.if.then.i162_crit_edge:            ; preds = %for.inc.4.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i162

for.inc.5.i180:                                   ; preds = %for.inc.4.i177
  %id.6.i178 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 6, i32 3
  %56 = ptrtoint ptr %id.6.i178 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %id.6.i178, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %57)
  %cmp1.6.i179 = icmp eq i32 %57, 50331648
  br i1 %cmp1.6.i179, label %for.inc.5.i180.if.then.i162_crit_edge, label %for.inc.6.i183

for.inc.5.i180.if.then.i162_crit_edge:            ; preds = %for.inc.5.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i162

for.inc.6.i183:                                   ; preds = %for.inc.5.i180
  %id.7.i181 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 7, i32 3
  %58 = ptrtoint ptr %id.7.i181 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %id.7.i181, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %59)
  %cmp1.7.i182 = icmp eq i32 %59, 50331648
  br i1 %cmp1.7.i182, label %for.inc.6.i183.if.then.i162_crit_edge, label %for.inc.6.i183.tplc_chan_get_shift.exit_crit_edge

for.inc.6.i183.tplc_chan_get_shift.exit_crit_edge: ; preds = %for.inc.6.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_shift.exit

for.inc.6.i183.if.then.i162_crit_edge:            ; preds = %for.inc.6.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i162

tplc_chan_get_shift.exit:                         ; preds = %for.inc.6.i183.tplc_chan_get_shift.exit_crit_edge, %if.then.i162
  %retval.0.i184 = phi i8 [ %phi.cast, %if.then.i162 ], [ -22, %for.inc.6.i183.tplc_chan_get_shift.exit_crit_edge ]
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 1
  %60 = ptrtoint ptr %shift_l to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %retval.0.i184, ptr %shift_l, align 4
  %61 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %62)
  %cmp1.i186 = icmp eq i32 %62, 67108864
  br i1 %cmp1.i186, label %tplc_chan_get_shift.exit.if.then.i189_crit_edge, label %for.inc.i192

tplc_chan_get_shift.exit.if.then.i189_crit_edge:  ; preds = %tplc_chan_get_shift.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i189

if.then.i189:                                     ; preds = %for.inc.6.i210.if.then.i189_crit_edge, %for.inc.5.i207.if.then.i189_crit_edge, %for.inc.4.i204.if.then.i189_crit_edge, %for.inc.3.i201.if.then.i189_crit_edge, %for.inc.2.i198.if.then.i189_crit_edge, %for.inc.1.i195.if.then.i189_crit_edge, %for.inc.i192.if.then.i189_crit_edge, %tplc_chan_get_shift.exit.if.then.i189_crit_edge
  %i.02.lcssa.i187 = phi i32 [ 0, %tplc_chan_get_shift.exit.if.then.i189_crit_edge ], [ 1, %for.inc.i192.if.then.i189_crit_edge ], [ 2, %for.inc.1.i195.if.then.i189_crit_edge ], [ 3, %for.inc.2.i198.if.then.i189_crit_edge ], [ 4, %for.inc.3.i201.if.then.i189_crit_edge ], [ 5, %for.inc.4.i204.if.then.i189_crit_edge ], [ 6, %for.inc.5.i207.if.then.i189_crit_edge ], [ 7, %for.inc.6.i210.if.then.i189_crit_edge ]
  %shift.i188 = getelementptr %struct.snd_soc_tplg_channel, ptr %channel, i32 %i.02.lcssa.i187, i32 2
  %63 = ptrtoint ptr %shift.i188 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %shift.i188, align 1
  %65 = lshr i32 %64, 24
  %phi.cast226 = trunc i32 %65 to i8
  br label %tplc_chan_get_shift.exit212

for.inc.i192:                                     ; preds = %tplc_chan_get_shift.exit
  %id.1.i190 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 1, i32 3
  %66 = ptrtoint ptr %id.1.i190 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %id.1.i190, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %67)
  %cmp1.1.i191 = icmp eq i32 %67, 67108864
  br i1 %cmp1.1.i191, label %for.inc.i192.if.then.i189_crit_edge, label %for.inc.1.i195

for.inc.i192.if.then.i189_crit_edge:              ; preds = %for.inc.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i189

for.inc.1.i195:                                   ; preds = %for.inc.i192
  %id.2.i193 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 2, i32 3
  %68 = ptrtoint ptr %id.2.i193 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %id.2.i193, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %69)
  %cmp1.2.i194 = icmp eq i32 %69, 67108864
  br i1 %cmp1.2.i194, label %for.inc.1.i195.if.then.i189_crit_edge, label %for.inc.2.i198

for.inc.1.i195.if.then.i189_crit_edge:            ; preds = %for.inc.1.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i189

for.inc.2.i198:                                   ; preds = %for.inc.1.i195
  %id.3.i196 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 3, i32 3
  %70 = ptrtoint ptr %id.3.i196 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %id.3.i196, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %71)
  %cmp1.3.i197 = icmp eq i32 %71, 67108864
  br i1 %cmp1.3.i197, label %for.inc.2.i198.if.then.i189_crit_edge, label %for.inc.3.i201

for.inc.2.i198.if.then.i189_crit_edge:            ; preds = %for.inc.2.i198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i189

for.inc.3.i201:                                   ; preds = %for.inc.2.i198
  %id.4.i199 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 4, i32 3
  %72 = ptrtoint ptr %id.4.i199 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %id.4.i199, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %73)
  %cmp1.4.i200 = icmp eq i32 %73, 67108864
  br i1 %cmp1.4.i200, label %for.inc.3.i201.if.then.i189_crit_edge, label %for.inc.4.i204

for.inc.3.i201.if.then.i189_crit_edge:            ; preds = %for.inc.3.i201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i189

for.inc.4.i204:                                   ; preds = %for.inc.3.i201
  %id.5.i202 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 5, i32 3
  %74 = ptrtoint ptr %id.5.i202 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %id.5.i202, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %75)
  %cmp1.5.i203 = icmp eq i32 %75, 67108864
  br i1 %cmp1.5.i203, label %for.inc.4.i204.if.then.i189_crit_edge, label %for.inc.5.i207

for.inc.4.i204.if.then.i189_crit_edge:            ; preds = %for.inc.4.i204
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i189

for.inc.5.i207:                                   ; preds = %for.inc.4.i204
  %id.6.i205 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 6, i32 3
  %76 = ptrtoint ptr %id.6.i205 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %id.6.i205, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %77)
  %cmp1.6.i206 = icmp eq i32 %77, 67108864
  br i1 %cmp1.6.i206, label %for.inc.5.i207.if.then.i189_crit_edge, label %for.inc.6.i210

for.inc.5.i207.if.then.i189_crit_edge:            ; preds = %for.inc.5.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i189

for.inc.6.i210:                                   ; preds = %for.inc.5.i207
  %id.7.i208 = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 3, i32 7, i32 3
  %78 = ptrtoint ptr %id.7.i208 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %id.7.i208, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %79)
  %cmp1.7.i209 = icmp eq i32 %79, 67108864
  br i1 %cmp1.7.i209, label %for.inc.6.i210.if.then.i189_crit_edge, label %for.inc.6.i210.tplc_chan_get_shift.exit212_crit_edge

for.inc.6.i210.tplc_chan_get_shift.exit212_crit_edge: ; preds = %for.inc.6.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %tplc_chan_get_shift.exit212

for.inc.6.i210.if.then.i189_crit_edge:            ; preds = %for.inc.6.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i189

tplc_chan_get_shift.exit212:                      ; preds = %for.inc.6.i210.tplc_chan_get_shift.exit212_crit_edge, %if.then.i189
  %retval.0.i211 = phi i8 [ %phi.cast226, %if.then.i189 ], [ -22, %for.inc.6.i210.tplc_chan_get_shift.exit212_crit_edge ]
  %shift_r = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 2
  %80 = ptrtoint ptr %shift_r to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %retval.0.i211, ptr %shift_r, align 1
  %items = getelementptr inbounds %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 4
  %81 = ptrtoint ptr %items to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %items, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %items36 = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 3
  %84 = ptrtoint ptr %items36 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %items36, align 4
  %mask = getelementptr inbounds %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 5
  %85 = ptrtoint ptr %mask to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %mask, align 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %mask37 = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 4
  %88 = ptrtoint ptr %mask37 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %mask37, align 4
  %index = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  %89 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %index, align 4
  %index38 = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 8, i32 1
  %91 = ptrtoint ptr %index38 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %index38, align 4
  %info = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 4, i32 2
  %92 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %info, align 1
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %94, label %do.end67 [
    i32 6, label %tplc_chan_get_shift.exit212.sw.bb_crit_edge
    i32 67, label %tplc_chan_get_shift.exit212.sw.bb_crit_edge227
    i32 4, label %tplc_chan_get_shift.exit212.sw.bb52_crit_edge
    i32 65, label %tplc_chan_get_shift.exit212.sw.bb52_crit_edge228
    i32 66, label %tplc_chan_get_shift.exit212.sw.bb52_crit_edge229
  ]

tplc_chan_get_shift.exit212.sw.bb52_crit_edge229: ; preds = %tplc_chan_get_shift.exit212
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb52

tplc_chan_get_shift.exit212.sw.bb52_crit_edge228: ; preds = %tplc_chan_get_shift.exit212
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb52

tplc_chan_get_shift.exit212.sw.bb52_crit_edge:    ; preds = %tplc_chan_get_shift.exit212
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb52

tplc_chan_get_shift.exit212.sw.bb_crit_edge227:   ; preds = %tplc_chan_get_shift.exit212
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

tplc_chan_get_shift.exit212.sw.bb_crit_edge:      ; preds = %tplc_chan_get_shift.exit212
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %tplc_chan_get_shift.exit212.sw.bb_crit_edge, %tplc_chan_get_shift.exit212.sw.bb_crit_edge227
  %96 = ptrtoint ptr %items to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %items, align 1
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %98)
  %cmp.i = icmp ugt i32 %98, 16
  br i1 %cmp.i, label %sw.bb.do.end46_crit_edge, label %devm_kcalloc.exit.i

sw.bb.do.end46_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

devm_kcalloc.exit.i:                              ; preds = %sw.bb
  %99 = shl nuw nsw i32 %98, 2
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %101, i32 noundef %99, i32 noundef 3520) #10
  %dvalues.i = getelementptr inbounds %struct.soc_enum, ptr %call.i, i32 0, i32 8, i32 4, i32 0, i32 2
  %102 = ptrtoint ptr %dvalues.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call5.i.i.i, ptr %dvalues.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.do.end46_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.do.end46_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %103 = ptrtoint ptr %items to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %items, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp722.not.i = icmp eq i32 %104, 0
  br i1 %cmp722.not.i, label %for.cond.preheader.i.sw.bb52_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.sw.bb52_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb52

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_soc_tplg_enum_control, ptr %1, i32 0, i32 8, i32 %i.023.i
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %arrayidx.i, align 1
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #10
  %108 = ptrtoint ptr %dvalues.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dvalues.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %109, i32 %i.023.i
  %110 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %107, ptr %arrayidx10.i, align 4
  %inc.i = add nuw i32 %i.023.i, 1
  %111 = ptrtoint ptr %items to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %items, align 1
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #10
  %cmp7.i = icmp ult i32 %inc.i, %113
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sw.bb52_crit_edge

for.body.i.sw.bb52_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb52

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end46:                                         ; preds = %devm_kcalloc.exit.i.do.end46_crit_edge, %sw.bb.do.end46_crit_edge
  %retval.0.i213.ph = phi i32 [ -12, %devm_kcalloc.exit.i.do.end46_crit_edge ], [ -22, %sw.bb.do.end46_crit_edge ]
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.71, ptr noundef %name) #13
  br label %cleanup

sw.bb52:                                          ; preds = %for.body.i.sw.bb52_crit_edge, %for.cond.preheader.i.sw.bb52_crit_edge, %tplc_chan_get_shift.exit212.sw.bb52_crit_edge, %tplc_chan_get_shift.exit212.sw.bb52_crit_edge228, %tplc_chan_get_shift.exit212.sw.bb52_crit_edge229
  %call53 = tail call fastcc i32 @soc_tplg_denum_create_texts(ptr noundef %tplg, ptr noundef nonnull %call.i, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end59, label %sw.epilog

do.end59:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.74, ptr noundef %name) #13
  br label %cleanup

do.end67:                                         ; preds = %tplc_chan_get_shift.exit212
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.77, i32 noundef %93, ptr noundef %name) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb52
  %call76 = tail call fastcc i32 @soc_tplg_kcontrol_bind_io(ptr noundef %1, ptr noundef %kc, ptr noundef %tplg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end83, label %if.then78

if.then78:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 4
  %122 = ptrtoint ptr %ops.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %ops.i, align 1
  %put.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 4, i32 1
  %124 = ptrtoint ptr %put.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %put.i, align 1
  %126 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %info, align 1
  %128 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pos, align 4
  %130 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tplg, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %129 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %133 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %123, i32 noundef %125, i32 noundef %127, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup

if.end83:                                         ; preds = %sw.epilog
  %ops.i215 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %134 = ptrtoint ptr %ops.i215 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ops.i215, align 4
  %tobool.not.i216 = icmp eq ptr %135, null
  br i1 %tobool.not.i216, label %if.end83.cleanup_crit_edge, label %land.lhs.true.i

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end83
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %tobool2.not.i = icmp eq ptr %137, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %soc_tplg_init_kcontrol.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

soc_tplg_init_kcontrol.exit:                      ; preds = %land.lhs.true.i
  %comp.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %138 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %comp.i, align 4
  %140 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %index, align 4
  %call.i217 = tail call i32 %137(ptr noundef %139, i32 noundef %141, ptr noundef %kc, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %cmp85 = icmp slt i32 %call.i217, 0
  br i1 %cmp85, label %do.end90, label %soc_tplg_init_kcontrol.exit.cleanup_crit_edge

soc_tplg_init_kcontrol.exit.cleanup_crit_edge:    ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end90:                                         ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.47, ptr noundef %name) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %soc_tplg_init_kcontrol.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.then78, %do.end67, %do.end59, %do.end46, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end67 ], [ %call53, %do.end59 ], [ %call76, %if.then78 ], [ %call.i217, %do.end90 ], [ %retval.0.i213.ph, %do.end46 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %soc_tplg_init_kcontrol.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @soc_tplg_dapm_widget_dbytes_create(ptr nocapture noundef %tplg, ptr noundef %kc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 1
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pos, align 4
  %name = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 2
  %call = tail call i32 @strnlen(ptr noundef %name, i32 noundef 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call)
  %cmp = icmp eq i32 %call, 44
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 48, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %priv, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add = add i32 %6, 240
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %add
  store ptr %add.ptr, ptr %pos, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @soc_tplg_dapm_widget_dbytes_create.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@soc_tplg_dapm_widget_dbytes_create, %if.then9)) #10
          to label %do.end [label %if.then9], !srcloc !384

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %access = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %access to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %access, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @soc_tplg_dapm_widget_dbytes_create.__UNIQUE_ID_ddebug246, ptr noundef %10, ptr noundef nonnull @.str.87, ptr noundef %name, i32 noundef %12) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end3
  %13 = ptrtoint ptr %call.i to i32
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %14 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %private_value, align 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call20 = tail call noalias ptr @devm_kstrdup(ptr noundef %16, ptr noundef %name, i32 noundef 3264) #10
  %name21 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 3
  %17 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call20, ptr %name21, align 4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %do.end.cleanup_crit_edge, label %if.end25

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %18 = ptrtoint ptr %kc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %kc, align 4
  %access27 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %access27 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %access27, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %access28 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 5
  %22 = ptrtoint ptr %access28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %access28, align 4
  %max = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %max to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %max, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call.i, align 4
  %list = getelementptr inbounds %struct.soc_bytes_ext, ptr %call.i, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.soc_bytes_ext, ptr %call.i, i32 0, i32 1, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list, ptr %prev.i, align 4
  %call31 = tail call fastcc i32 @soc_tplg_kcontrol_bind_io(ptr noundef %1, ptr noundef %kc, ptr noundef %tplg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %ops.i, align 1
  %put.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %put.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %put.i, align 1
  %info.i = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %1, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %info.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %info.i, align 1
  %37 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pos, align 4
  %39 = ptrtoint ptr %tplg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tplg, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end25
  %ops.i83 = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 11
  %43 = ptrtoint ptr %ops.i83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i83, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end38.cleanup_crit_edge, label %land.lhs.true.i

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end38
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool2.not.i = icmp eq ptr %46, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %soc_tplg_init_kcontrol.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

soc_tplg_init_kcontrol.exit:                      ; preds = %land.lhs.true.i
  %comp.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 5
  %47 = ptrtoint ptr %comp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %comp.i, align 4
  %index.i = getelementptr inbounds %struct.soc_tplg, ptr %tplg, i32 0, i32 6
  %49 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index.i, align 4
  %call.i84 = tail call i32 %46(ptr noundef %48, i32 noundef %50, ptr noundef %kc, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp40 = icmp slt i32 %call.i84, 0
  br i1 %cmp40, label %do.end44, label %soc_tplg_init_kcontrol.exit.cleanup_crit_edge

soc_tplg_init_kcontrol.exit.cleanup_crit_edge:    ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end44:                                         ; preds = %soc_tplg_init_kcontrol.exit
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.47, ptr noundef %name) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %soc_tplg_init_kcontrol.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then33, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.then33 ], [ %call.i84, %do.end44 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %soc_tplg_init_kcontrol.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_new_control(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_new_control_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dapm_free_widget(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_new_compress(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_register_dai(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_dai_widgets(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_dai(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_find_dai(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_widgets(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_remove_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_get_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !124, !125, !126, !127, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !151, !153, !154, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !169, !170, !172, !174, !175, !176, !177, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !217, !219, !220, !221, !223, !224, !226, !227, !229, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !253, !254, !256, !258, !259, !260, !262, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !284, !286, !288, !289, !290, !291, !293, !294, !295, !297, !298, !299, !300, !302, !303, !304, !306, !307, !309, !310, !311, !312, !314, !315, !316, !318, !319, !321, !322, !323, !324, !326, !328, !329, !330, !332, !333, !334, !335, !337, !338, !339, !341, !342, !343, !344, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !359, !360, !361, !362, !364, !365, !366, !368, !369, !370, !371, !373, !374}
!llvm.module.flags = !{!375, !376, !377, !378, !379, !380, !381, !382}
!llvm.ident = !{!383}

!0 = !{ptr @__ksymtab_snd_soc_tplg_widget_bind_event, !1, !"__ksymtab_snd_soc_tplg_widget_bind_event", i1 false, i1 false}
!1 = !{!"../sound/soc/soc-topology.c", i32 617, i32 1}
!2 = !{ptr @__ksymtab_snd_soc_tplg_component_load, !3, !"__ksymtab_snd_soc_tplg_component_load", i1 false, i1 false}
!3 = !{!"../sound/soc/soc-topology.c", i32 2698, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/soc-topology.c", i32 2745, i32 5}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @snd_soc_tplg_component_remove._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_soc_tplg_component_remove._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_snd_soc_tplg_component_remove, !13, !"__ksymtab_snd_soc_tplg_component_remove", i1 false, i1 false}
!13 = !{!"../sound/soc/soc-topology.c", i32 2757, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/soc-topology.c", i32 2616, i32 5}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @soc_tplg_process_headers._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @soc_tplg_process_headers._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/soc-topology.c", i32 2626, i32 5}
!21 = !{ptr @soc_tplg_process_headers._entry.7, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @soc_tplg_process_headers._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/soc-topology.c", i32 2644, i32 3}
!25 = !{ptr @soc_tplg_process_headers._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @soc_tplg_process_headers._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/soc-topology.c", i32 2482, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @soc_valid_header._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @soc_valid_header._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/soc-topology.c", i32 2490, i32 3}
!34 = !{ptr @soc_valid_header._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @soc_valid_header._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/soc-topology.c", i32 2499, i32 3}
!38 = !{ptr @soc_valid_header._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @soc_valid_header._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/soc-topology.c", i32 2507, i32 3}
!42 = !{ptr @soc_valid_header._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @soc_valid_header._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/soc-topology.c", i32 2517, i32 3}
!46 = !{ptr @soc_valid_header._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @soc_valid_header._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/soc-topology.c", i32 2526, i32 3}
!50 = !{ptr @soc_valid_header._entry.27, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @soc_valid_header._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/soc-topology.c", i32 2587, i32 3}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @soc_tplg_load_header.__UNIQUE_ID_ddebug252, !53, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/soc-topology.c", i32 1043, i32 2}
!59 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @soc_tplg_kcontrol_elems_load.__UNIQUE_ID_ddebug242, !58, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/soc-topology.c", i32 1050, i32 4}
!63 = !{ptr @soc_tplg_kcontrol_elems_load._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @soc_tplg_kcontrol_elems_load._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/soc-topology.c", i32 1082, i32 4}
!67 = !{ptr @soc_tplg_kcontrol_elems_load._entry.36, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @soc_tplg_kcontrol_elems_load._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/soc-topology.c", i32 767, i32 16}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/soc-topology.c", i32 769, i32 3}
!73 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @soc_tplg_dmixer_create._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @soc_tplg_dmixer_create._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/soc-topology.c", i32 788, i32 3}
!78 = !{ptr @soc_tplg_dmixer_create.__UNIQUE_ID_ddebug240, !77, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/soc-topology.c", i32 827, i32 4}
!81 = !{ptr @soc_tplg_dmixer_create._entry.43, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @soc_tplg_dmixer_create._entry_ptr.45, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/soc-topology.c", i32 836, i32 4}
!85 = !{ptr @soc_tplg_dmixer_create._entry.46, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @soc_tplg_dmixer_create._entry_ptr.48, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/soc-topology.c", i32 845, i32 4}
!89 = !{ptr @soc_tplg_dmixer_create._entry.49, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @soc_tplg_dmixer_create._entry_ptr.51, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/soc-topology.c", i32 90, i32 3}
!93 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @soc_tplg_check_elem_count._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @soc_tplg_check_elem_count._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/soc-topology.c", i32 98, i32 3}
!98 = !{ptr @soc_tplg_check_elem_count._entry.54, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @soc_tplg_check_elem_count._entry_ptr.56, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @io_ops, !101, !"io_ops", i1 false, i1 false}
!101 = !{!"../sound/soc/soc-topology.c", i32 127, i32 47}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/soc-topology.c", i32 239, i32 2}
!104 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @soc_control_err._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @soc_control_err._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/soc-topology.c", i32 669, i32 4}
!109 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @soc_tplg_create_tlv.__UNIQUE_ID_ddebug238, !108, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/soc-topology.c", i32 332, i32 3}
!113 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @soc_tplg_add_dcontrol._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @soc_tplg_add_dcontrol._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/soc-topology.c", i32 339, i32 3}
!118 = !{ptr @soc_tplg_add_dcontrol._entry.63, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @soc_tplg_add_dcontrol._entry_ptr.65, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/soc-topology.c", i32 931, i32 16}
!122 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/soc-topology.c", i32 933, i32 3}
!124 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @soc_tplg_denum_create._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @soc_tplg_denum_create._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/soc-topology.c", i32 953, i32 3}
!129 = !{ptr @soc_tplg_denum_create.__UNIQUE_ID_ddebug241, !128, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/soc-topology.c", i32 979, i32 5}
!132 = !{ptr @soc_tplg_denum_create._entry.70, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @soc_tplg_denum_create._entry_ptr.72, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/soc-topology.c", i32 990, i32 5}
!136 = !{ptr @soc_tplg_denum_create._entry.73, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @soc_tplg_denum_create._entry_ptr.75, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/soc-topology.c", i32 998, i32 4}
!140 = !{ptr @soc_tplg_denum_create._entry.76, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @soc_tplg_denum_create._entry_ptr.78, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @soc_tplg_denum_create._entry.79, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../sound/soc/soc-topology.c", i32 1015, i32 4}
!144 = !{ptr @soc_tplg_denum_create._entry_ptr.80, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/soc-topology.c", i32 1024, i32 4}
!147 = !{ptr @soc_tplg_denum_create._entry.81, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @soc_tplg_denum_create._entry_ptr.83, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/soc-topology.c", i32 689, i32 10}
!151 = !{ptr @.str.85, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/soc-topology.c", i32 690, i32 3}
!153 = !{ptr @.str.86, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @soc_tplg_dbytes_create._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @soc_tplg_dbytes_create._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.87, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/soc-topology.c", i32 710, i32 3}
!158 = !{ptr @soc_tplg_dbytes_create.__UNIQUE_ID_ddebug239, !157, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!159 = !{ptr @soc_tplg_dbytes_create._entry.88, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../sound/soc/soc-topology.c", i32 736, i32 4}
!161 = !{ptr @soc_tplg_dbytes_create._entry_ptr.89, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @soc_tplg_dbytes_create._entry.90, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../sound/soc/soc-topology.c", i32 745, i32 4}
!164 = !{ptr @soc_tplg_dbytes_create._entry_ptr.91, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.92, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/soc-topology.c", i32 230, i32 2}
!167 = !{ptr @.str.93, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @soc_bind_err._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @soc_bind_err._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.94, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/soc-topology.c", i32 1115, i32 42}
!172 = !{ptr @.str.95, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/soc-topology.c", i32 1117, i32 3}
!174 = !{ptr @.str.96, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @soc_tplg_dapm_graph_elems_load._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @soc_tplg_dapm_graph_elems_load._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/soc-topology.c", i32 1122, i32 2}
!179 = !{ptr @soc_tplg_dapm_graph_elems_load.__UNIQUE_ID_ddebug243, !178, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!180 = !{ptr @.str.99, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/soc-topology.c", i32 1181, i32 4}
!182 = !{ptr @soc_tplg_dapm_graph_elems_load._entry.98, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @soc_tplg_dapm_graph_elems_load._entry_ptr.100, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.101, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/soc-topology.c", i32 1588, i32 2}
!186 = !{ptr @.str.102, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @soc_tplg_dapm_widget_elems_load.__UNIQUE_ID_ddebug249, !185, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!188 = !{ptr @.str.103, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/soc-topology.c", i32 1600, i32 4}
!190 = !{ptr @soc_tplg_dapm_widget_elems_load._entry, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @soc_tplg_dapm_widget_elems_load._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.105, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/soc-topology.c", i32 1606, i32 4}
!194 = !{ptr @soc_tplg_dapm_widget_elems_load._entry.104, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @soc_tplg_dapm_widget_elems_load._entry_ptr.106, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.108, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/soc-topology.c", i32 1612, i32 4}
!198 = !{ptr @soc_tplg_dapm_widget_elems_load._entry.107, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @soc_tplg_dapm_widget_elems_load._entry_ptr.109, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.111, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/soc-topology.c", i32 1618, i32 4}
!202 = !{ptr @soc_tplg_dapm_widget_elems_load._entry.110, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @soc_tplg_dapm_widget_elems_load._entry_ptr.112, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/soc-topology.c", i32 1440, i32 2}
!206 = !{ptr @.str.114, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @soc_tplg_dapm_widget_create.__UNIQUE_ID_ddebug247, !205, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!208 = !{ptr @.str.115, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/soc-topology.c", i32 1528, i32 4}
!210 = !{ptr @soc_tplg_dapm_widget_create._entry, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @soc_tplg_dapm_widget_create._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.116, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/soc-topology.c", i32 1537, i32 2}
!214 = !{ptr @soc_tplg_dapm_widget_create.__UNIQUE_ID_ddebug248, !213, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!215 = !{ptr @dapm_map, !216, !"dapm_map", i1 false, i1 false}
!216 = !{!"../sound/soc/soc-topology.c", i32 162, i32 34}
!217 = !{ptr @.str.117, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/soc-topology.c", i32 1226, i32 2}
!219 = !{ptr @.str.118, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @soc_tplg_dapm_widget_dmixer_create.__UNIQUE_ID_ddebug244, !218, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!221 = !{ptr @soc_tplg_dapm_widget_dmixer_create._entry, !222, !"_entry", i1 false, i1 false}
!222 = !{!"../sound/soc/soc-topology.c", i32 1263, i32 3}
!223 = !{ptr @soc_tplg_dapm_widget_dmixer_create._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @soc_tplg_dapm_widget_dmixer_create._entry.119, !225, !"_entry", i1 false, i1 false}
!225 = !{!"../sound/soc/soc-topology.c", i32 1272, i32 3}
!226 = !{ptr @soc_tplg_dapm_widget_dmixer_create._entry_ptr.120, !225, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.121, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/soc-topology.c", i32 1299, i32 2}
!229 = !{ptr @.str.122, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @soc_tplg_dapm_widget_denum_create.__UNIQUE_ID_ddebug245, !228, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!231 = !{ptr @soc_tplg_dapm_widget_denum_create._entry, !232, !"_entry", i1 false, i1 false}
!232 = !{!"../sound/soc/soc-topology.c", i32 1325, i32 4}
!233 = !{ptr @soc_tplg_dapm_widget_denum_create._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @soc_tplg_dapm_widget_denum_create._entry.123, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../sound/soc/soc-topology.c", i32 1335, i32 4}
!236 = !{ptr @soc_tplg_dapm_widget_denum_create._entry_ptr.124, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @soc_tplg_dapm_widget_denum_create._entry.125, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../sound/soc/soc-topology.c", i32 1341, i32 3}
!239 = !{ptr @soc_tplg_dapm_widget_denum_create._entry_ptr.126, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @soc_tplg_dapm_widget_denum_create._entry.127, !241, !"_entry", i1 false, i1 false}
!241 = !{!"../sound/soc/soc-topology.c", i32 1357, i32 3}
!242 = !{ptr @soc_tplg_dapm_widget_denum_create._entry_ptr.128, !241, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.129, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/soc-topology.c", i32 1385, i32 2}
!245 = !{ptr @soc_tplg_dapm_widget_dbytes_create.__UNIQUE_ID_ddebug246, !244, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!246 = !{ptr @soc_tplg_dapm_widget_dbytes_create._entry, !247, !"_entry", i1 false, i1 false}
!247 = !{!"../sound/soc/soc-topology.c", i32 1410, i32 3}
!248 = !{ptr @soc_tplg_dapm_widget_dbytes_create._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.130, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/soc-topology.c", i32 1960, i32 3}
!251 = !{ptr @.str.131, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @soc_tplg_pcm_elems_load._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @soc_tplg_pcm_elems_load._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.132, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/soc-topology.c", i32 1968, i32 11}
!256 = !{ptr @.str.134, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/soc-topology.c", i32 1969, i32 3}
!258 = !{ptr @soc_tplg_pcm_elems_load._entry.133, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @soc_tplg_pcm_elems_load._entry_ptr.135, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.136, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/soc-topology.c", i32 2008, i32 2}
!262 = !{ptr @soc_tplg_pcm_elems_load.__UNIQUE_ID_ddebug250, !261, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!263 = !{ptr @.str.137, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/soc-topology.c", i32 1913, i32 3}
!265 = !{ptr @.str.138, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @pcm_new_ver._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @pcm_new_ver._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.140, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/soc-topology.c", i32 1917, i32 2}
!270 = !{ptr @.str.141, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @pcm_new_ver._entry.139, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @pcm_new_ver._entry_ptr.142, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.143, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/soc-topology.c", i32 1731, i32 3}
!275 = !{ptr @.str.144, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @soc_tplg_dai_create._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @soc_tplg_dai_create._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.146, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/soc-topology.c", i32 1748, i32 3}
!280 = !{ptr @soc_tplg_dai_create._entry.145, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @soc_tplg_dai_create._entry_ptr.147, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.148, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/soc-topology.c", i32 1827, i32 23}
!284 = !{ptr @.str.149, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/soc-topology.c", i32 1828, i32 27}
!286 = !{ptr @.str.150, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/soc-topology.c", i32 1844, i32 3}
!288 = !{ptr @.str.151, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @soc_tplg_fe_link_create._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @soc_tplg_fe_link_create._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.153, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/soc-topology.c", i32 1850, i32 3}
!293 = !{ptr @soc_tplg_fe_link_create._entry.152, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @soc_tplg_fe_link_create._entry_ptr.154, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.155, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/soc-topology.c", i32 2375, i32 4}
!297 = !{ptr @.str.156, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @soc_tplg_dai_elems_load._entry, !296, !"_entry", i1 false, i1 false}
!299 = !{ptr @soc_tplg_dai_elems_load._entry_ptr, !296, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.158, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/soc-topology.c", i32 2381, i32 4}
!302 = !{ptr @soc_tplg_dai_elems_load._entry.157, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @soc_tplg_dai_elems_load._entry_ptr.159, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.160, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/soc-topology.c", i32 2388, i32 2}
!306 = !{ptr @soc_tplg_dai_elems_load.__UNIQUE_ID_ddebug251, !305, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!307 = !{ptr @.str.161, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/soc-topology.c", i32 2311, i32 3}
!309 = !{ptr @.str.162, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @soc_tplg_dai_config._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @soc_tplg_dai_config._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.164, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/soc-topology.c", i32 2317, i32 3}
!314 = !{ptr @soc_tplg_dai_config._entry.163, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @soc_tplg_dai_config._entry_ptr.165, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @soc_tplg_dai_config._entry.166, !317, !"_entry", i1 false, i1 false}
!317 = !{!"../sound/soc/soc-topology.c", i32 2350, i32 3}
!318 = !{ptr @soc_tplg_dai_config._entry_ptr.167, !317, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.168, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/soc-topology.c", i32 2241, i32 3}
!321 = !{ptr @.str.169, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @soc_tplg_link_elems_load._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @soc_tplg_link_elems_load._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.170, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/soc-topology.c", i32 2249, i32 11}
!326 = !{ptr @.str.172, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/soc-topology.c", i32 2250, i32 3}
!328 = !{ptr @soc_tplg_link_elems_load._entry.171, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @soc_tplg_link_elems_load._entry_ptr.173, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.174, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/soc-topology.c", i32 2102, i32 3}
!332 = !{ptr @.str.175, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @link_new_ver._entry, !331, !"_entry", i1 false, i1 false}
!334 = !{ptr @link_new_ver._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.177, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/soc-topology.c", i32 2106, i32 2}
!337 = !{ptr @link_new_ver._entry.176, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @link_new_ver._entry_ptr.178, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.179, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/soc-topology.c", i32 2192, i32 3}
!341 = !{ptr @.str.180, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @soc_tplg_link_config._entry, !340, !"_entry", i1 false, i1 false}
!343 = !{ptr @soc_tplg_link_config._entry_ptr, !340, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.182, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/soc-topology.c", i32 2210, i32 3}
!346 = !{ptr @soc_tplg_link_config._entry.181, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @soc_tplg_link_config._entry_ptr.183, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.184, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/soc-topology.c", i32 2413, i32 3}
!350 = !{ptr @.str.185, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @manifest_new_ver._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @manifest_new_ver._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.187, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/soc-topology.c", i32 2420, i32 2}
!355 = !{ptr @manifest_new_ver._entry.186, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @manifest_new_ver._entry_ptr.188, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.189, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/soc-topology.c", i32 254, i32 3}
!359 = !{ptr @.str.190, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @soc_tplg_vendor_load._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @soc_tplg_vendor_load._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.192, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/soc-topology.c", i32 260, i32 3}
!364 = !{ptr @soc_tplg_vendor_load._entry.191, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @soc_tplg_vendor_load._entry_ptr.193, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.194, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/soc-topology.c", i32 1636, i32 3}
!368 = !{ptr @.str.195, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @soc_tplg_dapm_complete._entry, !367, !"_entry", i1 false, i1 false}
!370 = !{ptr @soc_tplg_dapm_complete._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.197, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/soc-topology.c", i32 1643, i32 3}
!373 = !{ptr @soc_tplg_dapm_complete._entry.196, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @soc_tplg_dapm_complete._entry_ptr.198, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{i32 1, !"wchar_size", i32 2}
!376 = !{i32 1, !"min_enum_size", i32 4}
!377 = !{i32 8, !"branch-target-enforcement", i32 0}
!378 = !{i32 8, !"sign-return-address", i32 0}
!379 = !{i32 8, !"sign-return-address-all", i32 0}
!380 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!381 = !{i32 7, !"uwtable", i32 1}
!382 = !{i32 7, !"frame-pointer", i32 2}
!383 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!384 = !{i64 2148764524, i64 2148764529, i64 2148764542, i64 2148764586, i64 2148764620, i64 2148764641}
!385 = !{!"branch_weights", i32 1, i32 2000}
