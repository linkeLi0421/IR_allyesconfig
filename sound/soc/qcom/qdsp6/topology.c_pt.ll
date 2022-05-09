; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/qdsp6/topology.c_pt.bc'
source_filename = "../sound/soc/qcom/qdsp6/topology.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+audioreach_tplg_init\22, \22a\22\09"
module asm "\09.weak\09__crc_audioreach_tplg_init\09\09\09\09"
module asm "\09.long\09__crc_audioreach_tplg_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_audioreach_tplg_init:\09\09\09\09\09"
module asm "\09.asciz \09\22audioreach_tplg_init\22\09\09\09\09\09"
module asm "__kstrtabns_audioreach_tplg_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_tplg_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_tplg_kcontrol_ops = type { i32, ptr, ptr, ptr }
%struct.snd_soc_tplg_widget_events = type { i16, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_ar_control = type { i32, ptr }
%struct.snd_soc_tplg_ctl_hdr = type { i32, i32, [44 x i8], i32, %struct.snd_soc_tplg_io_ops, %struct.snd_soc_tplg_ctl_tlv }
%struct.snd_soc_tplg_io_ops = type { i32, i32, i32 }
%struct.snd_soc_tplg_ctl_tlv = type { i32, i32, %union.anon.84 }
%union.anon.84 = type { [32 x i32] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_tplg_mixer_control = type { %struct.snd_soc_tplg_ctl_hdr, i32, i32, i32, i32, i32, i32, [8 x %struct.snd_soc_tplg_channel], %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_channel = type { i32, i32, i32, i32 }
%struct.snd_soc_tplg_private = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.anon.88 }
%struct.anon.88 = type { %struct.anon.89, [0 x %struct.snd_soc_tplg_vendor_array] }
%struct.anon.89 = type {}
%struct.snd_soc_tplg_vendor_array = type { i32, i32, i32, %union.anon.90 }
%union.anon.90 = type { [0 x %struct.snd_soc_tplg_vendor_uuid_elem] }
%struct.snd_soc_tplg_vendor_uuid_elem = type { i32, [16 x i8] }
%struct.snd_soc_tplg_vendor_value_elem = type { i32, i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.q6apm = type { ptr, ptr, ptr, %struct.wait_queue_head, %struct.gpr_ibasic_rsp_result_t, %struct.mutex, %struct.mutex, i32, %struct.idr, %struct.idr, %struct.idr, %struct.idr, %struct.idr }
%struct.gpr_ibasic_rsp_result_t = type { i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.audioreach_module = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, %struct.list_head, ptr, ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_tplg_dapm_widget = type { i32, i32, [44 x i8], [44 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.snd_soc_tplg_private }
%struct.audioreach_container = type { i32, i32, i32, i32, i32, %struct.list_head, i32, %struct.list_head, ptr }
%struct.audioreach_sub_graph = type { i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.list_head }
%struct.audioreach_graph_info = type { i32, i32, %struct.list_head, %struct.list_head }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom/%s/%s-tplg.bin\00", [44 x i8] zeroinitializer }, align 32
@audioreach_tplg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1097, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tplg firmware loading %s failed %d \0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"audioreach_tplg_init\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/qcom/qdsp6/topology.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@audioreach_tplg_init._entry_ptr = internal global ptr @audioreach_tplg_init._entry, section ".printk_index", align 4
@audioreach_tplg_ops = internal global { %struct.snd_soc_tplg_ops, [52 x i8] } { %struct.snd_soc_tplg_ops { ptr @audioreach_control_load, ptr @audioreach_control_unload, ptr @audioreach_route_load, ptr @audioreach_route_unload, ptr null, ptr @audioreach_widget_ready, ptr @audioreach_widget_unload, ptr null, ptr null, ptr @audioreach_link_load, ptr null, ptr null, ptr null, ptr @audioreach_tplg_complete, ptr null, ptr @audioreach_io_ops, i32 2, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@audioreach_tplg_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tplg component load failed%d\0A\00", [34 x i8] zeroinitializer }, align 32
@audioreach_tplg_init._entry_ptr.8 = internal global ptr @audioreach_tplg_init._entry.6, section ".printk_index", align 4
@__kstrtab_audioreach_tplg_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_audioreach_tplg_init = external dso_local constant [0 x i8], align 1
@__ksymtab_audioreach_tplg_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @audioreach_tplg_init to i32), ptr @__kstrtab_audioreach_tplg_init, ptr @__kstrtabns_audioreach_tplg_init }, section "___ksymtab_gpl+audioreach_tplg_init", align 4
@audioreach_io_ops = internal constant { [2 x %struct.snd_soc_tplg_kcontrol_ops], [32 x i8] } { [2 x %struct.snd_soc_tplg_kcontrol_ops] [%struct.snd_soc_tplg_kcontrol_ops { i32 256, ptr @audioreach_get_audio_mixer, ptr @audioreach_put_audio_mixer, ptr @snd_soc_info_volsw }, %struct.snd_soc_tplg_kcontrol_ops { i32 257, ptr @audioreach_get_vol_ctrl_audio_mixer, ptr @audioreach_put_vol_ctrl_audio_mixer, ptr @snd_soc_info_volsw }], [32 x i8] zeroinitializer }, align 32
@audioreach_control_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 1039, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"control type not supported %d:%d:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"audioreach_control_load\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@audioreach_control_load._entry_ptr = internal global ptr @audioreach_control_load._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@audioreach_widget_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 802, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Widget type (0x%x) not yet supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"audioreach_widget_ready\00", [40 x i8] zeroinitializer }, align 32
@audioreach_widget_ready._entry_ptr = internal global ptr @audioreach_widget_ready._entry, section ".printk_index", align 4
@audioreach_parse_sg_tokens._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Not a valid token %d for graph\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"audioreach_parse_sg_tokens\00", [37 x i8] zeroinitializer }, align 32
@audioreach_parse_sg_tokens._entry_ptr = internal global ptr @audioreach_parse_sg_tokens._entry, section ".printk_index", align 4
@audioreach_tplg_alloc_sub_graph._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to allocate Sub-Graph Instance ID (%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"audioreach_tplg_alloc_sub_graph\00", [32 x i8] zeroinitializer }, align 32
@audioreach_tplg_alloc_sub_graph._entry_ptr = internal global ptr @audioreach_tplg_alloc_sub_graph._entry, section ".printk_index", align 4
@audioreach_tplg_alloc_graph_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 51, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate Graph ID (%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"audioreach_tplg_alloc_graph_info\00", [63 x i8] zeroinitializer }, align 32
@audioreach_tplg_alloc_graph_info._entry_ptr = internal global ptr @audioreach_tplg_alloc_graph_info._entry, section ".printk_index", align 4
@audioreach_parse_cont_tokens._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.20, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"audioreach_parse_cont_tokens\00", [35 x i8] zeroinitializer }, align 32
@audioreach_parse_cont_tokens._entry_ptr = internal global ptr @audioreach_parse_cont_tokens._entry, section ".printk_index", align 4
@audioreach_tplg_alloc_container._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to allocate Container Instance ID (%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"audioreach_tplg_alloc_container\00", [32 x i8] zeroinitializer }, align 32
@audioreach_tplg_alloc_container._entry_ptr = internal global ptr @audioreach_tplg_alloc_container._entry, section ".printk_index", align 4
@audioreach_parse_common_tokens._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 436, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Duplicate Module Instance ID 0x%08x found\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"audioreach_parse_common_tokens\00", [33 x i8] zeroinitializer }, align 32
@audioreach_parse_common_tokens._entry_ptr = internal global ptr @audioreach_parse_common_tokens._entry, section ".printk_index", align 4
@audioreach_tplg_alloc_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to allocate Module Instance ID (%x)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"audioreach_tplg_alloc_module\00", [35 x i8] zeroinitializer }, align 32
@audioreach_tplg_alloc_module._entry_ptr = internal global ptr @audioreach_tplg_alloc_module._entry, section ".printk_index", align 4
@audioreach_widget_ops = internal constant { [1 x %struct.snd_soc_tplg_widget_events], [24 x i8] } { [1 x %struct.snd_soc_tplg_widget_events] [%struct.snd_soc_tplg_widget_events { i16 1, ptr @audioreach_pga_event }], [24 x i8] zeroinitializer }, align 32
@audioreach_widget_load_pga._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 770, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"matching event handlers NOT found for %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"audioreach_widget_load_pga\00", [37 x i8] zeroinitializer }, align 32
@audioreach_widget_load_pga._entry_ptr = internal global ptr @audioreach_widget_load_pga._entry, section ".printk_index", align 4
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,q6apm-dais\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 257]
@__sancov_gen_cov_switch_values.30 = internal global [10 x i64] [i64 8, i64 32, i64 4, i64 6, i64 23, i64 24, i64 31, i64 34, i64 36, i64 37]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 252, i64 254, i64 255]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 117444618, i64 117444619, i64 117444634, i64 117444643, i64 117444644]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 250, i64 251, i64 253]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 259, i64 260, i64 261]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 250, i64 251, i64 253, i64 256, i64 257]
@__sancov_gen_cov_switch_values.36 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 100, i64 101, i64 102, i64 103, i64 104]
@__sancov_gen_cov_switch_values.38 = internal global [12 x i64] [i64 10, i64 32, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207, i64 208, i64 209]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1091, i32 39 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1097, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"audioreach_tplg_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1065, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1103, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"audioreach_io_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1058, i32 47 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 1038, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 802, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 345, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 101, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 51, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 394, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 143, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 435, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 189, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [22 x i8] c"audioreach_widget_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 745, i32 48 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 769, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [35 x i8] c"../sound/soc/qcom/qdsp6/topology.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 913, i32 11 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__ksymtab_audioreach_tplg_init, ptr @audioreach_control_load._entry, ptr @audioreach_control_load._entry_ptr, ptr @audioreach_parse_common_tokens._entry, ptr @audioreach_parse_common_tokens._entry_ptr, ptr @audioreach_parse_cont_tokens._entry, ptr @audioreach_parse_cont_tokens._entry_ptr, ptr @audioreach_parse_sg_tokens._entry, ptr @audioreach_parse_sg_tokens._entry_ptr, ptr @audioreach_tplg_alloc_container._entry, ptr @audioreach_tplg_alloc_container._entry_ptr, ptr @audioreach_tplg_alloc_graph_info._entry, ptr @audioreach_tplg_alloc_graph_info._entry_ptr, ptr @audioreach_tplg_alloc_module._entry, ptr @audioreach_tplg_alloc_module._entry_ptr, ptr @audioreach_tplg_alloc_sub_graph._entry, ptr @audioreach_tplg_alloc_sub_graph._entry_ptr, ptr @audioreach_tplg_init._entry, ptr @audioreach_tplg_init._entry.6, ptr @audioreach_tplg_init._entry_ptr, ptr @audioreach_tplg_init._entry_ptr.8, ptr @audioreach_widget_load_pga._entry, ptr @audioreach_widget_load_pga._entry_ptr, ptr @audioreach_widget_ready._entry, ptr @audioreach_widget_ready._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @audioreach_tplg_ops, ptr @.str.7, ptr @audioreach_io_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @audioreach_widget_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_tplg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_tplg_ops to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_tplg_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_io_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_control_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_widget_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_parse_sg_tokens._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_tplg_alloc_sub_graph._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_tplg_alloc_graph_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_parse_cont_tokens._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_tplg_alloc_container._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_parse_common_tokens._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_tplg_alloc_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_widget_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audioreach_widget_load_pga._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @audioreach_tplg_init(ptr noundef %component) #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 4
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !83
  %driver_name = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %driver_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_name, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %6, ptr noundef %8) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %call, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %call, i32 noundef %call3) #11
  br label %err

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  %call6 = call i32 @snd_soc_tplg_component_load(ptr noundef %component, ptr noundef nonnull @audioreach_tplg_ops, ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %call6) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.end5.if.end12_crit_edge
  %ret.0 = phi i32 [ -22, %do.end11 ], [ %call6, %if.end5.if.end12_crit_edge ]
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %12) #8
  br label %err

err:                                              ; preds = %if.end12, %do.end
  %ret.1 = phi i32 [ %call3, %do.end ], [ %ret.0, %if.end12 ]
  call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_tplg_component_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audioreach_control_load(ptr noundef %scomp, i32 noundef %index, ptr nocapture noundef readonly %kc, ptr nocapture noundef readonly %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %scomp1 = getelementptr inbounds %struct.snd_ar_control, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %scomp1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %scomp, ptr %scomp1, align 4
  %ops = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ops, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end [
    i32 256, label %sw.bb
    i32 257, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %hdr, i32 1, i32 0, i32 2, i32 4
  %num_elems.i = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %hdr, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %num_elems.i, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %sub.i = add i32 %11, -1
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %sw.bb
  %c_elem.03.i = phi ptr [ %8, %sw.bb ], [ %incdec.ptr.i, %sw.epilog.i.while.body.i_crit_edge ]
  %tkn_count.02.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %sw.epilog.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %c_elem.03.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %c_elem.03.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %13)
  %cond.i = icmp eq i32 %13, 33554432
  br i1 %cond.i, label %sw.bb.i, label %while.body.i.sw.epilog.i_crit_edge

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %value.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %c_elem.03.i, i32 0, i32 1
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %value.i, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %call7.i.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %while.body.i.sw.epilog.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %c_elem.03.i, i32 1
  %inc.i = add i32 %tkn_count.02.i, 1
  %cmp.not.i = icmp ugt i32 %inc.i, %sub.i
  br i1 %cmp.not.i, label %sw.epilog.i.sw.epilog_crit_edge, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

sw.epilog.i.sw.epilog_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %private_value5 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %18 = ptrtoint ptr %private_value5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %private_value5, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %put = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %put to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %put, align 1
  %info = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %info, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %23, i32 noundef %25) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.epilog.i.sw.epilog_crit_edge
  %.pn.in = phi i32 [ %19, %sw.bb4 ], [ %7, %sw.epilog.i.sw.epilog_crit_edge ]
  %.pn = inttoptr i32 %.pn.in to ptr
  %private = getelementptr inbounds %struct.soc_mixer_control, ptr %.pn, i32 0, i32 9, i32 5
  %26 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audioreach_control_unload(ptr nocapture noundef readnone %scomp, ptr nocapture noundef readonly %dobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_soc_dobj, ptr %dobj, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audioreach_route_load(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef readonly %route) #0 align 64 {
entry:
  %id.i11 = alloca i32, align 4
  %id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %source = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route, i32 0, i32 2
  %0 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %source, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #8
  %modules_idr.i = getelementptr inbounds %struct.q6apm, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %id.i, align 4
  %call17.i = call ptr @idr_get_next(ptr noundef %modules_idr.i, ptr noundef nonnull %id.i) #8
  %cmp.not8.i = icmp eq ptr %call17.i, null
  br i1 %cmp.not8.i, label %entry.audioreach_find_widget.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.audioreach_find_widget.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_find_widget.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %call19.i = phi ptr [ %call1.i, %for.inc.i.for.body.i_crit_edge ], [ %call17.i, %entry.for.body.i_crit_edge ]
  %widget.i = getelementptr inbounds %struct.audioreach_module, ptr %call19.i, i32 0, i32 26
  %7 = ptrtoint ptr %widget.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %widget.i, align 4
  %name2.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name2.i, align 4
  %call3.i = call i32 @strcmp(ptr noundef %1, ptr noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %for.body.i.audioreach_find_widget.exit_crit_edge, label %for.inc.i

for.body.i.audioreach_find_widget.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_find_widget.exit

for.inc.i:                                        ; preds = %for.body.i
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 4
  %add.i = add i32 %12, 1
  store i32 %add.i, ptr %id.i, align 4
  %call1.i = call ptr @idr_get_next(ptr noundef %modules_idr.i, ptr noundef nonnull %id.i) #8
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.inc.i.audioreach_find_widget.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.audioreach_find_widget.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_find_widget.exit

audioreach_find_widget.exit:                      ; preds = %for.inc.i.audioreach_find_widget.exit_crit_edge, %for.body.i.audioreach_find_widget.exit_crit_edge, %entry.audioreach_find_widget.exit_crit_edge
  %call1.lcssa.i = phi ptr [ null, %entry.audioreach_find_widget.exit_crit_edge ], [ %call19.i, %for.body.i.audioreach_find_widget.exit_crit_edge ], [ null, %for.inc.i.audioreach_find_widget.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #8
  %13 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %route, align 4
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i13 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i11) #8
  %modules_idr.i14 = getelementptr inbounds %struct.q6apm, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %id.i11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %id.i11, align 4
  %call17.i15 = call ptr @idr_get_next(ptr noundef %modules_idr.i14, ptr noundef nonnull %id.i11) #8
  %cmp.not8.i16 = icmp eq ptr %call17.i15, null
  br i1 %cmp.not8.i16, label %audioreach_find_widget.exit.audioreach_find_widget.exit28.thread_crit_edge, label %audioreach_find_widget.exit.for.body.i22_crit_edge

audioreach_find_widget.exit.for.body.i22_crit_edge: ; preds = %audioreach_find_widget.exit
  br label %for.body.i22

audioreach_find_widget.exit.audioreach_find_widget.exit28.thread_crit_edge: ; preds = %audioreach_find_widget.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_find_widget.exit28.thread

for.body.i22:                                     ; preds = %for.inc.i26.for.body.i22_crit_edge, %audioreach_find_widget.exit.for.body.i22_crit_edge
  %call19.i17 = phi ptr [ %call1.i24, %for.inc.i26.for.body.i22_crit_edge ], [ %call17.i15, %audioreach_find_widget.exit.for.body.i22_crit_edge ]
  %widget.i18 = getelementptr inbounds %struct.audioreach_module, ptr %call19.i17, i32 0, i32 26
  %20 = ptrtoint ptr %widget.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %widget.i18, align 4
  %name2.i19 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %name2.i19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name2.i19, align 4
  %call3.i20 = call i32 @strcmp(ptr noundef %14, ptr noundef %23) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i20)
  %tobool.not.i21 = icmp eq i32 %call3.i20, 0
  br i1 %tobool.not.i21, label %audioreach_find_widget.exit28, label %for.inc.i26

for.inc.i26:                                      ; preds = %for.body.i22
  %24 = ptrtoint ptr %id.i11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i11, align 4
  %add.i23 = add i32 %25, 1
  store i32 %add.i23, ptr %id.i11, align 4
  %call1.i24 = call ptr @idr_get_next(ptr noundef %modules_idr.i14, ptr noundef nonnull %id.i11) #8
  %cmp.not.i25 = icmp eq ptr %call1.i24, null
  br i1 %cmp.not.i25, label %for.inc.i26.audioreach_find_widget.exit28.thread_crit_edge, label %for.inc.i26.for.body.i22_crit_edge

for.inc.i26.for.body.i22_crit_edge:               ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i22

for.inc.i26.audioreach_find_widget.exit28.thread_crit_edge: ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_find_widget.exit28.thread

audioreach_find_widget.exit28.thread:             ; preds = %for.inc.i26.audioreach_find_widget.exit28.thread_crit_edge, %audioreach_find_widget.exit.audioreach_find_widget.exit28.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i11) #8
  br label %if.end

audioreach_find_widget.exit28:                    ; preds = %for.body.i22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i11) #8
  %tobool.not = icmp eq ptr %call1.lcssa.i, null
  br i1 %tobool.not, label %audioreach_find_widget.exit28.if.end_crit_edge, label %if.then

audioreach_find_widget.exit28.if.end_crit_edge:   ; preds = %audioreach_find_widget.exit28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %audioreach_find_widget.exit28
  call void @__sanitizer_cov_trace_pc() #10
  %instance_id = getelementptr inbounds %struct.audioreach_module, ptr %call19.i17, i32 0, i32 1
  %26 = ptrtoint ptr %instance_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %instance_id, align 4
  %dst_mod_inst_id = getelementptr inbounds %struct.audioreach_module, ptr %call1.lcssa.i, i32 0, i32 8
  %28 = ptrtoint ptr %dst_mod_inst_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %dst_mod_inst_id, align 4
  %instance_id4 = getelementptr inbounds %struct.audioreach_module, ptr %call1.lcssa.i, i32 0, i32 1
  %29 = ptrtoint ptr %instance_id4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %instance_id4, align 4
  %src_mod_inst_id = getelementptr inbounds %struct.audioreach_module, ptr %call19.i17, i32 0, i32 6
  %31 = ptrtoint ptr %src_mod_inst_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %src_mod_inst_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %audioreach_find_widget.exit28.if.end_crit_edge, %audioreach_find_widget.exit28.thread
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @audioreach_route_unload(ptr nocapture noundef readnone %scomp, ptr nocapture noundef readnone %dobj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audioreach_widget_ready(ptr noundef %component, i32 noundef %index, ptr noundef %w, ptr nocapture noundef readonly %tplg_w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %w, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %1, label %do.end [
    i32 23, label %entry.sw.bb_crit_edge
    i32 24, label %entry.sw.bb_crit_edge61
    i32 37, label %entry.sw.bb1_crit_edge
    i32 36, label %entry.sw.bb1_crit_edge62
    i32 34, label %entry.sw.bb1_crit_edge63
    i32 31, label %sw.bb3
    i32 4, label %sw.bb5
    i32 6, label %sw.bb7
  ]

entry.sw.bb1_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb_crit_edge61:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge61
  tail call fastcc void @audioreach_widget_load_buffer(ptr noundef %component, ptr noundef %w, ptr noundef %tplg_w)
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge62, %entry.sw.bb1_crit_edge63
  %call.i = tail call fastcc i32 @audioreach_widget_load_module_common(ptr noundef %component, ptr noundef %w, ptr noundef %tplg_w) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %sw.bb1
  %private.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 21, i32 5
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private.i, align 4
  %priv.i = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tplg_w, i32 0, i32 13
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %priv.i, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %array.i.i = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tplg_w, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i2.not.i = icmp eq i32 %6, 0
  br i1 %cmp.i2.not.i, label %if.end.i.audioreach_get_module_array.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.audioreach_get_module_array.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_module_array.exit.i

land.rhs.i.loopexit.i:                            ; preds = %land.rhs4.i.i
  %cmp.i.i = icmp ult i32 %add.i.i, %7
  br i1 %cmp.i.i, label %land.rhs.i.loopexit.i.for.body.i.i_crit_edge, label %land.rhs.i.loopexit.i.audioreach_get_module_array.exit.i_crit_edge

land.rhs.i.loopexit.i.audioreach_get_module_array.exit.i_crit_edge: ; preds = %land.rhs.i.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_module_array.exit.i

land.rhs.i.loopexit.i.for.body.i.i_crit_edge:     ; preds = %land.rhs.i.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.loopexit.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %sz.026.i3.i = phi i32 [ %add.i.i, %land.rhs.i.loopexit.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %array.i.i, i32 %sz.026.i3.i
  %8 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr.i.i, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %add.i.i = add i32 %11, %sz.026.i3.i
  %num_elems.i.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %add.ptr.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %num_elems.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %num_elems.i.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %sub.i.i = add i32 %14, -1
  br label %land.rhs4.i.i

land.rhs4.i.i:                                    ; preds = %while.body.i.i.land.rhs4.i.i_crit_edge, %for.body.i.i
  %tkn_count.025.i.i = phi i32 [ 0, %for.body.i.i ], [ %inc.i.i, %while.body.i.i.land.rhs4.i.i_crit_edge ]
  %mod_elem.024.i.i = phi ptr [ %8, %for.body.i.i ], [ %incdec.ptr.i.i, %while.body.i.i.land.rhs4.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tkn_count.025.i.i, i32 %sub.i.i)
  %cmp5.not.i.i = icmp ugt i32 %tkn_count.025.i.i, %sub.i.i
  br i1 %cmp5.not.i.i, label %land.rhs.i.loopexit.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %land.rhs4.i.i
  %15 = ptrtoint ptr %mod_elem.024.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %mod_elem.024.i.i, align 1
  %cond.i.i = icmp eq i32 %16, -922746880
  %inc.i.i = add i32 %tkn_count.025.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.024.i.i, i32 1
  br i1 %cond.i.i, label %while.body.i.i.audioreach_get_module_array.exit.i_crit_edge, label %while.body.i.i.land.rhs4.i.i_crit_edge

while.body.i.i.land.rhs4.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs4.i.i

while.body.i.i.audioreach_get_module_array.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_module_array.exit.i

audioreach_get_module_array.exit.i:               ; preds = %while.body.i.i.audioreach_get_module_array.exit.i_crit_edge, %land.rhs.i.loopexit.i.audioreach_get_module_array.exit.i_crit_edge, %if.end.i.audioreach_get_module_array.exit.i_crit_edge
  %mod_array.0..i.i = phi ptr [ null, %if.end.i.audioreach_get_module_array.exit.i_crit_edge ], [ %add.ptr.i.i, %while.body.i.i.audioreach_get_module_array.exit.i_crit_edge ], [ null, %land.rhs.i.loopexit.i.audioreach_get_module_array.exit.i_crit_edge ]
  %17 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %mod_array.0..i.i, i32 0, i32 3
  %num_elems.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %mod_array.0..i.i, i32 0, i32 2
  %bit_depth.i = getelementptr inbounds %struct.audioreach_module, ptr %4, i32 0, i32 12
  %rate.i = getelementptr inbounds %struct.audioreach_module, ptr %4, i32 0, i32 11
  %interleave_type.i = getelementptr inbounds %struct.audioreach_module, ptr %4, i32 0, i32 19
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %audioreach_get_module_array.exit.i
  %tkn_count.07.i = phi i32 [ 0, %audioreach_get_module_array.exit.i ], [ %inc.i, %sw.epilog.i.while.body.i_crit_edge ]
  %mod_elem.05.i = phi ptr [ %17, %audioreach_get_module_array.exit.i ], [ %incdec.ptr.i, %sw.epilog.i.while.body.i_crit_edge ]
  %18 = ptrtoint ptr %mod_elem.05.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %mod_elem.05.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %20, label %while.body.i.sw.epilog.i_crit_edge [
    i32 252, label %while.body.i.sw.epilog.sink.split.i_crit_edge
    i32 254, label %sw.bb3.i
    i32 255, label %sw.bb5.i
  ]

while.body.i.sw.epilog.sink.split.i_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb5.i, %sw.bb3.i, %while.body.i.sw.epilog.sink.split.i_crit_edge
  %bit_depth.sink.i = phi ptr [ %bit_depth.i, %sw.bb5.i ], [ %rate.i, %sw.bb3.i ], [ %interleave_type.i, %while.body.i.sw.epilog.sink.split.i_crit_edge ]
  %value6.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.05.i, i32 0, i32 1
  %22 = ptrtoint ptr %value6.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %value6.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %25 = ptrtoint ptr %bit_depth.sink.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %bit_depth.sink.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %while.body.i.sw.epilog.i_crit_edge
  %inc.i = add i32 %tkn_count.07.i, 1
  %incdec.ptr.i = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.05.i, i32 1
  %26 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %num_elems.i, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  %sub.i = add i32 %28, -1
  %cmp.not.i = icmp ugt i32 %inc.i, %sub.i
  br i1 %cmp.not.i, label %sw.epilog.i.return_crit_edge, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

sw.epilog.i.return_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @audioreach_widget_load_buffer(ptr noundef %component, ptr noundef %w, ptr noundef %tplg_w)
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not.i30 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i30, label %sw.bb5.return_crit_edge, label %if.end.i34

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i34:                                       ; preds = %sw.bb5
  %scomp.i = getelementptr inbounds %struct.snd_ar_control, ptr %call7.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %scomp.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %component, ptr %scomp.i, align 4
  %private.i31 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 21, i32 5
  %31 = ptrtoint ptr %private.i31 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %private.i31, align 4
  %32 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tplg_w, i32 1, i32 2, i32 4
  %num_elems.i32 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tplg_w, i32 1, i32 2
  %33 = ptrtoint ptr %num_elems.i32 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %num_elems.i32, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  %sub.i33 = add i32 %35, -1
  br label %while.body.i35

while.body.i35:                                   ; preds = %sw.epilog.i39.while.body.i35_crit_edge, %if.end.i34
  %tkn_count.02.i = phi i32 [ 0, %if.end.i34 ], [ %inc.i36, %sw.epilog.i39.while.body.i35_crit_edge ]
  %w_elem.01.i = phi ptr [ %32, %if.end.i34 ], [ %incdec.ptr.i37, %sw.epilog.i39.while.body.i35_crit_edge ]
  %36 = ptrtoint ptr %w_elem.01.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %w_elem.01.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %37)
  %cond.i = icmp eq i32 %37, 33554432
  br i1 %cond.i, label %sw.bb.i, label %while.body.i35.sw.epilog.i39_crit_edge

while.body.i35.sw.epilog.i39_crit_edge:           ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i39

sw.bb.i:                                          ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #10
  %value.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %w_elem.01.i, i32 0, i32 1
  %38 = ptrtoint ptr %value.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %value.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %41 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %call7.i.i.i, align 8
  br label %sw.epilog.i39

sw.epilog.i39:                                    ; preds = %sw.bb.i, %while.body.i35.sw.epilog.i39_crit_edge
  %inc.i36 = add i32 %tkn_count.02.i, 1
  %incdec.ptr.i37 = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %w_elem.01.i, i32 1
  %cmp.not.i38 = icmp ugt i32 %inc.i36, %sub.i33
  br i1 %cmp.not.i38, label %sw.epilog.i39.return_crit_edge, label %sw.epilog.i39.while.body.i35_crit_edge

sw.epilog.i39.while.body.i35_crit_edge:           ; preds = %sw.epilog.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i35

sw.epilog.i39.return_crit_edge:                   ; preds = %sw.epilog.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7:                                           ; preds = %entry
  %call.i40 = tail call fastcc i32 @audioreach_widget_load_module_common(ptr noundef %component, ptr noundef %w, ptr noundef %tplg_w) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.end.i43, label %sw.bb7.return_crit_edge

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i43:                                       ; preds = %sw.bb7
  %private.i42 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 21, i32 5
  %42 = ptrtoint ptr %private.i42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private.i42, align 4
  %gain.i = getelementptr inbounds %struct.audioreach_module, ptr %43, i32 0, i32 20
  %44 = ptrtoint ptr %gain.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 8192, ptr %gain.i, align 4
  %event_type.i = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tplg_w, i32 0, i32 11
  %45 = ptrtoint ptr %event_type.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %event_type.i, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #8
  %call2.i = tail call i32 @snd_soc_tplg_widget_bind_event(ptr noundef %w, ptr noundef nonnull @audioreach_widget_ops, i32 noundef 1, i16 noundef zeroext %47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i43.return_crit_edge, label %do.end.i

if.end.i43.return_crit_edge:                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end.i:                                         ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %50 = ptrtoint ptr %event_type.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %event_type.i, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #8
  %conv.i = zext i16 %52 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.27, i32 noundef %conv.i) #11
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.12, i32 noundef %1) #11
  br label %return

return:                                           ; preds = %do.end, %do.end.i, %if.end.i43.return_crit_edge, %sw.bb7.return_crit_edge, %sw.epilog.i39.return_crit_edge, %sw.bb5.return_crit_edge, %sw.bb3, %sw.epilog.i.return_crit_edge, %sw.bb1.return_crit_edge, %sw.bb
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ 0, %sw.bb1.return_crit_edge ], [ -12, %sw.bb5.return_crit_edge ], [ -22, %do.end.i ], [ %call.i40, %sw.bb7.return_crit_edge ], [ 0, %if.end.i43.return_crit_edge ], [ 0, %sw.epilog.i.return_crit_edge ], [ 0, %sw.epilog.i39.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audioreach_widget_unload(ptr nocapture noundef readonly %scomp, ptr nocapture noundef readonly %dobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dobj, i32 -88
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %private = getelementptr inbounds %struct.snd_soc_dobj, ptr %dobj, i32 0, i32 5
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %container = getelementptr inbounds %struct.audioreach_module, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %container to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %container, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp eq i32 %9, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.q6apm, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %modules_idr = getelementptr inbounds %struct.q6apm, ptr %3, i32 0, i32 12
  %instance_id = getelementptr inbounds %struct.audioreach_module, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %instance_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %instance_id, align 4
  %call2 = tail call ptr @idr_remove(ptr noundef %modules_idr, i32 noundef %11) #8
  %num_modules = getelementptr inbounds %struct.audioreach_container, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %num_modules to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_modules, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %num_modules, align 4
  %node = getelementptr inbounds %struct.audioreach_module, ptr %5, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.audioreach_module, ptr %5, i32 0, i32 24, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %20 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.audioreach_module, ptr %5, i32 0, i32 24, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %5) #8
  %modules_list = getelementptr inbounds %struct.audioreach_container, ptr %7, i32 0, i32 7
  %22 = ptrtoint ptr %modules_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %modules_list, align 4
  %cmp.i.not = icmp eq ptr %23, %modules_list
  br i1 %cmp.i.not, label %if.then4, label %list_del.exit.if.end22_crit_edge

list_del.exit.if.end22_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then4:                                         ; preds = %list_del.exit
  %sub_graph = getelementptr inbounds %struct.audioreach_container, ptr %7, i32 0, i32 8
  %24 = ptrtoint ptr %sub_graph to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sub_graph, align 4
  %containers_idr = getelementptr inbounds %struct.q6apm, ptr %3, i32 0, i32 11
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %7, align 4
  %call5 = tail call ptr @idr_remove(ptr noundef %containers_idr, i32 noundef %27) #8
  %node6 = getelementptr inbounds %struct.audioreach_container, ptr %7, i32 0, i32 5
  %call.i.i50 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node6) #8
  br i1 %call.i.i50, label %if.end.i.i53, label %if.then4.list_del.exit55_crit_edge

if.then4.list_del.exit55_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit55

if.end.i.i53:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i51 = getelementptr inbounds %struct.audioreach_container, ptr %7, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %prev.i.i51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i51, align 4
  %30 = ptrtoint ptr %node6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %node6, align 4
  %prev1.i.i.i52 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i52, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit55

list_del.exit55:                                  ; preds = %if.end.i.i53, %if.then4.list_del.exit55_crit_edge
  %34 = ptrtoint ptr %node6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %node6, align 4
  %prev.i54 = getelementptr inbounds %struct.audioreach_container, ptr %7, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i54, align 4
  %num_containers = getelementptr inbounds %struct.audioreach_sub_graph, ptr %25, i32 0, i32 6
  %36 = ptrtoint ptr %num_containers to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_containers, align 4
  %dec7 = add i32 %37, -1
  store i32 %dec7, ptr %num_containers, align 4
  tail call void @kfree(ptr noundef %7) #8
  %container_list = getelementptr inbounds %struct.audioreach_sub_graph, ptr %25, i32 0, i32 7
  %38 = ptrtoint ptr %container_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %container_list, align 4
  %cmp.i56.not = icmp eq ptr %39, %container_list
  br i1 %cmp.i56.not, label %if.then10, label %list_del.exit55.if.end22_crit_edge

list_del.exit55.if.end22_crit_edge:               ; preds = %list_del.exit55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then10:                                        ; preds = %list_del.exit55
  %info11 = getelementptr inbounds %struct.audioreach_sub_graph, ptr %25, i32 0, i32 5
  %40 = ptrtoint ptr %info11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info11, align 4
  %sub_graphs_idr = getelementptr inbounds %struct.q6apm, ptr %3, i32 0, i32 10
  %42 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %25, align 4
  %call12 = tail call ptr @idr_remove(ptr noundef %sub_graphs_idr, i32 noundef %43) #8
  %node13 = getelementptr inbounds %struct.audioreach_sub_graph, ptr %25, i32 0, i32 4
  %call.i.i58 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node13) #8
  br i1 %call.i.i58, label %if.end.i.i61, label %if.then10.list_del.exit63_crit_edge

if.then10.list_del.exit63_crit_edge:              ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit63

if.end.i.i61:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i59 = getelementptr inbounds %struct.audioreach_sub_graph, ptr %25, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %prev.i.i59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i59, align 4
  %46 = ptrtoint ptr %node13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %node13, align 4
  %prev1.i.i.i60 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i60, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit63

list_del.exit63:                                  ; preds = %if.end.i.i61, %if.then10.list_del.exit63_crit_edge
  %50 = ptrtoint ptr %node13 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %node13, align 4
  %prev.i62 = getelementptr inbounds %struct.audioreach_sub_graph, ptr %25, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %prev.i62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i62, align 4
  %num_sub_graphs = getelementptr inbounds %struct.audioreach_graph_info, ptr %41, i32 0, i32 1
  %52 = ptrtoint ptr %num_sub_graphs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_sub_graphs, align 4
  %dec14 = add i32 %53, -1
  store i32 %dec14, ptr %num_sub_graphs, align 4
  tail call void @kfree(ptr noundef %25) #8
  %sg_list = getelementptr inbounds %struct.audioreach_graph_info, ptr %41, i32 0, i32 2
  %54 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %sg_list, align 4
  %cmp.i64.not = icmp eq ptr %55, %sg_list
  br i1 %cmp.i64.not, label %if.then17, label %list_del.exit63.if.end22_crit_edge

list_del.exit63.if.end22_crit_edge:               ; preds = %list_del.exit63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then17:                                        ; preds = %list_del.exit63
  call void @__sanitizer_cov_trace_pc() #10
  %graph_info_idr = getelementptr inbounds %struct.q6apm, ptr %3, i32 0, i32 9
  %56 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %41, align 4
  %call19 = tail call ptr @idr_remove(ptr noundef %graph_info_idr, i32 noundef %57) #8
  tail call void @kfree(ptr noundef %41) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %list_del.exit63.if.end22_crit_edge, %list_del.exit55.if.end22_crit_edge, %list_del.exit.if.end22_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audioreach_link_load(ptr nocapture noundef readonly %component, i32 noundef %index, ptr nocapture noundef %link, ptr nocapture noundef readnone %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nonatomic = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link, i32 0, i32 18
  %0 = ptrtoint ptr %nonatomic to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %nonatomic, align 4
  %bf.set3 = or i32 %bf.load, -2139095040
  store i32 %bf.set3, ptr %nonatomic, align 4
  %platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link, i32 0, i32 6
  %1 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platforms, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_compatible_child(ptr noundef %7, ptr noundef nonnull @.str.29) #8
  %8 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platforms, align 4
  %of_node5 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %of_node5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %of_node5, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @audioreach_tplg_complete(ptr nocapture noundef readnone %component) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @audioreach_widget_load_buffer(ptr nocapture noundef readonly %component, ptr noundef %w, ptr nocapture noundef readonly %tplg_w) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @audioreach_widget_load_module_common(ptr noundef %component, ptr noundef %w, ptr noundef %tplg_w)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 21, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tplg_w, i32 0, i32 13
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %priv, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %array.i = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tplg_w, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i37.not = icmp eq i32 %3, 0
  br i1 %cmp.i37.not, label %if.end.audioreach_get_module_array.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.audioreach_get_module_array.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_module_array.exit

land.rhs.i.loopexit:                              ; preds = %land.rhs4.i
  %cmp.i = icmp ult i32 %add.i, %4
  br i1 %cmp.i, label %land.rhs.i.loopexit.for.body.i_crit_edge, label %land.rhs.i.loopexit.audioreach_get_module_array.exit_crit_edge

land.rhs.i.loopexit.audioreach_get_module_array.exit_crit_edge: ; preds = %land.rhs.i.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_module_array.exit

land.rhs.i.loopexit.for.body.i_crit_edge:         ; preds = %land.rhs.i.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i.loopexit.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %sz.026.i38 = phi i32 [ %add.i, %land.rhs.i.loopexit.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %array.i, i32 %sz.026.i38
  %5 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %add.ptr.i, i32 0, i32 3
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %add.i = add i32 %8, %sz.026.i38
  %num_elems.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %add.ptr.i, i32 0, i32 2
  %9 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %num_elems.i, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %sub.i = add i32 %11, -1
  br label %land.rhs4.i

land.rhs4.i:                                      ; preds = %while.body.i.land.rhs4.i_crit_edge, %for.body.i
  %tkn_count.025.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %while.body.i.land.rhs4.i_crit_edge ]
  %mod_elem.024.i = phi ptr [ %5, %for.body.i ], [ %incdec.ptr.i, %while.body.i.land.rhs4.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tkn_count.025.i, i32 %sub.i)
  %cmp5.not.i = icmp ugt i32 %tkn_count.025.i, %sub.i
  br i1 %cmp5.not.i, label %land.rhs.i.loopexit, label %while.body.i

while.body.i:                                     ; preds = %land.rhs4.i
  %12 = ptrtoint ptr %mod_elem.024.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %mod_elem.024.i, align 1
  %cond.i = icmp eq i32 %13, -922746880
  %inc.i = add i32 %tkn_count.025.i, 1
  %incdec.ptr.i = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.024.i, i32 1
  br i1 %cond.i, label %while.body.i.audioreach_get_module_array.exit_crit_edge, label %while.body.i.land.rhs4.i_crit_edge

while.body.i.land.rhs4.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs4.i

while.body.i.audioreach_get_module_array.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_module_array.exit

audioreach_get_module_array.exit:                 ; preds = %while.body.i.audioreach_get_module_array.exit_crit_edge, %land.rhs.i.loopexit.audioreach_get_module_array.exit_crit_edge, %if.end.audioreach_get_module_array.exit_crit_edge
  %mod_array.0..i = phi ptr [ null, %if.end.audioreach_get_module_array.exit_crit_edge ], [ %add.ptr.i, %while.body.i.audioreach_get_module_array.exit_crit_edge ], [ null, %land.rhs.i.loopexit.audioreach_get_module_array.exit_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %15, label %audioreach_get_module_array.exit.cleanup_crit_edge [
    i32 117444643, label %audioreach_get_module_array.exit.sw.bb_crit_edge
    i32 117444644, label %audioreach_get_module_array.exit.sw.bb_crit_edge56
    i32 117444634, label %sw.bb4
    i32 117444618, label %audioreach_get_module_array.exit.sw.bb6_crit_edge
    i32 117444619, label %audioreach_get_module_array.exit.sw.bb6_crit_edge57
  ]

audioreach_get_module_array.exit.sw.bb6_crit_edge57: ; preds = %audioreach_get_module_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

audioreach_get_module_array.exit.sw.bb6_crit_edge: ; preds = %audioreach_get_module_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

audioreach_get_module_array.exit.sw.bb_crit_edge56: ; preds = %audioreach_get_module_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

audioreach_get_module_array.exit.sw.bb_crit_edge: ; preds = %audioreach_get_module_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

audioreach_get_module_array.exit.cleanup_crit_edge: ; preds = %audioreach_get_module_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %audioreach_get_module_array.exit.sw.bb_crit_edge, %audioreach_get_module_array.exit.sw.bb_crit_edge56
  %17 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %mod_array.0..i, i32 0, i32 3
  %num_elems.i1 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %mod_array.0..i, i32 0, i32 2
  %hw_interface_type.i = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 18
  %data_format.i = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 17
  %hw_interface_idx.i = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 13
  br label %while.body.i2

while.body.i2:                                    ; preds = %sw.epilog.i.while.body.i2_crit_edge, %sw.bb
  %tkn_count.04.i = phi i32 [ 0, %sw.bb ], [ %inc.i3, %sw.epilog.i.while.body.i2_crit_edge ]
  %mod_elem.02.i = phi ptr [ %17, %sw.bb ], [ %incdec.ptr.i4, %sw.epilog.i.while.body.i2_crit_edge ]
  %18 = ptrtoint ptr %mod_elem.02.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %mod_elem.02.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %20, label %while.body.i2.sw.epilog.i_crit_edge [
    i32 250, label %while.body.i2.sw.epilog.sink.split.i_crit_edge
    i32 253, label %sw.bb1.i
    i32 251, label %sw.bb3.i
  ]

while.body.i2.sw.epilog.sink.split.i_crit_edge:   ; preds = %while.body.i2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

while.body.i2.sw.epilog.i_crit_edge:              ; preds = %while.body.i2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %while.body.i2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %while.body.i2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb3.i, %sw.bb1.i, %while.body.i2.sw.epilog.sink.split.i_crit_edge
  %hw_interface_type.sink.i = phi ptr [ %hw_interface_type.i, %sw.bb3.i ], [ %data_format.i, %sw.bb1.i ], [ %hw_interface_idx.i, %while.body.i2.sw.epilog.sink.split.i_crit_edge ]
  %value4.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.02.i, i32 0, i32 1
  %22 = ptrtoint ptr %value4.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %value4.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %25 = ptrtoint ptr %hw_interface_type.sink.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %hw_interface_type.sink.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %while.body.i2.sw.epilog.i_crit_edge
  %inc.i3 = add i32 %tkn_count.04.i, 1
  %incdec.ptr.i4 = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.02.i, i32 1
  %26 = ptrtoint ptr %num_elems.i1 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %num_elems.i1, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  %sub.i5 = add i32 %28, -1
  %cmp.not.i = icmp ugt i32 %inc.i3, %sub.i5
  br i1 %cmp.not.i, label %sw.epilog.i.cleanup_crit_edge, label %sw.epilog.i.while.body.i2_crit_edge

sw.epilog.i.while.body.i2_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i2

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %audioreach_get_module_array.exit
  %29 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %mod_array.0..i, i32 0, i32 3
  %num_elems.i6 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %mod_array.0..i, i32 0, i32 2
  %log_mode.i = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 23
  %log_tap_point_id.i = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 22
  %log_code.i = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 21
  br label %while.body.i9

while.body.i9:                                    ; preds = %sw.epilog.i18.while.body.i9_crit_edge, %sw.bb4
  %tkn_count.04.i7 = phi i32 [ 0, %sw.bb4 ], [ %inc.i14, %sw.epilog.i18.while.body.i9_crit_edge ]
  %mod_elem.02.i8 = phi ptr [ %29, %sw.bb4 ], [ %incdec.ptr.i15, %sw.epilog.i18.while.body.i9_crit_edge ]
  %30 = ptrtoint ptr %mod_elem.02.i8 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %mod_elem.02.i8, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %32, label %while.body.i9.sw.epilog.i18_crit_edge [
    i32 259, label %while.body.i9.sw.epilog.sink.split.i13_crit_edge
    i32 260, label %sw.bb1.i10
    i32 261, label %sw.bb3.i11
  ]

while.body.i9.sw.epilog.sink.split.i13_crit_edge: ; preds = %while.body.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i13

while.body.i9.sw.epilog.i18_crit_edge:            ; preds = %while.body.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i18

sw.bb1.i10:                                       ; preds = %while.body.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i13

sw.bb3.i11:                                       ; preds = %while.body.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i13

sw.epilog.sink.split.i13:                         ; preds = %sw.bb3.i11, %sw.bb1.i10, %while.body.i9.sw.epilog.sink.split.i13_crit_edge
  %log_mode.sink.i = phi ptr [ %log_mode.i, %sw.bb3.i11 ], [ %log_tap_point_id.i, %sw.bb1.i10 ], [ %log_code.i, %while.body.i9.sw.epilog.sink.split.i13_crit_edge ]
  %value4.i12 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.02.i8, i32 0, i32 1
  %34 = ptrtoint ptr %value4.i12 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %value4.i12, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  %37 = ptrtoint ptr %log_mode.sink.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %log_mode.sink.i, align 4
  br label %sw.epilog.i18

sw.epilog.i18:                                    ; preds = %sw.epilog.sink.split.i13, %while.body.i9.sw.epilog.i18_crit_edge
  %inc.i14 = add i32 %tkn_count.04.i7, 1
  %incdec.ptr.i15 = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.02.i8, i32 1
  %38 = ptrtoint ptr %num_elems.i6 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %num_elems.i6, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %sub.i16 = add i32 %40, -1
  %cmp.not.i17 = icmp ugt i32 %inc.i14, %sub.i16
  br i1 %cmp.not.i17, label %sw.epilog.i18.cleanup_crit_edge, label %sw.epilog.i18.while.body.i9_crit_edge

sw.epilog.i18.while.body.i9_crit_edge:            ; preds = %sw.epilog.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i9

sw.epilog.i18.cleanup_crit_edge:                  ; preds = %sw.epilog.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6:                                           ; preds = %audioreach_get_module_array.exit.sw.bb6_crit_edge, %audioreach_get_module_array.exit.sw.bb6_crit_edge57
  %41 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %mod_array.0..i, i32 0, i32 3
  %num_elems.i19 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %mod_array.0..i, i32 0, i32 2
  %ws_src.i = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 15
  %sd_line_idx.i = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 14
  %hw_interface_type.i20 = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 18
  %data_format.i21 = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 17
  %hw_interface_idx.i22 = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 13
  br label %while.body.i25

while.body.i25:                                   ; preds = %sw.epilog.i33.while.body.i25_crit_edge, %sw.bb6
  %tkn_count.04.i23 = phi i32 [ 0, %sw.bb6 ], [ %inc.i29, %sw.epilog.i33.while.body.i25_crit_edge ]
  %mod_elem.02.i24 = phi ptr [ %41, %sw.bb6 ], [ %incdec.ptr.i30, %sw.epilog.i33.while.body.i25_crit_edge ]
  %42 = ptrtoint ptr %mod_elem.02.i24 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %mod_elem.02.i24, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %44, label %while.body.i25.sw.epilog.i33_crit_edge [
    i32 250, label %while.body.i25.sw.epilog.sink.split.i28_crit_edge
    i32 253, label %sw.bb1.i26
    i32 251, label %sw.bb3.i27
    i32 256, label %sw.bb5.i
    i32 257, label %sw.bb7.i
  ]

while.body.i25.sw.epilog.sink.split.i28_crit_edge: ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i28

while.body.i25.sw.epilog.i33_crit_edge:           ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i33

sw.bb1.i26:                                       ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i28

sw.bb3.i27:                                       ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i28

sw.bb5.i:                                         ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i28

sw.bb7.i:                                         ; preds = %while.body.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i28

sw.epilog.sink.split.i28:                         ; preds = %sw.bb7.i, %sw.bb5.i, %sw.bb3.i27, %sw.bb1.i26, %while.body.i25.sw.epilog.sink.split.i28_crit_edge
  %ws_src.sink.i = phi ptr [ %ws_src.i, %sw.bb7.i ], [ %sd_line_idx.i, %sw.bb5.i ], [ %hw_interface_type.i20, %sw.bb3.i27 ], [ %data_format.i21, %sw.bb1.i26 ], [ %hw_interface_idx.i22, %while.body.i25.sw.epilog.sink.split.i28_crit_edge ]
  %value8.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.02.i24, i32 0, i32 1
  %46 = ptrtoint ptr %value8.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %value8.i, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %49 = ptrtoint ptr %ws_src.sink.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %ws_src.sink.i, align 4
  br label %sw.epilog.i33

sw.epilog.i33:                                    ; preds = %sw.epilog.sink.split.i28, %while.body.i25.sw.epilog.i33_crit_edge
  %inc.i29 = add i32 %tkn_count.04.i23, 1
  %incdec.ptr.i30 = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.02.i24, i32 1
  %50 = ptrtoint ptr %num_elems.i19 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %num_elems.i19, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  %sub.i31 = add i32 %52, -1
  %cmp.not.i32 = icmp ugt i32 %inc.i29, %sub.i31
  br i1 %cmp.not.i32, label %sw.epilog.i33.cleanup_crit_edge, label %sw.epilog.i33.while.body.i25_crit_edge

sw.epilog.i33.while.body.i25_crit_edge:           ; preds = %sw.epilog.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i25

sw.epilog.i33.cleanup_crit_edge:                  ; preds = %sw.epilog.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i33.cleanup_crit_edge, %sw.epilog.i18.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %audioreach_get_module_array.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @audioreach_widget_load_module_common(ptr nocapture noundef readonly %component, ptr noundef %w, ptr nocapture noundef readonly %tplg_w) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tplg_w, i32 0, i32 13
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %priv, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %array.i.i = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tplg_w, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i86.not.i = icmp eq i32 %5, 0
  br i1 %cmp.i86.not.i, label %entry.audioreach_get_sg_array.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.audioreach_get_sg_array.exit.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_sg_array.exit.i

land.rhs.i.loopexit.i:                            ; preds = %land.rhs4.i.i
  %cmp.i.i = icmp ult i32 %add.i.i, %6
  br i1 %cmp.i.i, label %land.rhs.i.loopexit.i.for.body.i.i_crit_edge, label %land.rhs.i.loopexit.i.audioreach_get_sg_array.exit.i_crit_edge

land.rhs.i.loopexit.i.audioreach_get_sg_array.exit.i_crit_edge: ; preds = %land.rhs.i.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_sg_array.exit.i

land.rhs.i.loopexit.i.for.body.i.i_crit_edge:     ; preds = %land.rhs.i.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.loopexit.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %sz.026.i87.i = phi i32 [ %add.i.i, %land.rhs.i.loopexit.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %array.i.i, i32 %sz.026.i87.i
  %7 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %add.ptr.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr.i.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %add.i.i = add i32 %10, %sz.026.i87.i
  %num_elems.i.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %add.ptr.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %num_elems.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %num_elems.i.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %sub.i.i = add i32 %13, -1
  br label %land.rhs4.i.i

land.rhs4.i.i:                                    ; preds = %while.body.i.i.land.rhs4.i.i_crit_edge, %for.body.i.i
  %tkn_count.025.i.i = phi i32 [ 0, %for.body.i.i ], [ %inc.i.i, %while.body.i.i.land.rhs4.i.i_crit_edge ]
  %sg_elem.024.i.i = phi ptr [ %7, %for.body.i.i ], [ %incdec.ptr.i.i, %while.body.i.i.land.rhs4.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tkn_count.025.i.i, i32 %sub.i.i)
  %cmp5.not.i.i = icmp ugt i32 %tkn_count.025.i.i, %sub.i.i
  br i1 %cmp5.not.i.i, label %land.rhs.i.loopexit.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %land.rhs4.i.i
  %14 = ptrtoint ptr %sg_elem.024.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %sg_elem.024.i.i, align 1
  %cond.i.i = icmp eq i32 %15, 33554432
  %inc.i.i = add i32 %tkn_count.025.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %sg_elem.024.i.i, i32 1
  br i1 %cond.i.i, label %while.body.i.i.audioreach_get_sg_array.exit.i_crit_edge, label %while.body.i.i.land.rhs4.i.i_crit_edge

while.body.i.i.land.rhs4.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs4.i.i

while.body.i.i.audioreach_get_sg_array.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_sg_array.exit.i

audioreach_get_sg_array.exit.i:                   ; preds = %while.body.i.i.audioreach_get_sg_array.exit.i_crit_edge, %land.rhs.i.loopexit.i.audioreach_get_sg_array.exit.i_crit_edge, %entry.audioreach_get_sg_array.exit.i_crit_edge
  %sg_array.0..i.i = phi ptr [ null, %entry.audioreach_get_sg_array.exit.i_crit_edge ], [ %add.ptr.i.i, %while.body.i.i.audioreach_get_sg_array.exit.i_crit_edge ], [ null, %land.rhs.i.loopexit.i.audioreach_get_sg_array.exit.i_crit_edge ]
  %16 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %sg_array.0..i.i, i32 0, i32 3
  %num_elems.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %sg_array.0..i.i, i32 0, i32 2
  %lock.i53.i = getelementptr inbounds %struct.q6apm, ptr %3, i32 0, i32 6
  %graph_info_idr.i.i = getelementptr inbounds %struct.q6apm, ptr %3, i32 0, i32 9
  %sub_graphs_idr.i.i = getelementptr inbounds %struct.q6apm, ptr %3, i32 0, i32 10
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %audioreach_get_sg_array.exit.i
  %sg.093.i = phi ptr [ inttoptr (i32 -1 to ptr), %audioreach_get_sg_array.exit.i ], [ %sg.1.i, %sw.epilog.i.while.body.i_crit_edge ]
  %tkn_count.092.i = phi i32 [ 0, %audioreach_get_sg_array.exit.i ], [ %inc.i, %sw.epilog.i.while.body.i_crit_edge ]
  %info.091.i = phi ptr [ null, %audioreach_get_sg_array.exit.i ], [ %info.1.i, %sw.epilog.i.while.body.i_crit_edge ]
  %sg_elem.089.i = phi ptr [ %16, %audioreach_get_sg_array.exit.i ], [ %incdec.ptr.i, %sw.epilog.i.while.body.i_crit_edge ]
  %17 = ptrtoint ptr %sg_elem.089.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %sg_elem.089.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %19, label %do.end.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb5.i
    i32 3, label %sw.bb12.i
    i32 4, label %sw.bb14.i
    i32 5, label %sw.bb16.i
  ]

sw.bb.i:                                          ; preds = %while.body.i
  %value.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %sg_elem.089.i, i32 0, i32 1
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %value.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.if.then_crit_edge, label %if.end.i.i

sw.bb.i.if.then_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i.i:                                       ; preds = %sw.bb.i
  tail call void @mutex_lock_nested(ptr noundef %lock.i53.i, i32 noundef 0) #8
  %call1.i.i = tail call ptr @idr_find(ptr noundef %sub_graphs_idr.i.i, i32 noundef %23) #8
  tail call void @mutex_unlock(ptr noundef %lock.i53.i) #8
  %tobool3.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.audioreach_parse_sg_tokens.exit_crit_edge

if.end.i.i.audioreach_parse_sg_tokens.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_parse_sg_tokens.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 40) #12
  %tobool7.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool7.not.i.i, label %if.end5.i.i.if.then_crit_edge, label %if.end10.i.i

if.end5.i.i.if.then_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %container_list.i.i = getelementptr inbounds %struct.audioreach_sub_graph, ptr %call7.i.i.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %container_list.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %container_list.i.i, ptr %container_list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.audioreach_sub_graph, ptr %call7.i.i.i.i, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %container_list.i.i, ptr %prev.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i53.i, i32 noundef 0) #8
  %add.i50.i = add i32 %23, 1
  %call13.i.i = tail call i32 @idr_alloc(ptr noundef %sub_graphs_idr.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %23, i32 noundef %add.i50.i, i32 noundef 3264) #8
  tail call void @mutex_unlock(ptr noundef %lock.i53.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp.i51.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp.i51.i, label %do.end.i.i, label %if.end17.i.i

do.end.i.i:                                       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.16, i32 noundef %23) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  %29 = inttoptr i32 %call13.i.i to ptr
  br label %audioreach_tplg_alloc_sub_graph.exit.i

if.end17.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call13.i.i, ptr %call7.i.i.i.i, align 8
  br label %audioreach_tplg_alloc_sub_graph.exit.i

audioreach_tplg_alloc_sub_graph.exit.i:           ; preds = %if.end17.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ %29, %do.end.i.i ], [ %call7.i.i.i.i, %if.end17.i.i ]
  %cmp.i52.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52.i, label %audioreach_tplg_alloc_sub_graph.exit.i.audioreach_parse_sg_tokens.exit_crit_edge, label %audioreach_tplg_alloc_sub_graph.exit.i.sw.epilog.i_crit_edge

audioreach_tplg_alloc_sub_graph.exit.i.sw.epilog.i_crit_edge: ; preds = %audioreach_tplg_alloc_sub_graph.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

audioreach_tplg_alloc_sub_graph.exit.i.audioreach_parse_sg_tokens.exit_crit_edge: ; preds = %audioreach_tplg_alloc_sub_graph.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_parse_sg_tokens.exit

sw.bb5.i:                                         ; preds = %while.body.i
  %value6.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %sg_elem.089.i, i32 0, i32 1
  %31 = ptrtoint ptr %value6.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %value6.i, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i53.i, i32 noundef 0) #8
  %call.i.i = tail call ptr @idr_find(ptr noundef %graph_info_idr.i.i, i32 noundef %33) #8
  tail call void @mutex_unlock(ptr noundef %lock.i53.i) #8
  %tobool.not.i54.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i54.i, label %if.end.i57.i, label %sw.bb5.i.audioreach_tplg_alloc_graph_info.exit.i_crit_edge

sw.bb5.i.audioreach_tplg_alloc_graph_info.exit.i_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_tplg_alloc_graph_info.exit.i

if.end.i57.i:                                     ; preds = %sw.bb5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i55.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 24) #12
  %tobool3.not.i56.i = icmp eq ptr %call7.i.i.i55.i, null
  br i1 %tobool3.not.i56.i, label %if.end.i57.i.if.then_crit_edge, label %if.end6.i.i

if.end.i57.i.if.then_crit_edge:                   ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end6.i.i:                                      ; preds = %if.end.i57.i
  %sg_list.i.i = getelementptr inbounds %struct.audioreach_graph_info, ptr %call7.i.i.i55.i, i32 0, i32 2
  %35 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %sg_list.i.i, ptr %sg_list.i.i, align 8
  %prev.i.i58.i = getelementptr inbounds %struct.audioreach_graph_info, ptr %call7.i.i.i55.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %sg_list.i.i, ptr %prev.i.i58.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i53.i, i32 noundef 0) #8
  %add.i59.i = add i32 %33, 1
  %call9.i.i = tail call i32 @idr_alloc(ptr noundef %graph_info_idr.i.i, ptr noundef nonnull %call7.i.i.i55.i, i32 noundef %33, i32 noundef %add.i59.i, i32 noundef 3264) #8
  tail call void @mutex_unlock(ptr noundef %lock.i53.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp.i60.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp.i60.i, label %do.end.i61.i, label %if.end13.i.i

do.end.i61.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.18, i32 noundef %33) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i55.i) #8
  %39 = inttoptr i32 %call9.i.i to ptr
  br label %audioreach_tplg_alloc_graph_info.exit.i

if.end13.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %call7.i.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call9.i.i, ptr %call7.i.i.i55.i, align 8
  br label %audioreach_tplg_alloc_graph_info.exit.i

audioreach_tplg_alloc_graph_info.exit.i:          ; preds = %if.end13.i.i, %do.end.i61.i, %sw.bb5.i.audioreach_tplg_alloc_graph_info.exit.i_crit_edge
  %retval.0.i62.i = phi ptr [ %39, %do.end.i61.i ], [ %call7.i.i.i55.i, %if.end13.i.i ], [ %call.i.i, %sw.bb5.i.audioreach_tplg_alloc_graph_info.exit.i_crit_edge ]
  %cmp.i63.i = icmp ugt ptr %retval.0.i62.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %audioreach_tplg_alloc_graph_info.exit.i.audioreach_parse_sg_tokens.exit_crit_edge, label %audioreach_tplg_alloc_graph_info.exit.i.sw.epilog.i_crit_edge

audioreach_tplg_alloc_graph_info.exit.i.sw.epilog.i_crit_edge: ; preds = %audioreach_tplg_alloc_graph_info.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

audioreach_tplg_alloc_graph_info.exit.i.audioreach_parse_sg_tokens.exit_crit_edge: ; preds = %audioreach_tplg_alloc_graph_info.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_parse_sg_tokens.exit

sw.bb12.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %value13.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %sg_elem.089.i, i32 0, i32 1
  %41 = ptrtoint ptr %value13.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %value13.i, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %perf_mode.i = getelementptr inbounds %struct.audioreach_sub_graph, ptr %sg.093.i, i32 0, i32 1
  %44 = ptrtoint ptr %perf_mode.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %perf_mode.i, align 4
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %value15.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %sg_elem.089.i, i32 0, i32 1
  %45 = ptrtoint ptr %value15.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %value15.i, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  %direction.i = getelementptr inbounds %struct.audioreach_sub_graph, ptr %sg.093.i, i32 0, i32 2
  %48 = ptrtoint ptr %direction.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %direction.i, align 4
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %value17.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %sg_elem.089.i, i32 0, i32 1
  %49 = ptrtoint ptr %value17.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %value17.i, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #8
  %scenario_id.i = getelementptr inbounds %struct.audioreach_sub_graph, ptr %sg.093.i, i32 0, i32 3
  %52 = ptrtoint ptr %scenario_id.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %scenario_id.i, align 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.14, i32 noundef %18) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %audioreach_tplg_alloc_graph_info.exit.i.sw.epilog.i_crit_edge, %audioreach_tplg_alloc_sub_graph.exit.i.sw.epilog.i_crit_edge
  %info.1.i = phi ptr [ %info.091.i, %do.end.i ], [ %info.091.i, %sw.bb16.i ], [ %info.091.i, %sw.bb14.i ], [ %info.091.i, %sw.bb12.i ], [ %retval.0.i62.i, %audioreach_tplg_alloc_graph_info.exit.i.sw.epilog.i_crit_edge ], [ %info.091.i, %audioreach_tplg_alloc_sub_graph.exit.i.sw.epilog.i_crit_edge ]
  %sg.1.i = phi ptr [ %sg.093.i, %do.end.i ], [ %sg.093.i, %sw.bb16.i ], [ %sg.093.i, %sw.bb14.i ], [ %sg.093.i, %sw.bb12.i ], [ %sg.093.i, %audioreach_tplg_alloc_graph_info.exit.i.sw.epilog.i_crit_edge ], [ %retval.0.i.i, %audioreach_tplg_alloc_sub_graph.exit.i.sw.epilog.i_crit_edge ]
  %inc.i = add i32 %tkn_count.092.i, 1
  %incdec.ptr.i = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %sg_elem.089.i, i32 1
  %55 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %num_elems.i, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  %sub.i = add i32 %57, -1
  %cmp.not.i = icmp ugt i32 %inc.i, %sub.i
  br i1 %cmp.not.i, label %while.end.i, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %sw.epilog.i
  %tobool19.not.i = icmp eq ptr %info.1.i, null
  br i1 %tobool19.not.i, label %while.end.i.audioreach_parse_sg_tokens.exit_crit_edge, label %if.then20.i

while.end.i.audioreach_parse_sg_tokens.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_parse_sg_tokens.exit

if.then20.i:                                      ; preds = %while.end.i
  %node.i.i = getelementptr inbounds %struct.audioreach_sub_graph, ptr %sg.1.i, i32 0, i32 4
  %sg_list.i64.i = getelementptr inbounds %struct.audioreach_graph_info, ptr %info.1.i, i32 0, i32 2
  %prev.i.i65.i = getelementptr inbounds %struct.audioreach_graph_info, ptr %info.1.i, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %prev.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i65.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i.i, ptr noundef %59, ptr noundef %sg_list.i64.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then20.i.audioreach_tplg_add_sub_graph.exit.i_crit_edge

if.then20.i.audioreach_tplg_add_sub_graph.exit.i_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_tplg_add_sub_graph.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %prev.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %node.i.i, ptr %prev.i.i65.i, align 4
  %61 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %sg_list.i64.i, ptr %node.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.audioreach_sub_graph, ptr %sg.1.i, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %node.i.i, ptr %59, align 4
  br label %audioreach_tplg_add_sub_graph.exit.i

audioreach_tplg_add_sub_graph.exit.i:             ; preds = %if.end.i.i.i.i, %if.then20.i.audioreach_tplg_add_sub_graph.exit.i_crit_edge
  %info1.i.i = getelementptr inbounds %struct.audioreach_sub_graph, ptr %sg.1.i, i32 0, i32 5
  %64 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %info.1.i, ptr %info1.i.i, align 4
  %num_sub_graphs.i.i = getelementptr inbounds %struct.audioreach_graph_info, ptr %info.1.i, i32 0, i32 1
  %65 = ptrtoint ptr %num_sub_graphs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_sub_graphs.i.i, align 4
  %inc.i66.i = add i32 %66, 1
  store i32 %inc.i66.i, ptr %num_sub_graphs.i.i, align 4
  br label %audioreach_parse_sg_tokens.exit

audioreach_parse_sg_tokens.exit:                  ; preds = %audioreach_tplg_add_sub_graph.exit.i, %while.end.i.audioreach_parse_sg_tokens.exit_crit_edge, %audioreach_tplg_alloc_graph_info.exit.i.audioreach_parse_sg_tokens.exit_crit_edge, %audioreach_tplg_alloc_sub_graph.exit.i.audioreach_parse_sg_tokens.exit_crit_edge, %if.end.i.i.audioreach_parse_sg_tokens.exit_crit_edge
  %retval.0.i = phi ptr [ %sg.1.i, %audioreach_tplg_add_sub_graph.exit.i ], [ %sg.1.i, %while.end.i.audioreach_parse_sg_tokens.exit_crit_edge ], [ %retval.0.i.i, %audioreach_tplg_alloc_sub_graph.exit.i.audioreach_parse_sg_tokens.exit_crit_edge ], [ %retval.0.i62.i, %audioreach_tplg_alloc_graph_info.exit.i.audioreach_parse_sg_tokens.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.audioreach_parse_sg_tokens.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %audioreach_parse_sg_tokens.exit.if.then_crit_edge, label %if.end

audioreach_parse_sg_tokens.exit.if.then_crit_edge: ; preds = %audioreach_parse_sg_tokens.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %audioreach_parse_sg_tokens.exit.if.then_crit_edge, %if.end.i57.i.if.then_crit_edge, %if.end5.i.i.if.then_crit_edge, %sw.bb.i.if.then_crit_edge
  %retval.0.i101 = phi ptr [ %retval.0.i, %audioreach_parse_sg_tokens.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i57.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb.i.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.i.i.if.then_crit_edge ]
  %67 = ptrtoint ptr %retval.0.i101 to i32
  br label %cleanup

if.end:                                           ; preds = %audioreach_parse_sg_tokens.exit
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %priv, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i50.not.i = icmp eq i32 %69, 0
  br i1 %cmp.i50.not.i, label %if.end.audioreach_get_cont_array.exit.i_crit_edge, label %if.end.for.body.i.i8_crit_edge

if.end.for.body.i.i8_crit_edge:                   ; preds = %if.end
  br label %for.body.i.i8

if.end.audioreach_get_cont_array.exit.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_cont_array.exit.i

land.rhs.i.loopexit.i3:                           ; preds = %land.rhs4.i.i11
  %cmp.i.i2 = icmp ult i32 %add.i.i5, %70
  br i1 %cmp.i.i2, label %land.rhs.i.loopexit.i3.for.body.i.i8_crit_edge, label %land.rhs.i.loopexit.i3.audioreach_get_cont_array.exit.i_crit_edge

land.rhs.i.loopexit.i3.audioreach_get_cont_array.exit.i_crit_edge: ; preds = %land.rhs.i.loopexit.i3
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_cont_array.exit.i

land.rhs.i.loopexit.i3.for.body.i.i8_crit_edge:   ; preds = %land.rhs.i.loopexit.i3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i8

for.body.i.i8:                                    ; preds = %land.rhs.i.loopexit.i3.for.body.i.i8_crit_edge, %if.end.for.body.i.i8_crit_edge
  %sz.026.i51.i = phi i32 [ %add.i.i5, %land.rhs.i.loopexit.i3.for.body.i.i8_crit_edge ], [ 0, %if.end.for.body.i.i8_crit_edge ]
  %add.ptr.i.i4 = getelementptr i8, ptr %array.i.i, i32 %sz.026.i51.i
  %71 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %add.ptr.i.i4, i32 0, i32 3
  %72 = ptrtoint ptr %add.ptr.i.i4 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %add.ptr.i.i4, align 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  %add.i.i5 = add i32 %74, %sz.026.i51.i
  %num_elems.i.i6 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %add.ptr.i.i4, i32 0, i32 2
  %75 = ptrtoint ptr %num_elems.i.i6 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %num_elems.i.i6, align 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #8
  %sub.i.i7 = add i32 %77, -1
  br label %land.rhs4.i.i11

land.rhs4.i.i11:                                  ; preds = %while.body.i.i15.land.rhs4.i.i11_crit_edge, %for.body.i.i8
  %tkn_count.025.i.i9 = phi i32 [ 0, %for.body.i.i8 ], [ %inc.i.i13, %while.body.i.i15.land.rhs4.i.i11_crit_edge ]
  %cont_elem.024.i.i = phi ptr [ %71, %for.body.i.i8 ], [ %incdec.ptr.i.i14, %while.body.i.i15.land.rhs4.i.i11_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tkn_count.025.i.i9, i32 %sub.i.i7)
  %cmp5.not.i.i10 = icmp ugt i32 %tkn_count.025.i.i9, %sub.i.i7
  br i1 %cmp5.not.i.i10, label %land.rhs.i.loopexit.i3, label %while.body.i.i15

while.body.i.i15:                                 ; preds = %land.rhs4.i.i11
  %78 = ptrtoint ptr %cont_elem.024.i.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %cont_elem.024.i.i, align 1
  %cond.i.i12 = icmp eq i32 %79, 1677721600
  %inc.i.i13 = add i32 %tkn_count.025.i.i9, 1
  %incdec.ptr.i.i14 = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %cont_elem.024.i.i, i32 1
  br i1 %cond.i.i12, label %while.body.i.i15.audioreach_get_cont_array.exit.i_crit_edge, label %while.body.i.i15.land.rhs4.i.i11_crit_edge

while.body.i.i15.land.rhs4.i.i11_crit_edge:       ; preds = %while.body.i.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs4.i.i11

while.body.i.i15.audioreach_get_cont_array.exit.i_crit_edge: ; preds = %while.body.i.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_cont_array.exit.i

audioreach_get_cont_array.exit.i:                 ; preds = %while.body.i.i15.audioreach_get_cont_array.exit.i_crit_edge, %land.rhs.i.loopexit.i3.audioreach_get_cont_array.exit.i_crit_edge, %if.end.audioreach_get_cont_array.exit.i_crit_edge
  %cont_array.0..i.i = phi ptr [ null, %if.end.audioreach_get_cont_array.exit.i_crit_edge ], [ %add.ptr.i.i4, %while.body.i.i15.audioreach_get_cont_array.exit.i_crit_edge ], [ null, %land.rhs.i.loopexit.i3.audioreach_get_cont_array.exit.i_crit_edge ]
  %80 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %cont_array.0..i.i, i32 0, i32 3
  %num_elems.i16 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %cont_array.0..i.i, i32 0, i32 2
  %containers_idr.i.i = getelementptr inbounds %struct.q6apm, ptr %3, i32 0, i32 11
  %container_list.i.i17 = getelementptr inbounds %struct.audioreach_sub_graph, ptr %retval.0.i, i32 0, i32 7
  %prev.i44.i.i = getelementptr inbounds %struct.audioreach_sub_graph, ptr %retval.0.i, i32 0, i32 7, i32 1
  %num_containers.i.i = getelementptr inbounds %struct.audioreach_sub_graph, ptr %retval.0.i, i32 0, i32 6
  br label %while.body.i18

while.body.i18:                                   ; preds = %sw.epilog.i45.while.body.i18_crit_edge, %audioreach_get_cont_array.exit.i
  %tkn_count.056.i = phi i32 [ 0, %audioreach_get_cont_array.exit.i ], [ %inc.i41, %sw.epilog.i45.while.body.i18_crit_edge ]
  %cont.055.i = phi ptr [ inttoptr (i32 -1 to ptr), %audioreach_get_cont_array.exit.i ], [ %cont.1.i, %sw.epilog.i45.while.body.i18_crit_edge ]
  %cont_elem.053.i = phi ptr [ %80, %audioreach_get_cont_array.exit.i ], [ %incdec.ptr.i42, %sw.epilog.i45.while.body.i18_crit_edge ]
  %81 = ptrtoint ptr %cont_elem.053.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %cont_elem.053.i, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #8
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %83, label %do.end.i40 [
    i32 100, label %sw.bb.i21
    i32 101, label %sw.bb3.i
    i32 102, label %sw.bb5.i39
    i32 103, label %sw.bb7.i
    i32 104, label %sw.bb9.i
  ]

sw.bb.i21:                                        ; preds = %while.body.i18
  %value.i19 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %cont_elem.053.i, i32 0, i32 1
  %85 = ptrtoint ptr %value.i19 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %value.i19, align 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i.i20 = icmp eq i32 %86, 0
  br i1 %tobool.not.i.i20, label %sw.bb.i21.if.then7_crit_edge, label %if.end.i.i24

sw.bb.i21.if.then7_crit_edge:                     ; preds = %sw.bb.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end.i.i24:                                     ; preds = %sw.bb.i21
  tail call void @mutex_lock_nested(ptr noundef %lock.i53.i, i32 noundef 0) #8
  %call1.i.i22 = tail call ptr @idr_find(ptr noundef %containers_idr.i.i, i32 noundef %87) #8
  tail call void @mutex_unlock(ptr noundef %lock.i53.i) #8
  %tobool3.not.i.i23 = icmp eq ptr %call1.i.i22, null
  br i1 %tobool3.not.i.i23, label %if.end5.i.i27, label %if.end.i.i24.audioreach_parse_cont_tokens.exit_crit_edge

if.end.i.i24.audioreach_parse_cont_tokens.exit_crit_edge: ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_parse_cont_tokens.exit

if.end5.i.i27:                                    ; preds = %if.end.i.i24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %88 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3520, i32 noundef 44) #12
  %tobool7.not.i.i26 = icmp eq ptr %call7.i.i.i.i25, null
  br i1 %tobool7.not.i.i26, label %if.end5.i.i27.if.then7_crit_edge, label %if.end10.i.i30

if.end5.i.i27.if.then7_crit_edge:                 ; preds = %if.end5.i.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end10.i.i30:                                   ; preds = %if.end5.i.i27
  %modules_list.i.i = getelementptr inbounds %struct.audioreach_container, ptr %call7.i.i.i.i25, i32 0, i32 7
  %89 = ptrtoint ptr %modules_list.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %modules_list.i.i, ptr %modules_list.i.i, align 8
  %prev.i.i.i28 = getelementptr inbounds %struct.audioreach_container, ptr %call7.i.i.i.i25, i32 0, i32 7, i32 1
  %90 = ptrtoint ptr %prev.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %modules_list.i.i, ptr %prev.i.i.i28, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i53.i, i32 noundef 0) #8
  %add.i33.i = add i32 %87, 1
  %call13.i.i29 = tail call i32 @idr_alloc(ptr noundef %containers_idr.i.i, ptr noundef nonnull %call7.i.i.i.i25, i32 noundef %87, i32 noundef %add.i33.i, i32 noundef 3264) #8
  tail call void @mutex_unlock(ptr noundef %lock.i53.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i29)
  %cmp.i34.i = icmp slt i32 %call13.i.i29, 0
  br i1 %cmp.i34.i, label %do.end.i.i31, label %if.end17.i.i34

do.end.i.i31:                                     ; preds = %if.end10.i.i30
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.21, i32 noundef %87) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i25) #8
  %93 = inttoptr i32 %call13.i.i29 to ptr
  br label %audioreach_tplg_alloc_container.exit.i

if.end17.i.i34:                                   ; preds = %if.end10.i.i30
  %94 = ptrtoint ptr %call7.i.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call13.i.i29, ptr %call7.i.i.i.i25, align 8
  %sub_graph.i.i = getelementptr inbounds %struct.audioreach_container, ptr %call7.i.i.i.i25, i32 0, i32 8
  %95 = ptrtoint ptr %sub_graph.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %retval.0.i, ptr %sub_graph.i.i, align 8
  %node.i.i32 = getelementptr inbounds %struct.audioreach_container, ptr %call7.i.i.i.i25, i32 0, i32 5
  %96 = ptrtoint ptr %prev.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i44.i.i, align 4
  %call.i.i.i.i33 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i.i32, ptr noundef %97, ptr noundef %container_list.i.i17) #8
  br i1 %call.i.i.i.i33, label %if.end.i.i.i.i36, label %if.end17.i.i34.list_add_tail.exit.i.i_crit_edge

if.end17.i.i34.list_add_tail.exit.i.i_crit_edge:  ; preds = %if.end17.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i36:                                 ; preds = %if.end17.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %prev.i44.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %node.i.i32, ptr %prev.i44.i.i, align 4
  %99 = ptrtoint ptr %node.i.i32 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %container_list.i.i17, ptr %node.i.i32, align 4
  %prev3.i.i.i.i35 = getelementptr inbounds %struct.audioreach_container, ptr %call7.i.i.i.i25, i32 0, i32 5, i32 1
  %100 = ptrtoint ptr %prev3.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev3.i.i.i.i35, align 8
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %node.i.i32, ptr %97, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i36, %if.end17.i.i34.list_add_tail.exit.i.i_crit_edge
  %102 = ptrtoint ptr %num_containers.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_containers.i.i, align 4
  %inc.i35.i = add i32 %103, 1
  store i32 %inc.i35.i, ptr %num_containers.i.i, align 4
  br label %audioreach_tplg_alloc_container.exit.i

audioreach_tplg_alloc_container.exit.i:           ; preds = %list_add_tail.exit.i.i, %do.end.i.i31
  %retval.0.i.i37 = phi ptr [ %93, %do.end.i.i31 ], [ %call7.i.i.i.i25, %list_add_tail.exit.i.i ]
  %cmp.i36.i = icmp ugt ptr %retval.0.i.i37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i, label %audioreach_tplg_alloc_container.exit.i.audioreach_parse_cont_tokens.exit_crit_edge, label %audioreach_tplg_alloc_container.exit.i.sw.epilog.i45_crit_edge

audioreach_tplg_alloc_container.exit.i.sw.epilog.i45_crit_edge: ; preds = %audioreach_tplg_alloc_container.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i45

audioreach_tplg_alloc_container.exit.i.audioreach_parse_cont_tokens.exit_crit_edge: ; preds = %audioreach_tplg_alloc_container.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_parse_cont_tokens.exit

sw.bb3.i:                                         ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #10
  %value4.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %cont_elem.053.i, i32 0, i32 1
  %104 = ptrtoint ptr %value4.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %value4.i, align 1
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #8
  %capability_id.i = getelementptr inbounds %struct.audioreach_container, ptr %cont.055.i, i32 0, i32 1
  %107 = ptrtoint ptr %capability_id.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %capability_id.i, align 4
  br label %sw.epilog.i45

sw.bb5.i39:                                       ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #10
  %value6.i38 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %cont_elem.053.i, i32 0, i32 1
  %108 = ptrtoint ptr %value6.i38 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %value6.i38, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #8
  %stack_size.i = getelementptr inbounds %struct.audioreach_container, ptr %cont.055.i, i32 0, i32 3
  %111 = ptrtoint ptr %stack_size.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %stack_size.i, align 4
  br label %sw.epilog.i45

sw.bb7.i:                                         ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #10
  %value8.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %cont_elem.053.i, i32 0, i32 1
  %112 = ptrtoint ptr %value8.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %value8.i, align 1
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #8
  %graph_pos.i = getelementptr inbounds %struct.audioreach_container, ptr %cont.055.i, i32 0, i32 2
  %115 = ptrtoint ptr %graph_pos.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %graph_pos.i, align 4
  br label %sw.epilog.i45

sw.bb9.i:                                         ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #10
  %value10.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %cont_elem.053.i, i32 0, i32 1
  %116 = ptrtoint ptr %value10.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %value10.i, align 1
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #8
  %proc_domain.i = getelementptr inbounds %struct.audioreach_container, ptr %cont.055.i, i32 0, i32 4
  %119 = ptrtoint ptr %proc_domain.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %proc_domain.i, align 4
  br label %sw.epilog.i45

do.end.i40:                                       ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.14, i32 noundef %82) #11
  br label %sw.epilog.i45

sw.epilog.i45:                                    ; preds = %do.end.i40, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i39, %sw.bb3.i, %audioreach_tplg_alloc_container.exit.i.sw.epilog.i45_crit_edge
  %cont.1.i = phi ptr [ %cont.055.i, %do.end.i40 ], [ %cont.055.i, %sw.bb9.i ], [ %cont.055.i, %sw.bb7.i ], [ %cont.055.i, %sw.bb5.i39 ], [ %cont.055.i, %sw.bb3.i ], [ %retval.0.i.i37, %audioreach_tplg_alloc_container.exit.i.sw.epilog.i45_crit_edge ]
  %inc.i41 = add i32 %tkn_count.056.i, 1
  %incdec.ptr.i42 = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %cont_elem.053.i, i32 1
  %122 = ptrtoint ptr %num_elems.i16 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %num_elems.i16, align 1
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #8
  %sub.i43 = add i32 %124, -1
  %cmp.not.i44 = icmp ugt i32 %inc.i41, %sub.i43
  br i1 %cmp.not.i44, label %sw.epilog.i45.audioreach_parse_cont_tokens.exit_crit_edge, label %sw.epilog.i45.while.body.i18_crit_edge

sw.epilog.i45.while.body.i18_crit_edge:           ; preds = %sw.epilog.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i18

sw.epilog.i45.audioreach_parse_cont_tokens.exit_crit_edge: ; preds = %sw.epilog.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_parse_cont_tokens.exit

audioreach_parse_cont_tokens.exit:                ; preds = %sw.epilog.i45.audioreach_parse_cont_tokens.exit_crit_edge, %audioreach_tplg_alloc_container.exit.i.audioreach_parse_cont_tokens.exit_crit_edge, %if.end.i.i24.audioreach_parse_cont_tokens.exit_crit_edge
  %retval.0.i46 = phi ptr [ %retval.0.i.i37, %audioreach_tplg_alloc_container.exit.i.audioreach_parse_cont_tokens.exit_crit_edge ], [ %cont.1.i, %sw.epilog.i45.audioreach_parse_cont_tokens.exit_crit_edge ], [ %call1.i.i22, %if.end.i.i24.audioreach_parse_cont_tokens.exit_crit_edge ]
  %cmp.i47 = icmp ugt ptr %retval.0.i46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %audioreach_parse_cont_tokens.exit.if.then7_crit_edge, label %if.end9

audioreach_parse_cont_tokens.exit.if.then7_crit_edge: ; preds = %audioreach_parse_cont_tokens.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %audioreach_parse_cont_tokens.exit.if.then7_crit_edge, %if.end5.i.i27.if.then7_crit_edge, %sw.bb.i21.if.then7_crit_edge
  %retval.0.i46104 = phi ptr [ %retval.0.i46, %audioreach_parse_cont_tokens.exit.if.then7_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.i.i27.if.then7_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb.i21.if.then7_crit_edge ]
  %125 = ptrtoint ptr %retval.0.i46104 to i32
  br label %cleanup

if.end9:                                          ; preds = %audioreach_parse_cont_tokens.exit
  %126 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %priv, align 1
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i116.not.i = icmp eq i32 %127, 0
  br i1 %cmp.i116.not.i, label %if.end9.audioreach_get_module_array.exit.i_crit_edge, label %if.end9.for.body.i.i55_crit_edge

if.end9.for.body.i.i55_crit_edge:                 ; preds = %if.end9
  br label %for.body.i.i55

if.end9.audioreach_get_module_array.exit.i_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_module_array.exit.i

land.rhs.i.loopexit.i50:                          ; preds = %land.rhs4.i.i58
  %cmp.i.i49 = icmp ult i32 %add.i.i52, %128
  br i1 %cmp.i.i49, label %land.rhs.i.loopexit.i50.for.body.i.i55_crit_edge, label %land.rhs.i.loopexit.i50.audioreach_get_module_array.exit.i_crit_edge

land.rhs.i.loopexit.i50.audioreach_get_module_array.exit.i_crit_edge: ; preds = %land.rhs.i.loopexit.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_module_array.exit.i

land.rhs.i.loopexit.i50.for.body.i.i55_crit_edge: ; preds = %land.rhs.i.loopexit.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i55

for.body.i.i55:                                   ; preds = %land.rhs.i.loopexit.i50.for.body.i.i55_crit_edge, %if.end9.for.body.i.i55_crit_edge
  %sz.026.i117.i = phi i32 [ %add.i.i52, %land.rhs.i.loopexit.i50.for.body.i.i55_crit_edge ], [ 0, %if.end9.for.body.i.i55_crit_edge ]
  %add.ptr.i.i51 = getelementptr i8, ptr %array.i.i, i32 %sz.026.i117.i
  %129 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %add.ptr.i.i51, i32 0, i32 3
  %130 = ptrtoint ptr %add.ptr.i.i51 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %add.ptr.i.i51, align 1
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #8
  %add.i.i52 = add i32 %132, %sz.026.i117.i
  %num_elems.i.i53 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %add.ptr.i.i51, i32 0, i32 2
  %133 = ptrtoint ptr %num_elems.i.i53 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %num_elems.i.i53, align 1
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #8
  %sub.i.i54 = add i32 %135, -1
  br label %land.rhs4.i.i58

land.rhs4.i.i58:                                  ; preds = %while.body.i.i62.land.rhs4.i.i58_crit_edge, %for.body.i.i55
  %tkn_count.025.i.i56 = phi i32 [ 0, %for.body.i.i55 ], [ %inc.i.i60, %while.body.i.i62.land.rhs4.i.i58_crit_edge ]
  %mod_elem.024.i.i = phi ptr [ %129, %for.body.i.i55 ], [ %incdec.ptr.i.i61, %while.body.i.i62.land.rhs4.i.i58_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tkn_count.025.i.i56, i32 %sub.i.i54)
  %cmp5.not.i.i57 = icmp ugt i32 %tkn_count.025.i.i56, %sub.i.i54
  br i1 %cmp5.not.i.i57, label %land.rhs.i.loopexit.i50, label %while.body.i.i62

while.body.i.i62:                                 ; preds = %land.rhs4.i.i58
  %136 = ptrtoint ptr %mod_elem.024.i.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %mod_elem.024.i.i, align 1
  %cond.i.i59 = icmp eq i32 %137, -922746880
  %inc.i.i60 = add i32 %tkn_count.025.i.i56, 1
  %incdec.ptr.i.i61 = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.024.i.i, i32 1
  br i1 %cond.i.i59, label %while.body.i.i62.audioreach_get_module_array.exit.i_crit_edge, label %while.body.i.i62.land.rhs4.i.i58_crit_edge

while.body.i.i62.land.rhs4.i.i58_crit_edge:       ; preds = %while.body.i.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs4.i.i58

while.body.i.i62.audioreach_get_module_array.exit.i_crit_edge: ; preds = %while.body.i.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_get_module_array.exit.i

audioreach_get_module_array.exit.i:               ; preds = %while.body.i.i62.audioreach_get_module_array.exit.i_crit_edge, %land.rhs.i.loopexit.i50.audioreach_get_module_array.exit.i_crit_edge, %if.end9.audioreach_get_module_array.exit.i_crit_edge
  %mod_array.0..i.i = phi ptr [ null, %if.end9.audioreach_get_module_array.exit.i_crit_edge ], [ %add.ptr.i.i51, %while.body.i.i62.audioreach_get_module_array.exit.i_crit_edge ], [ null, %land.rhs.i.loopexit.i50.audioreach_get_module_array.exit.i_crit_edge ]
  %138 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %mod_array.0..i.i, i32 0, i32 3
  %num_elems.i63 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %mod_array.0..i.i, i32 0, i32 2
  %modules_idr.i.i = getelementptr inbounds %struct.q6apm, ptr %3, i32 0, i32 12
  %modules_list.i.i65 = getelementptr inbounds %struct.audioreach_container, ptr %retval.0.i46, i32 0, i32 7
  %prev.i.i.i66 = getelementptr inbounds %struct.audioreach_container, ptr %retval.0.i46, i32 0, i32 7, i32 1
  %num_modules.i.i = getelementptr inbounds %struct.audioreach_container, ptr %retval.0.i46, i32 0, i32 6
  br label %while.body.i67

while.body.i67:                                   ; preds = %sw.epilog.i95.while.body.i67_crit_edge, %audioreach_get_module_array.exit.i
  %mod.0131.i = phi ptr [ null, %audioreach_get_module_array.exit.i ], [ %mod.1.i, %sw.epilog.i95.while.body.i67_crit_edge ]
  %mod_elem.0129.i = phi ptr [ %138, %audioreach_get_module_array.exit.i ], [ %incdec.ptr.i92, %sw.epilog.i95.while.body.i67_crit_edge ]
  %tkn_count.0128.i = phi i32 [ 0, %audioreach_get_module_array.exit.i ], [ %inc.i91, %sw.epilog.i95.while.body.i67_crit_edge ]
  %module_id.0127.i = phi i32 [ 0, %audioreach_get_module_array.exit.i ], [ %module_id.1.i, %sw.epilog.i95.while.body.i67_crit_edge ]
  %dst_mod_ip_port_id.0126.i = phi i32 [ 0, %audioreach_get_module_array.exit.i ], [ %dst_mod_ip_port_id.1.i, %sw.epilog.i95.while.body.i67_crit_edge ]
  %dst_mod_inst_id.0125.i = phi i32 [ 0, %audioreach_get_module_array.exit.i ], [ %dst_mod_inst_id.1.i, %sw.epilog.i95.while.body.i67_crit_edge ]
  %src_mod_op_port_id.0124.i = phi i32 [ 0, %audioreach_get_module_array.exit.i ], [ %src_mod_op_port_id.1.i, %sw.epilog.i95.while.body.i67_crit_edge ]
  %src_mod_inst_id.0123.i = phi i32 [ 0, %audioreach_get_module_array.exit.i ], [ %src_mod_inst_id.1.i, %sw.epilog.i95.while.body.i67_crit_edge ]
  %out_port.0122.i = phi i32 [ 0, %audioreach_get_module_array.exit.i ], [ %out_port.1.i, %sw.epilog.i95.while.body.i67_crit_edge ]
  %in_port.0121.i = phi i32 [ 0, %audioreach_get_module_array.exit.i ], [ %in_port.1.i, %sw.epilog.i95.while.body.i67_crit_edge ]
  %max_op_port.0120.i = phi i32 [ 0, %audioreach_get_module_array.exit.i ], [ %max_op_port.1.i, %sw.epilog.i95.while.body.i67_crit_edge ]
  %max_ip_port.0119.i = phi i32 [ 0, %audioreach_get_module_array.exit.i ], [ %max_ip_port.1.i, %sw.epilog.i95.while.body.i67_crit_edge ]
  %139 = ptrtoint ptr %mod_elem.0129.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %mod_elem.0129.i, align 1
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #8
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %141, label %while.body.i67.sw.epilog.i95_crit_edge [
    i32 200, label %sw.bb.i69
    i32 201, label %sw.bb1.i
    i32 202, label %sw.bb8.i
    i32 203, label %sw.bb10.i
    i32 204, label %sw.bb12.i86
    i32 205, label %sw.bb14.i88
    i32 206, label %sw.bb16.i90
    i32 208, label %sw.bb18.i
    i32 209, label %sw.bb20.i
    i32 207, label %sw.bb22.i
  ]

while.body.i67.sw.epilog.i95_crit_edge:           ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i95

sw.bb.i69:                                        ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  %value.i68 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.0129.i, i32 0, i32 1
  %143 = ptrtoint ptr %value.i68 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %value.i68, align 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #8
  br label %sw.epilog.i95

sw.bb1.i:                                         ; preds = %while.body.i67
  %value2.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.0129.i, i32 0, i32 1
  %146 = ptrtoint ptr %value2.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %value2.i, align 1
  %148 = tail call i32 @llvm.bswap.i32(i32 %147) #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i53.i, i32 noundef 0) #8
  %call.i.i70 = tail call ptr @idr_find(ptr noundef %modules_idr.i.i, i32 noundef %148) #8
  tail call void @mutex_unlock(ptr noundef %lock.i53.i) #8
  %tobool.not.i.i71 = icmp eq ptr %call.i.i70, null
  br i1 %tobool.not.i.i71, label %if.end.i.i74, label %audioreach_tplg_alloc_module.exit.thread84.i

if.end.i.i74:                                     ; preds = %sw.bb1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %149 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i72 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %149, i32 noundef 3520, i32 noundef 112) #12
  %tobool3.not.i.i73 = icmp eq ptr %call7.i.i.i.i72, null
  br i1 %tobool3.not.i.i73, label %if.end.i.i74.if.then13_crit_edge, label %if.end6.i.i75

if.end.i.i74.if.then13_crit_edge:                 ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end6.i.i75:                                    ; preds = %if.end.i.i74
  tail call void @mutex_lock_nested(ptr noundef %lock.i53.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool8.not.i.i = icmp eq i32 %147, 0
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i75
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.i = tail call i32 @idr_alloc_cyclic(ptr noundef %modules_idr.i.i, ptr noundef nonnull %call7.i.i.i.i72, i32 noundef 28672, i32 noundef 32768, i32 noundef 3264) #8
  br label %if.end14.i.i

if.else.i.i:                                      ; preds = %if.end6.i.i75
  call void @__sanitizer_cov_trace_pc() #10
  %add.i77.i = add i32 %148, 1
  %call13.i.i76 = tail call i32 @idr_alloc(ptr noundef %modules_idr.i.i, ptr noundef nonnull %call7.i.i.i.i72, i32 noundef %148, i32 noundef %add.i77.i, i32 noundef 3264) #8
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.else.i.i, %if.then9.i.i
  %ret.0.i.i = phi i32 [ %call13.i.i76, %if.else.i.i ], [ %call11.i.i, %if.then9.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i53.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp.i78.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp.i78.i, label %do.end.i.i77, label %if.end18.i.i

do.end.i.i77:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.25, i32 noundef %148) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i72) #8
  %152 = inttoptr i32 %ret.0.i.i to ptr
  br label %audioreach_tplg_alloc_module.exit.i

if.end18.i.i:                                     ; preds = %if.end14.i.i
  %instance_id.i.i = getelementptr inbounds %struct.audioreach_module, ptr %call7.i.i.i.i72, i32 0, i32 1
  %153 = ptrtoint ptr %instance_id.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %ret.0.i.i, ptr %instance_id.i.i, align 4
  %node.i.i78 = getelementptr inbounds %struct.audioreach_module, ptr %call7.i.i.i.i72, i32 0, i32 24
  %154 = ptrtoint ptr %prev.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %prev.i.i.i66, align 4
  %call.i.i.i.i79 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i.i78, ptr noundef %155, ptr noundef %modules_list.i.i65) #8
  br i1 %call.i.i.i.i79, label %if.end.i.i.i.i81, label %if.end18.i.i.list_add_tail.exit.i.i82_crit_edge

if.end18.i.i.list_add_tail.exit.i.i82_crit_edge:  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i.i82

if.end.i.i.i.i81:                                 ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %prev.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %node.i.i78, ptr %prev.i.i.i66, align 4
  %157 = ptrtoint ptr %node.i.i78 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %modules_list.i.i65, ptr %node.i.i78, align 8
  %prev3.i.i.i.i80 = getelementptr inbounds %struct.audioreach_module, ptr %call7.i.i.i.i72, i32 0, i32 24, i32 1
  %158 = ptrtoint ptr %prev3.i.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %155, ptr %prev3.i.i.i.i80, align 4
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %node.i.i78, ptr %155, align 4
  br label %list_add_tail.exit.i.i82

list_add_tail.exit.i.i82:                         ; preds = %if.end.i.i.i.i81, %if.end18.i.i.list_add_tail.exit.i.i82_crit_edge
  %container.i.i = getelementptr inbounds %struct.audioreach_module, ptr %call7.i.i.i.i72, i32 0, i32 25
  %160 = ptrtoint ptr %container.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %retval.0.i46, ptr %container.i.i, align 8
  %widget.i.i = getelementptr inbounds %struct.audioreach_module, ptr %call7.i.i.i.i72, i32 0, i32 26
  %161 = ptrtoint ptr %widget.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %w, ptr %widget.i.i, align 4
  %162 = ptrtoint ptr %num_modules.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %num_modules.i.i, align 4
  %inc.i79.i = add i32 %163, 1
  store i32 %inc.i79.i, ptr %num_modules.i.i, align 4
  br label %audioreach_tplg_alloc_module.exit.i

audioreach_tplg_alloc_module.exit.i:              ; preds = %list_add_tail.exit.i.i82, %do.end.i.i77
  %retval.0.i.i83 = phi ptr [ %152, %do.end.i.i77 ], [ %call7.i.i.i.i72, %list_add_tail.exit.i.i82 ]
  %cmp.i80.i = icmp ugt ptr %retval.0.i.i83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80.i, label %audioreach_tplg_alloc_module.exit.i.audioreach_parse_common_tokens.exit_crit_edge, label %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge

audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge: ; preds = %audioreach_tplg_alloc_module.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i95

audioreach_tplg_alloc_module.exit.i.audioreach_parse_common_tokens.exit_crit_edge: ; preds = %audioreach_tplg_alloc_module.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_parse_common_tokens.exit

audioreach_tplg_alloc_module.exit.thread84.i:     ; preds = %sw.bb1.i
  %cmp.i8087.i = icmp ugt ptr %call.i.i70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i8087.i, label %audioreach_tplg_alloc_module.exit.thread84.i.audioreach_parse_common_tokens.exit_crit_edge, label %do.end.i84

audioreach_tplg_alloc_module.exit.thread84.i.audioreach_parse_common_tokens.exit_crit_edge: ; preds = %audioreach_tplg_alloc_module.exit.thread84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %audioreach_parse_common_tokens.exit

do.end.i84:                                       ; preds = %audioreach_tplg_alloc_module.exit.thread84.i
  call void @__sanitizer_cov_trace_pc() #10
  %164 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.23, i32 noundef %148) #11
  br label %if.then13

sw.bb8.i:                                         ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  %value9.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.0129.i, i32 0, i32 1
  %166 = ptrtoint ptr %value9.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %value9.i, align 1
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #8
  br label %sw.epilog.i95

sw.bb10.i:                                        ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  %value11.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.0129.i, i32 0, i32 1
  %169 = ptrtoint ptr %value11.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %value11.i, align 1
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #8
  br label %sw.epilog.i95

sw.bb12.i86:                                      ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  %value13.i85 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.0129.i, i32 0, i32 1
  %172 = ptrtoint ptr %value13.i85 to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %173 = load i32, ptr %value13.i85, align 1
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #8
  br label %sw.epilog.i95

sw.bb14.i88:                                      ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  %value15.i87 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.0129.i, i32 0, i32 1
  %175 = ptrtoint ptr %value15.i87 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %176 = load i32, ptr %value15.i87, align 1
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #8
  br label %sw.epilog.i95

sw.bb16.i90:                                      ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  %value17.i89 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.0129.i, i32 0, i32 1
  %178 = ptrtoint ptr %value17.i89 to i32
  call void @__asan_loadN_noabort(i32 %178, i32 4)
  %179 = load i32, ptr %value17.i89, align 1
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #8
  br label %sw.epilog.i95

sw.bb18.i:                                        ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  %value19.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.0129.i, i32 0, i32 1
  %181 = ptrtoint ptr %value19.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %value19.i, align 1
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #8
  br label %sw.epilog.i95

sw.bb20.i:                                        ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  %value21.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.0129.i, i32 0, i32 1
  %184 = ptrtoint ptr %value21.i to i32
  call void @__asan_loadN_noabort(i32 %184, i32 4)
  %185 = load i32, ptr %value21.i, align 1
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #8
  br label %sw.epilog.i95

sw.bb22.i:                                        ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #10
  %value23.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.0129.i, i32 0, i32 1
  %187 = ptrtoint ptr %value23.i to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %value23.i, align 1
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #8
  br label %sw.epilog.i95

sw.epilog.i95:                                    ; preds = %sw.bb22.i, %sw.bb20.i, %sw.bb18.i, %sw.bb16.i90, %sw.bb14.i88, %sw.bb12.i86, %sw.bb10.i, %sw.bb8.i, %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge, %sw.bb.i69, %while.body.i67.sw.epilog.i95_crit_edge
  %max_ip_port.1.i = phi i32 [ %max_ip_port.0119.i, %while.body.i67.sw.epilog.i95_crit_edge ], [ %max_ip_port.0119.i, %sw.bb22.i ], [ %max_ip_port.0119.i, %sw.bb20.i ], [ %max_ip_port.0119.i, %sw.bb18.i ], [ %max_ip_port.0119.i, %sw.bb16.i90 ], [ %max_ip_port.0119.i, %sw.bb14.i88 ], [ %max_ip_port.0119.i, %sw.bb12.i86 ], [ %max_ip_port.0119.i, %sw.bb10.i ], [ %168, %sw.bb8.i ], [ %max_ip_port.0119.i, %sw.bb.i69 ], [ %max_ip_port.0119.i, %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge ]
  %max_op_port.1.i = phi i32 [ %max_op_port.0120.i, %while.body.i67.sw.epilog.i95_crit_edge ], [ %max_op_port.0120.i, %sw.bb22.i ], [ %max_op_port.0120.i, %sw.bb20.i ], [ %max_op_port.0120.i, %sw.bb18.i ], [ %max_op_port.0120.i, %sw.bb16.i90 ], [ %max_op_port.0120.i, %sw.bb14.i88 ], [ %max_op_port.0120.i, %sw.bb12.i86 ], [ %171, %sw.bb10.i ], [ %max_op_port.0120.i, %sw.bb8.i ], [ %max_op_port.0120.i, %sw.bb.i69 ], [ %max_op_port.0120.i, %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge ]
  %in_port.1.i = phi i32 [ %in_port.0121.i, %while.body.i67.sw.epilog.i95_crit_edge ], [ %in_port.0121.i, %sw.bb22.i ], [ %in_port.0121.i, %sw.bb20.i ], [ %in_port.0121.i, %sw.bb18.i ], [ %in_port.0121.i, %sw.bb16.i90 ], [ %in_port.0121.i, %sw.bb14.i88 ], [ %174, %sw.bb12.i86 ], [ %in_port.0121.i, %sw.bb10.i ], [ %in_port.0121.i, %sw.bb8.i ], [ %in_port.0121.i, %sw.bb.i69 ], [ %in_port.0121.i, %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge ]
  %out_port.1.i = phi i32 [ %out_port.0122.i, %while.body.i67.sw.epilog.i95_crit_edge ], [ %out_port.0122.i, %sw.bb22.i ], [ %out_port.0122.i, %sw.bb20.i ], [ %out_port.0122.i, %sw.bb18.i ], [ %out_port.0122.i, %sw.bb16.i90 ], [ %177, %sw.bb14.i88 ], [ %out_port.0122.i, %sw.bb12.i86 ], [ %out_port.0122.i, %sw.bb10.i ], [ %out_port.0122.i, %sw.bb8.i ], [ %out_port.0122.i, %sw.bb.i69 ], [ %out_port.0122.i, %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge ]
  %src_mod_inst_id.1.i = phi i32 [ %src_mod_inst_id.0123.i, %while.body.i67.sw.epilog.i95_crit_edge ], [ %src_mod_inst_id.0123.i, %sw.bb22.i ], [ %src_mod_inst_id.0123.i, %sw.bb20.i ], [ %183, %sw.bb18.i ], [ %src_mod_inst_id.0123.i, %sw.bb16.i90 ], [ %src_mod_inst_id.0123.i, %sw.bb14.i88 ], [ %src_mod_inst_id.0123.i, %sw.bb12.i86 ], [ %src_mod_inst_id.0123.i, %sw.bb10.i ], [ %src_mod_inst_id.0123.i, %sw.bb8.i ], [ %src_mod_inst_id.0123.i, %sw.bb.i69 ], [ %src_mod_inst_id.0123.i, %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge ]
  %src_mod_op_port_id.1.i = phi i32 [ %src_mod_op_port_id.0124.i, %while.body.i67.sw.epilog.i95_crit_edge ], [ %src_mod_op_port_id.0124.i, %sw.bb22.i ], [ %src_mod_op_port_id.0124.i, %sw.bb20.i ], [ %src_mod_op_port_id.0124.i, %sw.bb18.i ], [ %180, %sw.bb16.i90 ], [ %src_mod_op_port_id.0124.i, %sw.bb14.i88 ], [ %src_mod_op_port_id.0124.i, %sw.bb12.i86 ], [ %src_mod_op_port_id.0124.i, %sw.bb10.i ], [ %src_mod_op_port_id.0124.i, %sw.bb8.i ], [ %src_mod_op_port_id.0124.i, %sw.bb.i69 ], [ %src_mod_op_port_id.0124.i, %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge ]
  %dst_mod_inst_id.1.i = phi i32 [ %dst_mod_inst_id.0125.i, %while.body.i67.sw.epilog.i95_crit_edge ], [ %dst_mod_inst_id.0125.i, %sw.bb22.i ], [ %186, %sw.bb20.i ], [ %dst_mod_inst_id.0125.i, %sw.bb18.i ], [ %dst_mod_inst_id.0125.i, %sw.bb16.i90 ], [ %dst_mod_inst_id.0125.i, %sw.bb14.i88 ], [ %dst_mod_inst_id.0125.i, %sw.bb12.i86 ], [ %dst_mod_inst_id.0125.i, %sw.bb10.i ], [ %dst_mod_inst_id.0125.i, %sw.bb8.i ], [ %dst_mod_inst_id.0125.i, %sw.bb.i69 ], [ %dst_mod_inst_id.0125.i, %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge ]
  %dst_mod_ip_port_id.1.i = phi i32 [ %dst_mod_ip_port_id.0126.i, %while.body.i67.sw.epilog.i95_crit_edge ], [ %189, %sw.bb22.i ], [ %dst_mod_ip_port_id.0126.i, %sw.bb20.i ], [ %dst_mod_ip_port_id.0126.i, %sw.bb18.i ], [ %dst_mod_ip_port_id.0126.i, %sw.bb16.i90 ], [ %dst_mod_ip_port_id.0126.i, %sw.bb14.i88 ], [ %dst_mod_ip_port_id.0126.i, %sw.bb12.i86 ], [ %dst_mod_ip_port_id.0126.i, %sw.bb10.i ], [ %dst_mod_ip_port_id.0126.i, %sw.bb8.i ], [ %dst_mod_ip_port_id.0126.i, %sw.bb.i69 ], [ %dst_mod_ip_port_id.0126.i, %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge ]
  %module_id.1.i = phi i32 [ %module_id.0127.i, %while.body.i67.sw.epilog.i95_crit_edge ], [ %module_id.0127.i, %sw.bb22.i ], [ %module_id.0127.i, %sw.bb20.i ], [ %module_id.0127.i, %sw.bb18.i ], [ %module_id.0127.i, %sw.bb16.i90 ], [ %module_id.0127.i, %sw.bb14.i88 ], [ %module_id.0127.i, %sw.bb12.i86 ], [ %module_id.0127.i, %sw.bb10.i ], [ %module_id.0127.i, %sw.bb8.i ], [ %145, %sw.bb.i69 ], [ %module_id.0127.i, %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge ]
  %mod.1.i = phi ptr [ %mod.0131.i, %while.body.i67.sw.epilog.i95_crit_edge ], [ %mod.0131.i, %sw.bb22.i ], [ %mod.0131.i, %sw.bb20.i ], [ %mod.0131.i, %sw.bb18.i ], [ %mod.0131.i, %sw.bb16.i90 ], [ %mod.0131.i, %sw.bb14.i88 ], [ %mod.0131.i, %sw.bb12.i86 ], [ %mod.0131.i, %sw.bb10.i ], [ %mod.0131.i, %sw.bb8.i ], [ %mod.0131.i, %sw.bb.i69 ], [ %retval.0.i.i83, %audioreach_tplg_alloc_module.exit.i.sw.epilog.i95_crit_edge ]
  %inc.i91 = add i32 %tkn_count.0128.i, 1
  %incdec.ptr.i92 = getelementptr %struct.snd_soc_tplg_vendor_value_elem, ptr %mod_elem.0129.i, i32 1
  %190 = ptrtoint ptr %num_elems.i63 to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %191 = load i32, ptr %num_elems.i63, align 1
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #8
  %sub.i93 = add i32 %192, -1
  %cmp.not.i94 = icmp ugt i32 %inc.i91, %sub.i93
  br i1 %cmp.not.i94, label %while.end.i96, label %sw.epilog.i95.while.body.i67_crit_edge

sw.epilog.i95.while.body.i67_crit_edge:           ; preds = %sw.epilog.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i67

while.end.i96:                                    ; preds = %sw.epilog.i95
  %tobool24.not.i = icmp eq ptr %mod.1.i, null
  br i1 %tobool24.not.i, label %while.end.i96.if.end15_crit_edge, label %if.then25.i

while.end.i96.if.end15_crit_edge:                 ; preds = %while.end.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then25.i:                                      ; preds = %while.end.i96
  call void @__sanitizer_cov_trace_pc() #10
  %193 = ptrtoint ptr %mod.1.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %module_id.1.i, ptr %mod.1.i, align 4
  %max_ip_port27.i = getelementptr inbounds %struct.audioreach_module, ptr %mod.1.i, i32 0, i32 2
  %194 = ptrtoint ptr %max_ip_port27.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %max_ip_port.1.i, ptr %max_ip_port27.i, align 4
  %max_op_port28.i = getelementptr inbounds %struct.audioreach_module, ptr %mod.1.i, i32 0, i32 3
  %195 = ptrtoint ptr %max_op_port28.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %max_op_port.1.i, ptr %max_op_port28.i, align 4
  %in_port29.i = getelementptr inbounds %struct.audioreach_module, ptr %mod.1.i, i32 0, i32 4
  %196 = ptrtoint ptr %in_port29.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %in_port.1.i, ptr %in_port29.i, align 4
  %out_port30.i = getelementptr inbounds %struct.audioreach_module, ptr %mod.1.i, i32 0, i32 5
  %197 = ptrtoint ptr %out_port30.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %out_port.1.i, ptr %out_port30.i, align 4
  %src_mod_inst_id31.i = getelementptr inbounds %struct.audioreach_module, ptr %mod.1.i, i32 0, i32 6
  %198 = ptrtoint ptr %src_mod_inst_id31.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %src_mod_inst_id.1.i, ptr %src_mod_inst_id31.i, align 4
  %src_mod_op_port_id32.i = getelementptr inbounds %struct.audioreach_module, ptr %mod.1.i, i32 0, i32 7
  %199 = ptrtoint ptr %src_mod_op_port_id32.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %src_mod_op_port_id.1.i, ptr %src_mod_op_port_id32.i, align 4
  %dst_mod_inst_id33.i = getelementptr inbounds %struct.audioreach_module, ptr %mod.1.i, i32 0, i32 8
  %200 = ptrtoint ptr %dst_mod_inst_id33.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %dst_mod_inst_id.1.i, ptr %dst_mod_inst_id33.i, align 4
  %dst_mod_ip_port_id34.i = getelementptr inbounds %struct.audioreach_module, ptr %mod.1.i, i32 0, i32 9
  %201 = ptrtoint ptr %dst_mod_ip_port_id34.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %dst_mod_ip_port_id.1.i, ptr %dst_mod_ip_port_id34.i, align 4
  br label %audioreach_parse_common_tokens.exit

audioreach_parse_common_tokens.exit:              ; preds = %if.then25.i, %audioreach_tplg_alloc_module.exit.thread84.i.audioreach_parse_common_tokens.exit_crit_edge, %audioreach_tplg_alloc_module.exit.i.audioreach_parse_common_tokens.exit_crit_edge
  %retval.0.i97 = phi ptr [ %mod.1.i, %if.then25.i ], [ %call.i.i70, %audioreach_tplg_alloc_module.exit.thread84.i.audioreach_parse_common_tokens.exit_crit_edge ], [ %retval.0.i.i83, %audioreach_tplg_alloc_module.exit.i.audioreach_parse_common_tokens.exit_crit_edge ]
  %cmp.i98 = icmp ugt ptr %retval.0.i97, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %audioreach_parse_common_tokens.exit.if.then13_crit_edge, label %audioreach_parse_common_tokens.exit.if.end15_crit_edge

audioreach_parse_common_tokens.exit.if.end15_crit_edge: ; preds = %audioreach_parse_common_tokens.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

audioreach_parse_common_tokens.exit.if.then13_crit_edge: ; preds = %audioreach_parse_common_tokens.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %audioreach_parse_common_tokens.exit.if.then13_crit_edge, %do.end.i84, %if.end.i.i74.if.then13_crit_edge
  %retval.0.i97107 = phi ptr [ %retval.0.i97, %audioreach_parse_common_tokens.exit.if.then13_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i84 ], [ inttoptr (i32 -12 to ptr), %if.end.i.i74.if.then13_crit_edge ]
  %202 = ptrtoint ptr %retval.0.i97107 to i32
  br label %cleanup

if.end15:                                         ; preds = %audioreach_parse_common_tokens.exit.if.end15_crit_edge, %while.end.i96.if.end15_crit_edge
  %retval.0.i97111 = phi ptr [ %retval.0.i97, %audioreach_parse_common_tokens.exit.if.end15_crit_edge ], [ null, %while.end.i96.if.end15_crit_edge ]
  %private = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 21, i32 5
  %203 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %retval.0.i97111, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then7, %if.then
  %retval.0 = phi i32 [ %67, %if.then ], [ %125, %if.then7 ], [ %202, %if.then13 ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_tplg_widget_bind_event(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audioreach_pga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cond = icmp eq i32 %event, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dapm1 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm1, align 4
  %dev = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %private = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 21, i32 5
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %gain = getelementptr inbounds %struct.audioreach_module, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %gain to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gain, align 4
  %conv = zext i16 %9 to i32
  %call3 = tail call i32 @audioreach_gain_set_vol_ctrl(ptr noundef %5, ptr noundef %7, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @audioreach_gain_set_vol_ctrl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audioreach_get_audio_mixer(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #8
  %call1 = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #8
  %private = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call1, i32 0, i32 21, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %private4 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 9, i32 5
  %5 = ptrtoint ptr %private4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private4, align 4
  %dev = getelementptr i8, ptr %call, i32 -164
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %6, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  %call7 = tail call zeroext i1 @q6apm_is_sub_graphs_connected(ptr noundef %10, i32 noundef %12, i32 noundef %14) #8
  %spec.select = zext i1 %call7 to i32
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %15, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audioreach_put_audio_mixer(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #8
  %call1 = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #8
  %private = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call1, i32 0, i32 21, i32 5
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %private4 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 9, i32 5
  %5 = ptrtoint ptr %private4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private4, align 4
  %dev = getelementptr i8, ptr %call, i32 -164
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %6, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %4, align 4
  %not.tobool.not = xor i1 %tobool.not, true
  %not.tobool.not24 = xor i1 %tobool.not, true
  %.23 = zext i1 %not.tobool.not24 to i32
  %call11 = tail call i32 @q6apm_connect_sub_graphs(ptr noundef %10, i32 noundef %14, i32 noundef %16, i1 noundef zeroext %not.tobool.not) #8
  %call12 = tail call i32 @snd_soc_dapm_mixer_update_power(ptr noundef %call, ptr noundef %kcontrol, i32 noundef %.23, ptr noundef null) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audioreach_get_vol_ctrl_audio_mixer(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #8
  %private = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 21, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %gain = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %gain to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gain, align 4
  %conv = zext i16 %3 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audioreach_put_vol_ctrl_audio_mixer(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #8
  %private = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 21, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %conv = trunc i32 %3 to i16
  %gain = getelementptr inbounds %struct.audioreach_module, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %gain to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %gain, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_widget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @q6apm_is_sub_graphs_connected(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @q6apm_connect_sub_graphs(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mixer_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 1091, i32 39}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 1097, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @audioreach_tplg_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @audioreach_tplg_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 1103, i32 3}
!12 = !{ptr @audioreach_tplg_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @audioreach_tplg_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_audioreach_tplg_init, !15, !"__ksymtab_audioreach_tplg_init", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 1113, i32 1}
!16 = !{ptr @audioreach_tplg_ops, !17, !"audioreach_tplg_ops", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 1065, i32 32}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 1038, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @audioreach_control_load._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @audioreach_control_load._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 802, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @audioreach_widget_ready._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @audioreach_widget_ready._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 345, i32 4}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @audioreach_parse_sg_tokens._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @audioreach_parse_sg_tokens._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 101, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @audioreach_tplg_alloc_sub_graph._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @audioreach_tplg_alloc_sub_graph._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 51, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @audioreach_tplg_alloc_graph_info._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @audioreach_tplg_alloc_graph_info._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 394, i32 4}
!46 = !{ptr @audioreach_parse_cont_tokens._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @audioreach_parse_cont_tokens._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 143, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @audioreach_tplg_alloc_container._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @audioreach_tplg_alloc_container._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 435, i32 5}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @audioreach_parse_common_tokens._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @audioreach_parse_common_tokens._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 189, i32 3}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @audioreach_tplg_alloc_module._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @audioreach_tplg_alloc_module._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 769, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @audioreach_widget_load_pga._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @audioreach_widget_load_pga._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @audioreach_widget_ops, !69, !"audioreach_widget_ops", i1 false, i1 false}
!69 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 745, i32 48}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 913, i32 11}
!72 = !{ptr @audioreach_io_ops, !73, !"audioreach_io_ops", i1 false, i1 false}
!73 = !{!"../sound/soc/qcom/qdsp6/topology.c", i32 1058, i32 47}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
