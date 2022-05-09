; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8958-dsp2.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8958-dsp2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wm8994 = type { %struct.wm8994_pdata, i32, i32, i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr }
%struct.wm8994_pdata = type { i32, [11 x i32], [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 }
%struct.wm8994_ldo_pdata = type { ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.wm8994_priv = type { %struct.wm_hubs_data, ptr, [2 x %struct.clk_bulk_data], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x %struct.wm8994_fll_config], [2 x %struct.wm8994_fll_config], [2 x %struct.completion], i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], ptr, [3 x i32], %struct.soc_enum, i32, ptr, [3 x i32], %struct.soc_enum, i32, ptr, %struct.soc_enum, i32, ptr, %struct.soc_enum, i32, ptr, %struct.soc_enum, i32, ptr, %struct.soc_enum, %struct.mutex, [2 x %struct.wm8994_micdet], %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i8, i8, i32, i8, i32, %struct.delayed_work, i32, ptr, ptr, ptr, ptr, i8, %struct.mutex, i32, ptr, ptr, ptr, ptr }
%struct.wm_hubs_data = type { i32, i32, i32, i32, i32, i32, i8, i8, %struct.list_head, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.completion, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.wm8994_fll_config = type { i32, i32, i32 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.wm8994_micdet = type { ptr, i8 }
%struct.wm8958_enh_eq_cfg = type { ptr, [32 x i16] }
%struct.wm8958_mbc_cfg = type { ptr, [20 x i16], [48 x i16], [56 x i16] }
%struct.wm8958_vss_cfg = type { ptr, [148 x i16] }
%struct.wm8958_vss_hpf_cfg = type { ptr, [2 x i16] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.84, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.84 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.79, [128 x i8] }
%union.anon.79 = type { %union.anon.81 }
%union.anon.81 = type { [64 x i64] }
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.90, [64 x i8] }
%union.anon.90 = type { %struct.anon.93, [40 x i8] }
%struct.anon.93 = type { i32, i32, [64 x i8], i64, i32 }

@wm8958_mbc_snd_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 3, i32 0, ptr @wm8958_mbc_info, ptr @wm8958_mbc_get, ptr @wm8958_mbc_put, %union.anon.94 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 3, i32 0, ptr @wm8958_mbc_info, ptr @wm8958_mbc_get, ptr @wm8958_mbc_put, %union.anon.94 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 3, i32 0, ptr @wm8958_mbc_info, ptr @wm8958_mbc_get, ptr @wm8958_mbc_put, %union.anon.94 zeroinitializer, i32 2 }], [48 x i8] zeroinitializer }, align 32
@wm8958_vss_snd_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 3, i32 0, ptr @wm8958_vss_info, ptr @wm8958_vss_get, ptr @wm8958_vss_put, %union.anon.94 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 3, i32 0, ptr @wm8958_vss_info, ptr @wm8958_vss_get, ptr @wm8958_vss_put, %union.anon.94 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 3, i32 0, ptr @wm8958_vss_info, ptr @wm8958_vss_get, ptr @wm8958_vss_put, %union.anon.94 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.94 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.94 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.94 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.94 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.94 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 3, i32 0, ptr @wm8958_hpf_info, ptr @wm8958_hpf_get, ptr @wm8958_hpf_put, %union.anon.94 zeroinitializer, i32 5 }], [112 x i8] zeroinitializer }, align 32
@wm8958_enh_eq_snd_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 3, i32 0, ptr @wm8958_enh_eq_info, ptr @wm8958_enh_eq_get, ptr @wm8958_enh_eq_put, %union.anon.94 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 3, i32 0, ptr @wm8958_enh_eq_info, ptr @wm8958_enh_eq_get, ptr @wm8958_enh_eq_put, %union.anon.94 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 3, i32 0, ptr @wm8958_enh_eq_info, ptr @wm8958_enh_eq_get, ptr @wm8958_enh_eq_put, %union.anon.94 zeroinitializer, i32 2 }], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8958_mbc.wfw\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm8958_mbc_vss.wfw\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8958_enh_eq.wfw\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MBC Mode\00", [23 x i8] zeroinitializer }, align 32
@wm8958_dsp2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 948, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to add MBC mode controls: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8958_dsp2_init\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/codecs/wm8958-dsp2.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8958_dsp2_init._entry_ptr = internal global ptr @wm8958_dsp2_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VSS Mode\00", [23 x i8] zeroinitializer }, align 32
@wm8958_dsp2_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 974, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to add VSS mode controls: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wm8958_dsp2_init._entry_ptr.12 = internal global ptr @wm8958_dsp2_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VSS HPF Mode\00", [19 x i8] zeroinitializer }, align 32
@wm8958_dsp2_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 1002, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to add VSS HPFmode controls: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@wm8958_dsp2_init._entry_ptr.16 = internal global ptr @wm8958_dsp2_init._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Enhanced EQ Mode\00", [47 x i8] zeroinitializer }, align 32
@wm8958_dsp2_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 1030, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to add enhanced EQ controls: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@wm8958_dsp2_init._entry_ptr.20 = internal global ptr @wm8958_dsp2_init._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid path %d\0A\00", [47 x i8] zeroinitializer }, align 32
@wm8958_dsp_apply.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.6, ptr @.str.24, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8994\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8958_dsp_apply\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DSP path %d %d startup: %d, power: %x, DSP: %x\0A\00", [48 x i8] zeroinitializer }, align 32
@wm8958_dsp_apply.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.6, ptr @.str.25, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSP running in path %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8958_dsp_apply.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.6, ptr @.str.26, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSP stopped\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ENH_EQ\00", [25 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 58, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: firmware too short (%zd bytes)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8958_dsp2_fw\00", [17 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr = internal global ptr @wm8958_dsp2_fw._entry, section ".printk_index", align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WMFW\00", [27 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.6, i32 65, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: firmware has bad file magic %08x\0A\00", [58 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.33 = internal global ptr @wm8958_dsp2_fw._entry.31, section ".printk_index", align 4
@wm8958_dsp2_fw._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.6, i32 74, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: unsupported firmware version %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.36 = internal global ptr @wm8958_dsp2_fw._entry.34, section ".printk_index", align 4
@wm8958_dsp2_fw._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.6, i32 79, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unsupported target device %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.39 = internal global ptr @wm8958_dsp2_fw._entry.37, section ".printk_index", align 4
@wm8958_dsp2_fw._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.6, i32 84, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: unsupported target core %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.42 = internal global ptr @wm8958_dsp2_fw._entry.40, section ".printk_index", align 4
@wm8958_dsp2_fw._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.29, ptr @.str.6, i32 90, ptr @.str.45, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s timestamp %llx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.46 = internal global ptr @wm8958_dsp2_fw._entry.43, section ".printk_index", align 4
@wm8958_dsp2_fw._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.29, ptr @.str.6, i32 101, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s short data block of %zd\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.49 = internal global ptr @wm8958_dsp2_fw._entry.47, section ".printk_index", align 4
@wm8958_dsp2_fw._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.29, ptr @.str.6, i32 108, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%zd byte block longer than file\0A\00", [63 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.52 = internal global ptr @wm8958_dsp2_fw._entry.50, section ".printk_index", align 4
@wm8958_dsp2_fw._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.29, ptr @.str.6, i32 112, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Zero length block\0A\00", [45 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.55 = internal global ptr @wm8958_dsp2_fw._entry.53, section ".printk_index", align 4
@wm8958_dsp2_fw._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.29, ptr @.str.6, i32 127, ptr @.str.45, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.58 = internal global ptr @wm8958_dsp2_fw._entry.56, section ".printk_index", align 4
@wm8958_dsp2_fw._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.29, ptr @.str.6, i32 130, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.61 = internal global ptr @wm8958_dsp2_fw._entry.59, section ".printk_index", align 4
@wm8958_dsp2_fw.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.29, ptr @.str.6, ptr @.str.62, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: %zd bytes of %x@%x\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.29, ptr @.str.6, i32 157, ptr @.str.65, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: unknown block type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.66 = internal global ptr @wm8958_dsp2_fw._entry.63, section ".printk_index", align 4
@wm8958_dsp2_fw.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.29, ptr @.str.6, ptr @.str.67, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: download done\0A\00", [45 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.29, ptr @.str.6, i32 172, ptr @.str.45, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: got firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@wm8958_dsp2_fw._entry_ptr.70 = internal global ptr @wm8958_dsp2_fw._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MBC+VSS\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MBC\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIF1DAC1 MBC Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIF1DAC2 MBC Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AIF2DAC MBC Switch\00", [45 x i8] zeroinitializer }, align 32
@wm8958_mbc_put.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.76, ptr @.str.6, ptr @.str.77, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8958_mbc_put\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DSP2 active on %d already\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIF1DAC1 VSS Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIF1DAC2 VSS Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AIF2DAC VSS Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AIF1DAC1 HPF1 Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AIF1DAC2 HPF1 Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIF2DAC HPF1 Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AIF1DAC1 HPF2 Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AIF1DAC2 HPF2 Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIF2DAC HPF2 Switch\00", [44 x i8] zeroinitializer }, align 32
@wm8958_vss_put.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.87, ptr @.str.6, ptr @.str.77, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8958_vss_put\00", [17 x i8] zeroinitializer }, align 32
@wm8958_hpf_put.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.88, ptr @.str.6, ptr @.str.77, i8 0, i8 -77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8958_hpf_put\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AIF1DAC1 Enhanced EQ Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AIF1DAC2 Enhanced EQ Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AIF2DAC Enhanced EQ Switch\00", [37 x i8] zeroinitializer }, align 32
@wm8958_enh_eq_put.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.92, ptr @.str.6, ptr @.str.77, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8958_enh_eq_put\00", [46 x i8] zeroinitializer }, align 32
@switch.table.wm8958_aif_ev = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.wm8958_dsp_apply = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 768, i32 3072, i32 12288], [20 x i8] zeroinitializer }, align 32
@switch.table.wm8958_dsp_apply.93 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16384, i32 16384, i32 20480], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 6, i64 8, i64 12, i64 255]
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"wm8958_mbc_snd_controls\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 837, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant [24 x i8] c"wm8958_vss_snd_controls\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 843, i32 38 }
@___asan_gen_.100 = private unnamed_addr constant [27 x i8] c"wm8958_enh_eq_snd_controls\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 855, i32 38 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 916, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 919, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 922, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 927, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 947, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 953, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 973, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 979, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1000, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1007, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1028, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 344, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 357, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 388, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 407, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 299, i32 28 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 57, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 62, i32 23 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 64, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 73, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 78, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 83, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 90, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 100, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 107, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 112, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 127, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 130, i32 5 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 140, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 156, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 169, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 172, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 239, i32 29 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 200, i32 29 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 838, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 839, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 840, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 522, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 844, i32 1 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 845, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 846, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 847, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 848, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 849, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 850, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 851, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 852, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 648, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 719, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 856, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 857, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 858, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.341 = private constant [34 x i8] c"../sound/soc/codecs/wm8958-dsp2.c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 815, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [27 x i8] c"switch.table.wm8958_aif_ev\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [30 x i8] c"switch.table.wm8958_dsp_apply\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [33 x i8] c"switch.table.wm8958_dsp_apply.93\00", align 1
@llvm.compiler.used = appending global [103 x ptr] [ptr @wm8958_dsp2_fw._entry, ptr @wm8958_dsp2_fw._entry.31, ptr @wm8958_dsp2_fw._entry.34, ptr @wm8958_dsp2_fw._entry.37, ptr @wm8958_dsp2_fw._entry.40, ptr @wm8958_dsp2_fw._entry.43, ptr @wm8958_dsp2_fw._entry.47, ptr @wm8958_dsp2_fw._entry.50, ptr @wm8958_dsp2_fw._entry.53, ptr @wm8958_dsp2_fw._entry.56, ptr @wm8958_dsp2_fw._entry.59, ptr @wm8958_dsp2_fw._entry.63, ptr @wm8958_dsp2_fw._entry.68, ptr @wm8958_dsp2_fw._entry_ptr, ptr @wm8958_dsp2_fw._entry_ptr.33, ptr @wm8958_dsp2_fw._entry_ptr.36, ptr @wm8958_dsp2_fw._entry_ptr.39, ptr @wm8958_dsp2_fw._entry_ptr.42, ptr @wm8958_dsp2_fw._entry_ptr.46, ptr @wm8958_dsp2_fw._entry_ptr.49, ptr @wm8958_dsp2_fw._entry_ptr.52, ptr @wm8958_dsp2_fw._entry_ptr.55, ptr @wm8958_dsp2_fw._entry_ptr.58, ptr @wm8958_dsp2_fw._entry_ptr.61, ptr @wm8958_dsp2_fw._entry_ptr.66, ptr @wm8958_dsp2_fw._entry_ptr.70, ptr @wm8958_dsp2_init._entry, ptr @wm8958_dsp2_init._entry.10, ptr @wm8958_dsp2_init._entry.14, ptr @wm8958_dsp2_init._entry.18, ptr @wm8958_dsp2_init._entry_ptr, ptr @wm8958_dsp2_init._entry_ptr.12, ptr @wm8958_dsp2_init._entry_ptr.16, ptr @wm8958_dsp2_init._entry_ptr.20, ptr @wm8958_mbc_snd_controls, ptr @wm8958_vss_snd_controls, ptr @wm8958_enh_eq_snd_controls, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @switch.table.wm8958_aif_ev, ptr @switch.table.wm8958_dsp_apply, ptr @switch.table.wm8958_dsp_apply.93], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_mbc_snd_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_vss_snd_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_enh_eq_snd_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8958_dsp2_fw._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8958_aif_ev to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8958_dsp_apply to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8958_dsp_apply.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8958_aif_ev(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.wm8994, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %event, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 8
  br i1 %10, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %11 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %switch.lobit.not = icmp eq i8 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.wm8958_aif_ev, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %switch.load)
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %switch.load)
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef %switch.load)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8958_dsp_apply(ptr noundef %component, i32 noundef %path, i32 noundef %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %path)
  %4 = icmp ult i32 %path, 3
  br i1 %4, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 344, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %path) #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.wm8958_dsp_apply, i32 0, i32 %path
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep222 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8958_dsp_apply.93, i32 0, i32 %path
  %6 = ptrtoint ptr %switch.gep222 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load223 = load i32, ptr %switch.gep222, align 4
  %and5 = and i32 %call1, %switch.load
  %arrayidx = getelementptr %struct.wm8994_priv, ptr %3, i32 0, i32 20, i32 %path
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool20.not = icmp eq i32 %8, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %switch.lookup.lor.end_crit_edge

switch.lookup.lor.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.lhs.false:                                    ; preds = %switch.lookup
  %arrayidx21 = getelementptr %struct.wm8994_priv, ptr %3, i32 0, i32 23, i32 %path
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool22.not = icmp eq i32 %10, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %arrayidx24 = getelementptr %struct.wm8994_priv, ptr %3, i32 0, i32 21, i32 %path
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not = icmp eq i32 %12, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %lor.lhs.false23.lor.end_crit_edge

lor.lhs.false23.lor.end_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %arrayidx27 = getelementptr %struct.wm8994_priv, ptr %3, i32 0, i32 22, i32 %path
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool28.not = icmp eq i32 %14, 0
  br i1 %tobool28.not, label %lor.rhs, label %lor.lhs.false26.lor.end_crit_edge

lor.lhs.false26.lor.end_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx29 = getelementptr %struct.wm8994_priv, ptr %3, i32 0, i32 24, i32 %path
  %15 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool30 = icmp ne i32 %16, 0
  %phi.cast = zext i1 %tobool30 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false26.lor.end_crit_edge, %lor.lhs.false23.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %switch.lookup.lor.end_crit_edge
  %17 = phi i32 [ 1, %lor.lhs.false26.lor.end_crit_edge ], [ 1, %lor.lhs.false23.lor.end_crit_edge ], [ 1, %lor.lhs.false.lor.end_crit_edge ], [ 1, %switch.lookup.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool31.not = icmp eq i32 %and5, 0
  %call34 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 2304) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8958_dsp_apply.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8958_dsp_apply, %if.then45)) #9
          to label %do.end48 [label %if.then45], !srcloc !174

if.then45:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %dsp_active = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 63
  %20 = ptrtoint ptr %dsp_active to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dsp_active, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8958_dsp_apply.__UNIQUE_ID_ddebug323, ptr noundef %19, ptr noundef nonnull @.str.24, i32 noundef %path, i32 noundef %21, i32 noundef %start, i32 noundef %and5, i32 noundef %call34) #9
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool49.not = icmp eq i32 %start, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool50.not199 = icmp eq i32 %17, 0
  %22 = select i1 %tobool49.not, i1 true, i1 %tobool31.not
  %or.cond = select i1 %22, i1 true, i1 %tobool50.not199
  br i1 %or.cond, label %do.end48.if.end108_crit_edge, label %if.then51

do.end48.if.end108_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then51:                                        ; preds = %do.end48
  %and52 = and i32 %call34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.then51
  %call56 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 512) #9
  %and57 = and i32 %call56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.lhs.true59, label %if.end55.if.end64_crit_edge

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

land.lhs.true59:                                  ; preds = %if.end55
  %call60 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 516) #9
  %and61 = and i32 %call60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %land.lhs.true59.cleanup_crit_edge, label %land.lhs.true59.if.end64_crit_edge

land.lhs.true59.if.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

land.lhs.true59.cleanup_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end64:                                         ; preds = %land.lhs.true59.if.end64_crit_edge, %if.end55.if.end64_crit_edge
  %call65 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 520, i32 noundef 20480, i32 noundef %switch.load223) #9
  %arrayidx67 = getelementptr %struct.wm8994_priv, ptr %3, i32 0, i32 24, i32 %path
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool68.not = icmp eq i32 %24, 0
  br i1 %tobool68.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.end64
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i, align 4
  %wm89941.i = getelementptr inbounds %struct.wm8994_priv, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wm89941.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wm89941.i, align 4
  %enh_eq.i = getelementptr inbounds %struct.wm8994_priv, ptr %28, i32 0, i32 67
  %31 = ptrtoint ptr %enh_eq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %enh_eq.i, align 4
  %call2.i = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %component, ptr noundef nonnull @.str.27, ptr noundef %32, i1 noundef zeroext false) #9
  %call3.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #9
  %num_enh_eq_cfgs.i = getelementptr inbounds %struct.wm8994_pdata, ptr %30, i32 0, i32 15
  %33 = ptrtoint ptr %num_enh_eq_cfgs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_enh_eq_cfgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.then69.wm8958_dsp_start_enh_eq.exit_crit_edge, label %if.then.i

if.then69.wm8958_dsp_start_enh_eq.exit_crit_edge: ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %wm8958_dsp_start_enh_eq.exit

if.then.i:                                        ; preds = %if.then69
  %enh_eq_cfgs.i = getelementptr inbounds %struct.wm8994_pdata, ptr %30, i32 0, i32 16
  %35 = ptrtoint ptr %enh_eq_cfgs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %enh_eq_cfgs.i, align 4
  %enh_eq_cfg.i = getelementptr inbounds %struct.wm8994_priv, ptr %28, i32 0, i32 41
  %37 = ptrtoint ptr %enh_eq_cfg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %enh_eq_cfg.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i
  %i.020.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.020.i, 8704
  %arrayidx5.i = getelementptr %struct.wm8958_enh_eq_cfg, ptr %36, i32 %38, i32 1, i32 %i.020.i
  %39 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx5.i, align 2
  %conv.i = zext i16 %40 to i32
  %call6.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add.i, i32 noundef %conv.i) #9
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body.i.wm8958_dsp_start_enh_eq.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.wm8958_dsp_start_enh_eq.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wm8958_dsp_start_enh_eq.exit

wm8958_dsp_start_enh_eq.exit:                     ; preds = %for.body.i.wm8958_dsp_start_enh_eq.exit_crit_edge, %if.then69.wm8958_dsp_start_enh_eq.exit_crit_edge
  %call7.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2573, i32 noundef 2) #9
  %shl.i = shl i32 %path, 4
  %or.i = or i32 %shl.i, 1
  %call8.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2305, i32 noundef 49, i32 noundef %or.i) #9
  br label %if.end89

if.else:                                          ; preds = %if.end64
  %arrayidx71 = getelementptr %struct.wm8994_priv, ptr %3, i32 0, i32 23, i32 %path
  %41 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool72.not = icmp eq i32 %42, 0
  br i1 %tobool72.not, label %lor.lhs.false73, label %if.else.if.then81_crit_edge

if.else.if.then81_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

lor.lhs.false73:                                  ; preds = %if.else
  %arrayidx75 = getelementptr %struct.wm8994_priv, ptr %3, i32 0, i32 21, i32 %path
  %43 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool76.not = icmp eq i32 %44, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %lor.lhs.false73.if.then81_crit_edge

lor.lhs.false73.if.then81_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

lor.lhs.false77:                                  ; preds = %lor.lhs.false73
  %arrayidx79 = getelementptr %struct.wm8994_priv, ptr %3, i32 0, i32 22, i32 %path
  %45 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool80.not = icmp eq i32 %46, 0
  br i1 %tobool80.not, label %if.else82, label %lor.lhs.false77.if.then81_crit_edge

lor.lhs.false77.if.then81_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

if.then81:                                        ; preds = %lor.lhs.false77.if.then81_crit_edge, %lor.lhs.false73.if.then81_crit_edge, %if.else.if.then81_crit_edge
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i208 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %driver_data.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i.i.i208, align 4
  %wm89941.i209 = getelementptr inbounds %struct.wm8994_priv, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wm89941.i209 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wm89941.i209, align 4
  %mbc_vss.i = getelementptr inbounds %struct.wm8994_priv, ptr %50, i32 0, i32 66
  %53 = ptrtoint ptr %mbc_vss.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mbc_vss.i, align 4
  %tobool.not.i210 = icmp eq ptr %54, null
  br i1 %tobool.not.i210, label %if.then81.if.end.i_crit_edge, label %if.then.i212

if.then81.if.end.i_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i212:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i211 = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %component, ptr noundef nonnull @.str.71, ptr noundef nonnull %54, i1 noundef zeroext false) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i212, %if.then81.if.end.i_crit_edge
  %call4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #9
  %num_mbc_cfgs.i = getelementptr inbounds %struct.wm8994_pdata, ptr %52, i32 0, i32 9
  %55 = ptrtoint ptr %num_mbc_cfgs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_mbc_cfgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool5.not.i = icmp eq i32 %56, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  %mbc_cfgs.i = getelementptr inbounds %struct.wm8994_pdata, ptr %52, i32 0, i32 10
  %57 = ptrtoint ptr %mbc_cfgs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mbc_cfgs.i, align 4
  %mbc_cfg.i = getelementptr inbounds %struct.wm8994_priv, ptr %50, i32 0, i32 32
  %59 = ptrtoint ptr %mbc_cfg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mbc_cfg.i, align 4
  br label %for.body.i217

for.body.i217:                                    ; preds = %for.body.i217.for.body.i217_crit_edge, %if.then6.i
  %i.0112.i = phi i32 [ 0, %if.then6.i ], [ %inc.i215, %for.body.i217.for.body.i217_crit_edge ]
  %add.i213 = add nuw nsw i32 %i.0112.i, 10240
  %arrayidx8.i = getelementptr %struct.wm8958_mbc_cfg, ptr %58, i32 %60, i32 3, i32 %i.0112.i
  %61 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx8.i, align 2
  %conv.i214 = zext i16 %62 to i32
  %call9.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add.i213, i32 noundef %conv.i214) #9
  %inc.i215 = add nuw nsw i32 %i.0112.i, 1
  %exitcond.not.i216 = icmp eq i32 %inc.i215, 56
  br i1 %exitcond.not.i216, label %for.body.i217.if.end10.i_crit_edge, label %for.body.i217.for.body.i217_crit_edge

for.body.i217.for.body.i217_crit_edge:            ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i217

for.body.i217.if.end10.i_crit_edge:               ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.end10.i:                                       ; preds = %for.body.i217.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %num_vss_cfgs.i = getelementptr inbounds %struct.wm8994_pdata, ptr %52, i32 0, i32 11
  %63 = ptrtoint ptr %num_vss_cfgs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_vss_cfgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool12.not.i = icmp eq i32 %64, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end28.i_crit_edge, label %if.then13.i

if.end10.i.if.end28.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then13.i:                                      ; preds = %if.end10.i
  %vss_cfgs.i = getelementptr inbounds %struct.wm8994_pdata, ptr %52, i32 0, i32 12
  %65 = ptrtoint ptr %vss_cfgs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vss_cfgs.i, align 4
  %vss_cfg.i = getelementptr inbounds %struct.wm8994_priv, ptr %50, i32 0, i32 35
  %67 = ptrtoint ptr %vss_cfg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vss_cfg.i, align 4
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.body20.i.for.body20.i_crit_edge, %if.then13.i
  %i.1113.i = phi i32 [ 0, %if.then13.i ], [ %inc26.i, %for.body20.i.for.body20.i_crit_edge ]
  %add21.i = add nuw nsw i32 %i.1113.i, 9728
  %arrayidx22.i = getelementptr %struct.wm8958_vss_cfg, ptr %66, i32 %68, i32 1, i32 %i.1113.i
  %69 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx22.i, align 2
  %conv23.i = zext i16 %70 to i32
  %call24.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add21.i, i32 noundef %conv23.i) #9
  %inc26.i = add nuw nsw i32 %i.1113.i, 1
  %exitcond115.not.i = icmp eq i32 %inc26.i, 148
  br i1 %exitcond115.not.i, label %for.body20.i.if.end28.i_crit_edge, label %for.body20.i.for.body20.i_crit_edge

for.body20.i.for.body20.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20.i

for.body20.i.if.end28.i_crit_edge:                ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.end28.i:                                       ; preds = %for.body20.i.if.end28.i_crit_edge, %if.end10.i.if.end28.i_crit_edge
  %num_vss_hpf_cfgs.i = getelementptr inbounds %struct.wm8994_pdata, ptr %52, i32 0, i32 13
  %71 = ptrtoint ptr %num_vss_hpf_cfgs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_vss_hpf_cfgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool30.not.i = icmp eq i32 %72, 0
  br i1 %tobool30.not.i, label %if.end28.i.wm8958_dsp_start_vss.exit_crit_edge, label %if.then31.i

if.end28.i.wm8958_dsp_start_vss.exit_crit_edge:   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wm8958_dsp_start_vss.exit

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %vss_hpf_cfgs.i = getelementptr inbounds %struct.wm8994_pdata, ptr %52, i32 0, i32 14
  %73 = ptrtoint ptr %vss_hpf_cfgs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vss_hpf_cfgs.i, align 4
  %vss_hpf_cfg.i = getelementptr inbounds %struct.wm8994_priv, ptr %50, i32 0, i32 38
  %75 = ptrtoint ptr %vss_hpf_cfg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vss_hpf_cfg.i, align 4
  %arrayidx41.i = getelementptr %struct.wm8958_vss_hpf_cfg, ptr %74, i32 %76, i32 1, i32 0
  %77 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx41.i, align 2
  %conv42.i = zext i16 %78 to i32
  %call43.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 9216, i32 noundef %conv42.i) #9
  %arrayidx41.1.i = getelementptr %struct.wm8958_vss_hpf_cfg, ptr %74, i32 %76, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx41.1.i, align 2
  %conv42.1.i = zext i16 %80 to i32
  %call43.1.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 9217, i32 noundef %conv42.1.i) #9
  br label %wm8958_dsp_start_vss.exit

wm8958_dsp_start_vss.exit:                        ; preds = %if.then31.i, %if.end28.i.wm8958_dsp_start_vss.exit_crit_edge
  %call48.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2573, i32 noundef 2) #9
  %arrayidx49.i = getelementptr %struct.wm8994_priv, ptr %50, i32 0, i32 20, i32 %path
  %81 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool50.not.i = icmp eq i32 %82, 0
  %spec.select.i = select i1 %tobool50.not.i, i32 0, i32 8
  %arrayidx53.i = getelementptr %struct.wm8994_priv, ptr %50, i32 0, i32 22, i32 %path
  %83 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool54.not.i = icmp eq i32 %84, 0
  %or56.i = or i32 %spec.select.i, 4
  %ena.1.i = select i1 %tobool54.not.i, i32 %spec.select.i, i32 %or56.i
  %arrayidx58.i = getelementptr %struct.wm8994_priv, ptr %50, i32 0, i32 21, i32 %path
  %85 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool59.not.i = icmp eq i32 %86, 0
  %or61.i = or i32 %ena.1.i, 2
  %ena.2.i = select i1 %tobool59.not.i, i32 %ena.1.i, i32 %or61.i
  %arrayidx63.i = getelementptr %struct.wm8994_priv, ptr %50, i32 0, i32 23, i32 %path
  %87 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool64.not.i = icmp ne i32 %88, 0
  %or66.i = zext i1 %tobool64.not.i to i32
  %ena.3.i = or i32 %ena.2.i, %or66.i
  %call68.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 8705, i32 noundef %ena.3.i) #9
  %shl.i218 = shl i32 %path, 4
  %or69.i = or i32 %shl.i218, 1
  %call70.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2305, i32 noundef 49, i32 noundef %or69.i) #9
  br label %if.end89

if.else82:                                        ; preds = %lor.lhs.false77
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool85.not = icmp eq i32 %90, 0
  br i1 %tobool85.not, label %if.else82.if.end89_crit_edge, label %if.then86

if.else82.if.end89_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then86:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @wm8958_dsp_start_mbc(ptr noundef %component, i32 noundef %path)
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.else82.if.end89_crit_edge, %wm8958_dsp_start_vss.exit, %wm8958_dsp_start_enh_eq.exit
  %dsp_active90 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 63
  %91 = ptrtoint ptr %dsp_active90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %path, ptr %dsp_active90, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8958_dsp_apply.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8958_dsp_apply, %if.then103)) #9
          to label %if.end108 [label %if.then103], !srcloc !174

if.then103:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8958_dsp_apply.__UNIQUE_ID_ddebug324, ptr noundef %93, ptr noundef nonnull @.str.25, i32 noundef %path) #9
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %if.end89, %do.end48.if.end108_crit_edge
  br i1 %tobool49.not, label %land.lhs.true110, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true110:                                 ; preds = %if.end108
  %dsp_active111 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 63
  %94 = ptrtoint ptr %dsp_active111 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dsp_active111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %path)
  %cmp = icmp ne i32 %95, %path
  %and113 = and i32 %call34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  %or.cond200 = select i1 %cmp, i1 true, i1 %tobool114.not
  br i1 %or.cond200, label %land.lhs.true110.cleanup_crit_edge, label %if.end116

land.lhs.true110.cleanup_crit_edge:               ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end116:                                        ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #11
  %call117 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2305, i32 noundef 1, i32 noundef 0) #9
  %call118 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2573, i32 noundef 4) #9
  %call119 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2304, i32 noundef 1, i32 noundef 0) #9
  %call120 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 520, i32 noundef 16384, i32 noundef 0) #9
  %96 = ptrtoint ptr %dsp_active111 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %dsp_active111, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8958_dsp_apply.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8958_dsp_apply, %if.then134)) #9
          to label %cleanup [label %if.then134], !srcloc !174

if.then134:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8958_dsp_apply.__UNIQUE_ID_ddebug325, ptr noundef %98, ptr noundef nonnull @.str.26) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then134, %if.end116, %land.lhs.true110.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %land.lhs.true59.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wm8958_dsp2_init(ptr noundef %component) local_unnamed_addr #0 align 64 {
entry:
  %mbc_control = alloca [1 x %struct.snd_kcontrol_new], align 4
  %vss_control = alloca [1 x %struct.snd_kcontrol_new], align 4
  %hpf_control = alloca [1 x %struct.snd_kcontrol_new], align 4
  %eq_control = alloca [1 x %struct.snd_kcontrol_new], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %wm89941 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wm89941 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wm89941, align 4
  %dsp_active = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 63
  %6 = ptrtoint ptr %dsp_active to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %dsp_active, align 4
  %call3 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8958_mbc_snd_controls, i32 noundef 3) #9
  %call4 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8958_vss_snd_controls, i32 noundef 9) #9
  %call5 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8958_enh_eq_snd_controls, i32 noundef 3) #9
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %call6 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %8, i32 noundef 3264, ptr noundef %component, ptr noundef nonnull @wm8958_mbc_loaded) #9
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %call8 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %10, i32 noundef 3264, ptr noundef %component, ptr noundef nonnull @wm8958_mbc_vss_loaded) #9
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %call10 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %12, i32 noundef 3264, ptr noundef %component, ptr noundef nonnull @wm8958_enh_eq_loaded) #9
  %num_mbc_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %5, i32 0, i32 9
  %13 = ptrtoint ptr %num_mbc_cfgs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_mbc_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.if.end32_crit_edge, label %if.then

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mbc_control) #9
  %15 = ptrtoint ptr %mbc_control to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %mbc_control, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol_new, ptr %mbc_control, i32 0, i32 1
  %16 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %device, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol_new, ptr %mbc_control, i32 0, i32 2
  %17 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %subdevice, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol_new, ptr %mbc_control, i32 0, i32 3
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.3, ptr %name, align 4
  %index = getelementptr inbounds %struct.snd_kcontrol_new, ptr %mbc_control, i32 0, i32 4
  %19 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %index, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol_new, ptr %mbc_control, i32 0, i32 5
  %20 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %access, align 4
  %count = getelementptr inbounds %struct.snd_kcontrol_new, ptr %mbc_control, i32 0, i32 6
  %21 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %count, align 4
  %info = getelementptr inbounds %struct.snd_kcontrol_new, ptr %mbc_control, i32 0, i32 7
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @snd_soc_info_enum_double, ptr %info, align 4
  %get = getelementptr inbounds %struct.snd_kcontrol_new, ptr %mbc_control, i32 0, i32 8
  %23 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @wm8958_get_mbc_enum, ptr %get, align 4
  %put = getelementptr inbounds %struct.snd_kcontrol_new, ptr %mbc_control, i32 0, i32 9
  %24 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @wm8958_put_mbc_enum, ptr %put, align 4
  %tlv = getelementptr inbounds %struct.snd_kcontrol_new, ptr %mbc_control, i32 0, i32 10
  %25 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tlv, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %mbc_control, i32 0, i32 11
  %mbc_enum = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 34
  %26 = ptrtoint ptr %mbc_enum to i32
  %27 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %private_value, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 4) #9
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !175

kmalloc_array.exit.thread:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mbc_texts404 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 33
  %30 = ptrtoint ptr %mbc_texts404 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %mbc_texts404, align 4
  br label %cleanup198.critedge

if.end7.i:                                        ; preds = %if.then
  %31 = extractvalue { i32, i1 } %28, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3264) #12
  %mbc_texts = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 33
  %32 = ptrtoint ptr %mbc_texts to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call8.i, ptr %mbc_texts, align 4
  %tobool14.not = icmp eq ptr %call8.i, null
  br i1 %tobool14.not, label %if.end7.i.cleanup198.critedge_crit_edge, label %for.cond.preheader

if.end7.i.cleanup198.critedge_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup198.critedge

for.cond.preheader:                               ; preds = %if.end7.i
  %33 = ptrtoint ptr %num_mbc_cfgs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_mbc_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp418 = icmp sgt i32 %34, 0
  br i1 %cmp418, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mbc_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %5, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0419 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %35 = ptrtoint ptr %mbc_cfgs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mbc_cfgs, align 4
  %arrayidx = getelementptr %struct.wm8958_mbc_cfg, ptr %36, i32 %i.0419
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %mbc_texts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mbc_texts, align 4
  %arrayidx19 = getelementptr ptr, ptr %40, i32 %i.0419
  %41 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %arrayidx19, align 4
  %inc = add nuw nsw i32 %i.0419, 1
  %42 = ptrtoint ptr %num_mbc_cfgs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_mbc_cfgs, align 4
  %cmp = icmp slt i32 %inc, %43
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa417 = phi i32 [ %34, %for.cond.preheader.for.end_crit_edge ], [ %43, %for.body.for.end_crit_edge ]
  %items = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 34, i32 3
  %44 = ptrtoint ptr %items to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.lcssa417, ptr %items, align 4
  %45 = ptrtoint ptr %mbc_texts to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mbc_texts, align 4
  %texts = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 34, i32 5
  %47 = ptrtoint ptr %texts to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %texts, align 4
  %component24 = getelementptr inbounds %struct.wm_hubs_data, ptr %3, i32 0, i32 20
  %48 = ptrtoint ptr %component24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %component24, align 4
  %call25 = call i32 @snd_soc_add_component_controls(ptr noundef %49, ptr noundef nonnull %mbc_control, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %component24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %component24, align 4
  %dev30 = getelementptr inbounds %struct.snd_soc_component, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.4, i32 noundef %call25) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mbc_control) #9
  br label %if.end32

if.end32:                                         ; preds = %cleanup, %entry.if.end32_crit_edge
  %num_vss_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %5, i32 0, i32 11
  %54 = ptrtoint ptr %num_vss_cfgs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_vss_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool33.not = icmp eq i32 %55, 0
  br i1 %tobool33.not, label %if.end32.if.end87_crit_edge, label %if.then34

if.end32.if.end87_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then34:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %vss_control) #9
  %56 = ptrtoint ptr %vss_control to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %vss_control, align 4
  %device37 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %vss_control, i32 0, i32 1
  %57 = ptrtoint ptr %device37 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %device37, align 4
  %subdevice38 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %vss_control, i32 0, i32 2
  %58 = ptrtoint ptr %subdevice38 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %subdevice38, align 4
  %name39 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %vss_control, i32 0, i32 3
  %59 = ptrtoint ptr %name39 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.9, ptr %name39, align 4
  %index40 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %vss_control, i32 0, i32 4
  %60 = ptrtoint ptr %index40 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %index40, align 4
  %access41 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %vss_control, i32 0, i32 5
  %61 = ptrtoint ptr %access41 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %access41, align 4
  %count42 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %vss_control, i32 0, i32 6
  %62 = ptrtoint ptr %count42 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %count42, align 4
  %info43 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %vss_control, i32 0, i32 7
  %63 = ptrtoint ptr %info43 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @snd_soc_info_enum_double, ptr %info43, align 4
  %get44 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %vss_control, i32 0, i32 8
  %64 = ptrtoint ptr %get44 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @wm8958_get_vss_enum, ptr %get44, align 4
  %put45 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %vss_control, i32 0, i32 9
  %65 = ptrtoint ptr %put45 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @wm8958_put_vss_enum, ptr %put45, align 4
  %tlv46 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %vss_control, i32 0, i32 10
  %66 = ptrtoint ptr %tlv46 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %tlv46, align 4
  %private_value47 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %vss_control, i32 0, i32 11
  %vss_enum = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 37
  %67 = ptrtoint ptr %vss_enum to i32
  %68 = ptrtoint ptr %private_value47 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %private_value47, align 4
  %69 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 4) #9
  %70 = extractvalue { i32, i1 } %69, 1
  br i1 %70, label %kmalloc_array.exit336.thread, label %if.end7.i334, !prof !175

kmalloc_array.exit336.thread:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %vss_texts407 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 36
  %71 = ptrtoint ptr %vss_texts407 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %vss_texts407, align 4
  br label %cleanup198.critedge301

if.end7.i334:                                     ; preds = %if.then34
  %72 = extractvalue { i32, i1 } %69, 0
  %call8.i333 = call noalias align 128 ptr @__kmalloc(i32 noundef %72, i32 noundef 3264) #12
  %vss_texts = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 36
  %73 = ptrtoint ptr %vss_texts to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call8.i333, ptr %vss_texts, align 4
  %tobool51.not = icmp eq ptr %call8.i333, null
  br i1 %tobool51.not, label %if.end7.i334.cleanup198.critedge301_crit_edge, label %for.cond54.preheader

if.end7.i334.cleanup198.critedge301_crit_edge:    ; preds = %if.end7.i334
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup198.critedge301

for.cond54.preheader:                             ; preds = %if.end7.i334
  %74 = ptrtoint ptr %num_vss_cfgs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_vss_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp56420 = icmp sgt i32 %75, 0
  br i1 %cmp56420, label %for.body57.lr.ph, label %for.cond54.preheader.for.end64_crit_edge

for.cond54.preheader.for.end64_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end64

for.body57.lr.ph:                                 ; preds = %for.cond54.preheader
  %vss_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %5, i32 0, i32 12
  br label %for.body57

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %for.body57.lr.ph
  %i.1421 = phi i32 [ 0, %for.body57.lr.ph ], [ %inc63, %for.body57.for.body57_crit_edge ]
  %76 = ptrtoint ptr %vss_cfgs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vss_cfgs, align 4
  %arrayidx58 = getelementptr %struct.wm8958_vss_cfg, ptr %77, i32 %i.1421
  %78 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx58, align 4
  %80 = ptrtoint ptr %vss_texts to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vss_texts, align 4
  %arrayidx61 = getelementptr ptr, ptr %81, i32 %i.1421
  %82 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %arrayidx61, align 4
  %inc63 = add nuw nsw i32 %i.1421, 1
  %83 = ptrtoint ptr %num_vss_cfgs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_vss_cfgs, align 4
  %cmp56 = icmp slt i32 %inc63, %84
  br i1 %cmp56, label %for.body57.for.body57_crit_edge, label %for.body57.for.end64_crit_edge

for.body57.for.end64_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end64

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57

for.end64:                                        ; preds = %for.body57.for.end64_crit_edge, %for.cond54.preheader.for.end64_crit_edge
  %.lcssa416 = phi i32 [ %75, %for.cond54.preheader.for.end64_crit_edge ], [ %84, %for.body57.for.end64_crit_edge ]
  %items67 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 37, i32 3
  %85 = ptrtoint ptr %items67 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %.lcssa416, ptr %items67, align 4
  %86 = ptrtoint ptr %vss_texts to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vss_texts, align 4
  %texts70 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 37, i32 5
  %88 = ptrtoint ptr %texts70 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %texts70, align 4
  %component72 = getelementptr inbounds %struct.wm_hubs_data, ptr %3, i32 0, i32 20
  %89 = ptrtoint ptr %component72 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %component72, align 4
  %call74 = call i32 @snd_soc_add_component_controls(ptr noundef %90, ptr noundef nonnull %vss_control, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %for.end64.cleanup84_crit_edge, label %do.end79

for.end64.cleanup84_crit_edge:                    ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup84

do.end79:                                         ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %component72 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %component72, align 4
  %dev82 = getelementptr inbounds %struct.snd_soc_component, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev82, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.11, i32 noundef %call74) #13
  br label %cleanup84

cleanup84:                                        ; preds = %do.end79, %for.end64.cleanup84_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %vss_control) #9
  br label %if.end87

if.end87:                                         ; preds = %cleanup84, %if.end32.if.end87_crit_edge
  %num_vss_hpf_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %5, i32 0, i32 13
  %95 = ptrtoint ptr %num_vss_hpf_cfgs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_vss_hpf_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool88.not = icmp eq i32 %96, 0
  br i1 %tobool88.not, label %if.end87.if.end142_crit_edge, label %if.then89

if.end87.if.end142_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then89:                                        ; preds = %if.end87
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %hpf_control) #9
  %97 = ptrtoint ptr %hpf_control to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 2, ptr %hpf_control, align 4
  %device92 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hpf_control, i32 0, i32 1
  %98 = ptrtoint ptr %device92 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %device92, align 4
  %subdevice93 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hpf_control, i32 0, i32 2
  %99 = ptrtoint ptr %subdevice93 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %subdevice93, align 4
  %name94 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hpf_control, i32 0, i32 3
  %100 = ptrtoint ptr %name94 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @.str.13, ptr %name94, align 4
  %index95 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hpf_control, i32 0, i32 4
  %101 = ptrtoint ptr %index95 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %index95, align 4
  %access96 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hpf_control, i32 0, i32 5
  %102 = ptrtoint ptr %access96 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %access96, align 4
  %count97 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hpf_control, i32 0, i32 6
  %103 = ptrtoint ptr %count97 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %count97, align 4
  %info98 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hpf_control, i32 0, i32 7
  %104 = ptrtoint ptr %info98 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @snd_soc_info_enum_double, ptr %info98, align 4
  %get99 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hpf_control, i32 0, i32 8
  %105 = ptrtoint ptr %get99 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @wm8958_get_vss_hpf_enum, ptr %get99, align 4
  %put100 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hpf_control, i32 0, i32 9
  %106 = ptrtoint ptr %put100 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @wm8958_put_vss_hpf_enum, ptr %put100, align 4
  %tlv101 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hpf_control, i32 0, i32 10
  %107 = ptrtoint ptr %tlv101 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %tlv101, align 4
  %private_value102 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %hpf_control, i32 0, i32 11
  %vss_hpf_enum = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 40
  %108 = ptrtoint ptr %vss_hpf_enum to i32
  %109 = ptrtoint ptr %private_value102 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %private_value102, align 4
  %110 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %96, i32 4) #9
  %111 = extractvalue { i32, i1 } %110, 1
  br i1 %111, label %kmalloc_array.exit369.thread, label %if.end7.i367, !prof !175

kmalloc_array.exit369.thread:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  %vss_hpf_texts410 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 39
  %112 = ptrtoint ptr %vss_hpf_texts410 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %vss_hpf_texts410, align 4
  br label %cleanup198.critedge302

if.end7.i367:                                     ; preds = %if.then89
  %113 = extractvalue { i32, i1 } %110, 0
  %call8.i366 = call noalias align 128 ptr @__kmalloc(i32 noundef %113, i32 noundef 3264) #12
  %vss_hpf_texts = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 39
  %114 = ptrtoint ptr %vss_hpf_texts to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call8.i366, ptr %vss_hpf_texts, align 4
  %tobool106.not = icmp eq ptr %call8.i366, null
  br i1 %tobool106.not, label %if.end7.i367.cleanup198.critedge302_crit_edge, label %for.cond109.preheader

if.end7.i367.cleanup198.critedge302_crit_edge:    ; preds = %if.end7.i367
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup198.critedge302

for.cond109.preheader:                            ; preds = %if.end7.i367
  %115 = ptrtoint ptr %num_vss_hpf_cfgs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_vss_hpf_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp111423 = icmp sgt i32 %116, 0
  br i1 %cmp111423, label %for.body112.lr.ph, label %for.cond109.preheader.for.end119_crit_edge

for.cond109.preheader.for.end119_crit_edge:       ; preds = %for.cond109.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end119

for.body112.lr.ph:                                ; preds = %for.cond109.preheader
  %vss_hpf_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %5, i32 0, i32 14
  br label %for.body112

for.body112:                                      ; preds = %for.body112.for.body112_crit_edge, %for.body112.lr.ph
  %i.2424 = phi i32 [ 0, %for.body112.lr.ph ], [ %inc118, %for.body112.for.body112_crit_edge ]
  %117 = ptrtoint ptr %vss_hpf_cfgs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vss_hpf_cfgs, align 4
  %arrayidx113 = getelementptr %struct.wm8958_vss_hpf_cfg, ptr %118, i32 %i.2424
  %119 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx113, align 4
  %121 = ptrtoint ptr %vss_hpf_texts to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %vss_hpf_texts, align 4
  %arrayidx116 = getelementptr ptr, ptr %122, i32 %i.2424
  %123 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %arrayidx116, align 4
  %inc118 = add nuw nsw i32 %i.2424, 1
  %124 = ptrtoint ptr %num_vss_hpf_cfgs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_vss_hpf_cfgs, align 4
  %cmp111 = icmp slt i32 %inc118, %125
  br i1 %cmp111, label %for.body112.for.body112_crit_edge, label %for.body112.for.end119_crit_edge

for.body112.for.end119_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end119

for.body112.for.body112_crit_edge:                ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body112

for.end119:                                       ; preds = %for.body112.for.end119_crit_edge, %for.cond109.preheader.for.end119_crit_edge
  %.lcssa415 = phi i32 [ %116, %for.cond109.preheader.for.end119_crit_edge ], [ %125, %for.body112.for.end119_crit_edge ]
  %items122 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 40, i32 3
  %126 = ptrtoint ptr %items122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %.lcssa415, ptr %items122, align 4
  %127 = ptrtoint ptr %vss_hpf_texts to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %vss_hpf_texts, align 4
  %texts125 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 40, i32 5
  %129 = ptrtoint ptr %texts125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %texts125, align 4
  %component127 = getelementptr inbounds %struct.wm_hubs_data, ptr %3, i32 0, i32 20
  %130 = ptrtoint ptr %component127 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %component127, align 4
  %call129 = call i32 @snd_soc_add_component_controls(ptr noundef %131, ptr noundef nonnull %hpf_control, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130.not = icmp eq i32 %call129, 0
  br i1 %cmp130.not, label %for.end119.cleanup139_crit_edge, label %do.end134

for.end119.cleanup139_crit_edge:                  ; preds = %for.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup139

do.end134:                                        ; preds = %for.end119
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %component127 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %component127, align 4
  %dev137 = getelementptr inbounds %struct.snd_soc_component, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %dev137 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev137, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.15, i32 noundef %call129) #13
  br label %cleanup139

cleanup139:                                       ; preds = %do.end134, %for.end119.cleanup139_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %hpf_control) #9
  br label %if.end142

if.end142:                                        ; preds = %cleanup139, %if.end87.if.end142_crit_edge
  %num_enh_eq_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %5, i32 0, i32 15
  %136 = ptrtoint ptr %num_enh_eq_cfgs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num_enh_eq_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool143.not = icmp eq i32 %137, 0
  br i1 %tobool143.not, label %if.end142.cleanup198_crit_edge, label %if.then144

if.end142.cleanup198_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup198

if.then144:                                       ; preds = %if.end142
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %eq_control) #9
  %138 = ptrtoint ptr %eq_control to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 2, ptr %eq_control, align 4
  %device147 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %eq_control, i32 0, i32 1
  %139 = ptrtoint ptr %device147 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %device147, align 4
  %subdevice148 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %eq_control, i32 0, i32 2
  %140 = ptrtoint ptr %subdevice148 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %subdevice148, align 4
  %name149 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %eq_control, i32 0, i32 3
  %141 = ptrtoint ptr %name149 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @.str.17, ptr %name149, align 4
  %index150 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %eq_control, i32 0, i32 4
  %142 = ptrtoint ptr %index150 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %index150, align 4
  %access151 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %eq_control, i32 0, i32 5
  %143 = ptrtoint ptr %access151 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %access151, align 4
  %count152 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %eq_control, i32 0, i32 6
  %144 = ptrtoint ptr %count152 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %count152, align 4
  %info153 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %eq_control, i32 0, i32 7
  %145 = ptrtoint ptr %info153 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @snd_soc_info_enum_double, ptr %info153, align 4
  %get154 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %eq_control, i32 0, i32 8
  %146 = ptrtoint ptr %get154 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @wm8958_get_enh_eq_enum, ptr %get154, align 4
  %put155 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %eq_control, i32 0, i32 9
  %147 = ptrtoint ptr %put155 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @wm8958_put_enh_eq_enum, ptr %put155, align 4
  %tlv156 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %eq_control, i32 0, i32 10
  %148 = ptrtoint ptr %tlv156 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %tlv156, align 4
  %private_value157 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %eq_control, i32 0, i32 11
  %enh_eq_enum = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 43
  %149 = ptrtoint ptr %enh_eq_enum to i32
  %150 = ptrtoint ptr %private_value157 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %private_value157, align 4
  %151 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %137, i32 4) #9
  %152 = extractvalue { i32, i1 } %151, 1
  br i1 %152, label %kmalloc_array.exit402.thread, label %if.end7.i400, !prof !175

kmalloc_array.exit402.thread:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  %enh_eq_texts413 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 42
  %153 = ptrtoint ptr %enh_eq_texts413 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %enh_eq_texts413, align 4
  br label %cleanup198.critedge303

if.end7.i400:                                     ; preds = %if.then144
  %154 = extractvalue { i32, i1 } %151, 0
  %call8.i399 = call noalias align 128 ptr @__kmalloc(i32 noundef %154, i32 noundef 3264) #12
  %enh_eq_texts = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 42
  %155 = ptrtoint ptr %enh_eq_texts to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call8.i399, ptr %enh_eq_texts, align 4
  %tobool161.not = icmp eq ptr %call8.i399, null
  br i1 %tobool161.not, label %if.end7.i400.cleanup198.critedge303_crit_edge, label %for.cond164.preheader

if.end7.i400.cleanup198.critedge303_crit_edge:    ; preds = %if.end7.i400
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup198.critedge303

for.cond164.preheader:                            ; preds = %if.end7.i400
  %156 = ptrtoint ptr %num_enh_eq_cfgs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %num_enh_eq_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp166426 = icmp sgt i32 %157, 0
  br i1 %cmp166426, label %for.body167.lr.ph, label %for.cond164.preheader.for.end174_crit_edge

for.cond164.preheader.for.end174_crit_edge:       ; preds = %for.cond164.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end174

for.body167.lr.ph:                                ; preds = %for.cond164.preheader
  %enh_eq_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %5, i32 0, i32 16
  br label %for.body167

for.body167:                                      ; preds = %for.body167.for.body167_crit_edge, %for.body167.lr.ph
  %i.3427 = phi i32 [ 0, %for.body167.lr.ph ], [ %inc173, %for.body167.for.body167_crit_edge ]
  %158 = ptrtoint ptr %enh_eq_cfgs to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %enh_eq_cfgs, align 4
  %arrayidx168 = getelementptr %struct.wm8958_enh_eq_cfg, ptr %159, i32 %i.3427
  %160 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx168, align 4
  %162 = ptrtoint ptr %enh_eq_texts to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %enh_eq_texts, align 4
  %arrayidx171 = getelementptr ptr, ptr %163, i32 %i.3427
  %164 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %161, ptr %arrayidx171, align 4
  %inc173 = add nuw nsw i32 %i.3427, 1
  %165 = ptrtoint ptr %num_enh_eq_cfgs to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %num_enh_eq_cfgs, align 4
  %cmp166 = icmp slt i32 %inc173, %166
  br i1 %cmp166, label %for.body167.for.body167_crit_edge, label %for.body167.for.end174_crit_edge

for.body167.for.end174_crit_edge:                 ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end174

for.body167.for.body167_crit_edge:                ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body167

for.end174:                                       ; preds = %for.body167.for.end174_crit_edge, %for.cond164.preheader.for.end174_crit_edge
  %.lcssa = phi i32 [ %157, %for.cond164.preheader.for.end174_crit_edge ], [ %166, %for.body167.for.end174_crit_edge ]
  %items177 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 43, i32 3
  %167 = ptrtoint ptr %items177 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %.lcssa, ptr %items177, align 4
  %168 = ptrtoint ptr %enh_eq_texts to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %enh_eq_texts, align 4
  %texts180 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 43, i32 5
  %170 = ptrtoint ptr %texts180 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %169, ptr %texts180, align 4
  %component182 = getelementptr inbounds %struct.wm_hubs_data, ptr %3, i32 0, i32 20
  %171 = ptrtoint ptr %component182 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %component182, align 4
  %call184 = call i32 @snd_soc_add_component_controls(ptr noundef %172, ptr noundef nonnull %eq_control, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp185.not = icmp eq i32 %call184, 0
  br i1 %cmp185.not, label %for.end174.cleanup194_crit_edge, label %do.end189

for.end174.cleanup194_crit_edge:                  ; preds = %for.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup194

do.end189:                                        ; preds = %for.end174
  call void @__sanitizer_cov_trace_pc() #11
  %173 = ptrtoint ptr %component182 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %component182, align 4
  %dev192 = getelementptr inbounds %struct.snd_soc_component, ptr %174, i32 0, i32 3
  %175 = ptrtoint ptr %dev192 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev192, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.19, i32 noundef %call184) #13
  br label %cleanup194

cleanup194:                                       ; preds = %do.end189, %for.end174.cleanup194_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %eq_control) #9
  br label %cleanup198

cleanup198.critedge:                              ; preds = %if.end7.i.cleanup198.critedge_crit_edge, %kmalloc_array.exit.thread
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mbc_control) #9
  br label %cleanup198

cleanup198.critedge301:                           ; preds = %if.end7.i334.cleanup198.critedge301_crit_edge, %kmalloc_array.exit336.thread
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %vss_control) #9
  br label %cleanup198

cleanup198.critedge302:                           ; preds = %if.end7.i367.cleanup198.critedge302_crit_edge, %kmalloc_array.exit369.thread
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %hpf_control) #9
  br label %cleanup198

cleanup198.critedge303:                           ; preds = %if.end7.i400.cleanup198.critedge303_crit_edge, %kmalloc_array.exit402.thread
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %eq_control) #9
  br label %cleanup198

cleanup198:                                       ; preds = %cleanup198.critedge303, %cleanup198.critedge302, %cleanup198.critedge301, %cleanup198.critedge, %cleanup194, %if.end142.cleanup198_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8958_mbc_loaded(ptr noundef %fw, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %context, ptr noundef nonnull @.str.72, ptr noundef nonnull %fw, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %fw_lock = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %fw_lock, i32 noundef 0) #9
  %mbc = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %mbc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fw, ptr %mbc, align 4
  tail call void @mutex_unlock(ptr noundef %fw_lock) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8958_mbc_vss_loaded(ptr noundef %fw, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %context, ptr noundef nonnull @.str.71, ptr noundef nonnull %fw, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %fw_lock = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %fw_lock, i32 noundef 0) #9
  %mbc_vss = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 66
  %4 = ptrtoint ptr %mbc_vss to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fw, ptr %mbc_vss, align 4
  tail call void @mutex_unlock(ptr noundef %fw_lock) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8958_enh_eq_loaded(ptr noundef %fw, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %context, ptr noundef nonnull @.str.27, ptr noundef nonnull %fw, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %fw_lock = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %fw_lock, i32 noundef 0) #9
  %enh_eq = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 67
  %4 = ptrtoint ptr %enh_eq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fw, ptr %enh_eq, align 4
  tail call void @mutex_unlock(ptr noundef %fw_lock) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_get_mbc_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %mbc_cfg = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %mbc_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbc_cfg, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8958_put_mbc_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %wm89942 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wm89942 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wm89942, align 4
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value3, align 8
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 520) #9
  %10 = and i32 %call4, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_mbc_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %num_mbc_cfgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_mbc_cfgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp5.not = icmp slt i32 %9, %13
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mbc_cfg = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 32
  %14 = ptrtoint ptr %mbc_cfg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %mbc_cfg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_get_vss_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %vss_cfg = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %vss_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vss_cfg, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8958_put_vss_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %wm89942 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wm89942 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wm89942, align 4
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value3, align 8
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 520) #9
  %10 = and i32 %call4, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_vss_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 11
  %12 = ptrtoint ptr %num_vss_cfgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_vss_cfgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp5.not = icmp slt i32 %9, %13
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vss_cfg = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 35
  %14 = ptrtoint ptr %vss_cfg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %vss_cfg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_get_vss_hpf_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %vss_hpf_cfg = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 38
  %6 = ptrtoint ptr %vss_hpf_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vss_hpf_cfg, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8958_put_vss_hpf_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %wm89942 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wm89942 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wm89942, align 4
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value3, align 8
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 520) #9
  %10 = and i32 %call4, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_vss_hpf_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 13
  %12 = ptrtoint ptr %num_vss_hpf_cfgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_vss_hpf_cfgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp5.not = icmp slt i32 %9, %13
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vss_hpf_cfg = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 38
  %14 = ptrtoint ptr %vss_hpf_cfg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %vss_hpf_cfg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_get_enh_eq_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %enh_eq_cfg = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %enh_eq_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enh_eq_cfg, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8958_put_enh_eq_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %wm89942 = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wm89942 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wm89942, align 4
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value3, align 8
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 520) #9
  %10 = and i32 %call4, -2147467264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_enh_eq_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %7, i32 0, i32 15
  %12 = ptrtoint ptr %num_enh_eq_cfgs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_enh_eq_cfgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp5.not = icmp slt i32 %9, %13
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %enh_eq_cfg = getelementptr inbounds %struct.wm8994_priv, ptr %5, i32 0, i32 41
  %14 = ptrtoint ptr %enh_eq_cfg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %enh_eq_cfg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8958_dsp_start_mbc(ptr noundef %component, i32 noundef %path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %wm89941 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wm89941 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wm89941, align 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 2304) #9
  %and = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbc = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 65
  %6 = ptrtoint ptr %mbc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbc, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call fastcc i32 @wm8958_dsp2_fw(ptr noundef %component, ptr noundef nonnull @.str.72, ptr noundef nonnull %7, i1 noundef zeroext false)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #9
  %num_mbc_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %num_mbc_cfgs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_mbc_cfgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %if.end7.if.end25_crit_edge, label %if.then10

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then10:                                        ; preds = %if.end7
  %mbc_cfgs = getelementptr inbounds %struct.wm8994_pdata, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %mbc_cfgs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbc_cfgs, align 4
  %mbc_cfg = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 32
  %12 = ptrtoint ptr %mbc_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbc_cfg, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then10
  %i.049 = phi i32 [ 0, %if.then10 ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.049, 9216
  %arrayidx12 = getelementptr %struct.wm8958_mbc_cfg, ptr %11, i32 %13, i32 2, i32 %i.049
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx12, align 2
  %conv = zext i16 %15 to i32
  %call13 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add, i32 noundef %conv) #9
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %for.body.for.body17_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.body17_crit_edge:                    ; preds = %for.body
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body.for.body17_crit_edge
  %i.150 = phi i32 [ %inc23, %for.body17.for.body17_crit_edge ], [ 0, %for.body.for.body17_crit_edge ]
  %add18 = add nuw nsw i32 %i.150, 8704
  %arrayidx19 = getelementptr %struct.wm8958_mbc_cfg, ptr %11, i32 %13, i32 1, i32 %i.150
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %17 to i32
  %call21 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add18, i32 noundef %conv20) #9
  %inc23 = add nuw nsw i32 %i.150, 1
  %exitcond51.not = icmp eq i32 %inc23, 20
  br i1 %exitcond51.not, label %for.body17.if.end25_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

for.body17.if.end25_crit_edge:                    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %for.body17.if.end25_crit_edge, %if.end7.if.end25_crit_edge
  %call26 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2573, i32 noundef 2) #9
  %shl = shl i32 %path, 4
  %or = or i32 %shl, 1
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2305, i32 noundef 49, i32 noundef %or) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8958_dsp2_fw(ptr noundef %component, ptr noundef %name, ptr noundef %fw, i1 noundef zeroext %check) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cur_fw = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %cur_fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_fw, align 4
  %cmp = icmp eq ptr %5, %fw
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp1 = icmp ult i32 %7, 32
  br i1 %cmp1, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef %name, i32 noundef %7) #13
  br label %ok

if.end4:                                          ; preds = %if.end
  %data5 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %8 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data5, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %9, ptr noundef nonnull dereferenceable(4) @.str.30, i32 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp7.not = icmp eq i32 %bcmp, 0
  br i1 %cmp7.not, label %if.end15, label %if.then8

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %9, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %11) #13
  br label %ok

if.end15:                                         ; preds = %if.end4
  %add.ptr = getelementptr i8, ptr %9, i32 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr, align 1
  %add.ptr19 = getelementptr i8, ptr %9, i32 8
  %14 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr19, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %15)
  %tobool.not = icmp ult i32 %15, 16777216
  br i1 %tobool.not, label %if.end28, label %do.end24

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %15, 24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef %name, i32 noundef %shr) #13
  br label %ok

if.end28:                                         ; preds = %if.end15
  %and29 = and i32 %15, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8958, i32 %and29)
  %cmp30.not = icmp eq i32 %and29, 8958
  br i1 %cmp30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %and29) #13
  br label %ok

if.end37:                                         ; preds = %if.end28
  %shr38 = lshr i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %shr38)
  %cmp40.not = icmp eq i32 %shr38, 12
  br i1 %cmp40.not, label %if.end48, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef %shr38) #13
  br label %ok

if.end48:                                         ; preds = %if.end37
  br i1 %check, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr52 = getelementptr i8, ptr %9, i32 24
  %16 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %add.ptr52, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef %name, i64 noundef %17) #13
  br label %if.end60

if.else:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 258, i32 noundef 2) #9
  %call59 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2304, i32 noundef 2) #9
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then50
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw, align 4
  %sub = sub i32 %19, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool64.not279 = icmp eq i32 %sub, 0
  br i1 %tobool64.not279, label %if.end60.while.end_crit_edge, label %while.body.lr.ph

if.end60.while.end_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end60
  %20 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data5, align 4
  %add.ptr62 = getelementptr i8, ptr %21, i32 %13
  %wm8994128 = getelementptr inbounds %struct.wm8994_priv, ptr %3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %len.0282 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub142, %sw.epilog.while.body_crit_edge ]
  %data.0280 = phi ptr [ %add.ptr62, %while.body.lr.ph ], [ %add.ptr140, %sw.epilog.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len.0282)
  %cmp65 = icmp ult i32 %len.0282, 12
  br i1 %cmp65, label %do.end69, label %if.end71

do.end69:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.48, ptr noundef %name, i32 noundef %len.0282) #13
  br label %ok

if.end71:                                         ; preds = %while.body
  %add.ptr72 = getelementptr i8, ptr %data.0280, i32 4
  %24 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %add.ptr72, align 1
  %add = add i32 %25, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len.0282)
  %cmp74 = icmp ugt i32 %add, %len.0282
  br i1 %cmp74, label %do.end78, label %if.end80

do.end78:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.51, i32 noundef %25) #13
  br label %ok

if.end80:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp81 = icmp eq i32 %25, 0
  br i1 %cmp81, label %do.end85, label %if.end87

do.end85:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.54) #13
  br label %ok

if.end87:                                         ; preds = %if.end80
  %30 = ptrtoint ptr %data.0280 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %data.0280, align 1
  %shr89 = lshr i32 %31, 24
  %trunc = trunc i32 %shr89 to i8
  %32 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end134 [
    i8 -1, label %sw.bb
    i8 0, label %if.end87.do.body110_crit_edge
    i8 1, label %if.end87.do.body110_crit_edge308
    i8 2, label %if.end87.do.body110_crit_edge309
    i8 3, label %if.end87.do.body110_crit_edge310
    i8 6, label %if.end87.do.body110_crit_edge311
    i8 8, label %if.end87.do.body110_crit_edge312
    i8 12, label %if.end87.do.body110_crit_edge313
  ]

if.end87.do.body110_crit_edge313:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end87.do.body110_crit_edge312:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end87.do.body110_crit_edge311:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end87.do.body110_crit_edge310:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end87.do.body110_crit_edge309:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end87.do.body110_crit_edge308:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

if.end87.do.body110_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body110

sw.bb:                                            ; preds = %if.end87
  br i1 %check, label %if.end8.i.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end8.i.i:                                      ; preds = %sw.bb
  %add94 = add i32 %25, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add94, i32 noundef 3520) #12
  %tobool96.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool96.not, label %do.end106, label %if.then97

if.then97:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr98 = getelementptr i8, ptr %data.0280, i32 8
  %33 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr98, i32 %25)
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.57, ptr noundef %name, ptr noundef nonnull %call9.i.i) #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %sw.epilog

do.end106:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.60) #13
  br label %sw.epilog

do.body110:                                       ; preds = %if.end87.do.body110_crit_edge, %if.end87.do.body110_crit_edge308, %if.end87.do.body110_crit_edge309, %if.end87.do.body110_crit_edge310, %if.end87.do.body110_crit_edge311, %if.end87.do.body110_crit_edge312, %if.end87.do.body110_crit_edge313
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8958_dsp2_fw.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8958_dsp2_fw, %if.then116)) #9
          to label %do.end123 [label %if.then116], !srcloc !174

if.then116:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %and120 = and i32 %31, 16777215
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8958_dsp2_fw.__UNIQUE_ID_ddebug321, ptr noundef %39, ptr noundef nonnull @.str.62, ptr noundef %name, i32 noundef %25, i32 noundef %shr89, i32 noundef %and120) #9
  br label %do.end123

do.end123:                                        ; preds = %if.then116, %do.body110
  br i1 %check, label %do.end123.sw.epilog_crit_edge, label %if.end126

do.end123.sw.epilog_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end126:                                        ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %wm8994128 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wm8994128, align 4
  %div262 = and i32 %25, -2
  %add.ptr130 = getelementptr i8, ptr %data.0280, i32 8
  %regmap.i = getelementptr inbounds %struct.wm8994, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %conv.i = and i32 %31, 65535
  %call.i = tail call i32 @regmap_raw_write(ptr noundef %43, i32 noundef %conv.i, ptr noundef %add.ptr130, i32 noundef %div262) #9
  br label %sw.epilog

do.end134:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.64, ptr noundef %name, i32 noundef %shr89) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end134, %if.end126, %do.end123.sw.epilog_crit_edge, %do.end106, %if.then97, %sw.bb.sw.epilog_crit_edge
  %rem = and i32 %25, 3
  %add139 = add i32 %add, %rem
  %add.ptr140 = getelementptr i8, ptr %data.0280, i32 %add139
  %sub142 = sub i32 %len.0282, %add139
  %tobool64.not = icmp eq i32 %sub142, 0
  br i1 %tobool64.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.end60.while.end_crit_edge
  br i1 %check, label %ok.thread, label %do.body145

do.body145:                                       ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8958_dsp2_fw.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8958_dsp2_fw, %if.then157)) #9
          to label %ok.thread272 [label %if.then157], !srcloc !174

if.then157:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8958_dsp2_fw.__UNIQUE_ID_ddebug322, ptr noundef %47, ptr noundef nonnull @.str.67, ptr noundef %name) #9
  br label %ok.thread272

ok.thread272:                                     ; preds = %if.then157, %do.body145
  %48 = ptrtoint ptr %cur_fw to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %fw, ptr %cur_fw, align 4
  br label %if.then170

ok.thread:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.69, ptr noundef %name) #13
  br label %cleanup

ok:                                               ; preds = %do.end85, %do.end78, %do.end69, %do.end44, %do.end34, %do.end24, %if.then8, %do.end
  br i1 %check, label %ok.cleanup_crit_edge, label %ok.if.then170_crit_edge

ok.if.then170_crit_edge:                          ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then170

ok.cleanup_crit_edge:                             ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then170:                                       ; preds = %ok.if.then170_crit_edge, %ok.thread272
  %ret.0274 = phi i32 [ 0, %ok.thread272 ], [ -22, %ok.if.then170_crit_edge ]
  %call171 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2304, i32 noundef 0) #9
  %call172 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 258, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then170, %ok.cleanup_crit_edge, %ok.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0274, %if.then170 ], [ -22, %ok.cleanup_crit_edge ], [ 0, %ok.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm8958_mbc_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_mbc_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
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
  %arrayidx = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8958_mbc_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
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
  %arrayidx = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp5 = icmp sgt i32 %11, 1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.i = icmp eq i32 %1, 0
  br i1 %cmp1.i, label %if.end7.if.end.1.i_crit_edge, label %if.end.i

if.end7.if.end.1.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

if.end.i:                                         ; preds = %if.end7
  %arrayidx.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 0
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.do.body_crit_edge

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx5.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 0
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not.i = icmp eq i32 %17, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false4.i.do.body_crit_edge

lor.lhs.false4.i.do.body_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false4.i
  %arrayidx8.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 0
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not.i = icmp eq i32 %19, 0
  br i1 %tobool9.not.i, label %for.inc.i, label %lor.lhs.false7.i.do.body_crit_edge

lor.lhs.false7.i.do.body_crit_edge:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.i:                                        ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.1.i = icmp eq i32 %1, 1
  br i1 %cmp1.1.i, label %for.inc.i.if.end.2.i_crit_edge, label %for.inc.i.if.end.1.i_crit_edge

for.inc.i.if.end.1.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

for.inc.i.if.end.2.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i

if.end.1.i:                                       ; preds = %for.inc.i.if.end.1.i_crit_edge, %if.end7.if.end.1.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.1.i = icmp eq i32 %21, 0
  br i1 %tobool.not.1.i, label %lor.lhs.false.1.i, label %if.end.1.i.do.body_crit_edge

if.end.1.i.do.body_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.1.i:                                ; preds = %if.end.1.i
  %arrayidx2.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 1
  %22 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.1.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.1.i, label %lor.lhs.false4.1.i, label %lor.lhs.false.1.i.do.body_crit_edge

lor.lhs.false.1.i.do.body_crit_edge:              ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.1.i:                               ; preds = %lor.lhs.false.1.i
  %arrayidx5.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 1
  %24 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool6.not.1.i = icmp eq i32 %25, 0
  br i1 %tobool6.not.1.i, label %lor.lhs.false7.1.i, label %lor.lhs.false4.1.i.do.body_crit_edge

lor.lhs.false4.1.i.do.body_crit_edge:             ; preds = %lor.lhs.false4.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.1.i:                               ; preds = %lor.lhs.false4.1.i
  %arrayidx8.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 1
  %26 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx8.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool9.not.1.i = icmp eq i32 %27, 0
  br i1 %tobool9.not.1.i, label %for.inc.1.i, label %lor.lhs.false7.1.i.do.body_crit_edge

lor.lhs.false7.1.i.do.body_crit_edge:             ; preds = %lor.lhs.false7.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.1.i:                                      ; preds = %lor.lhs.false7.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1.2.i = icmp eq i32 %1, 2
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end16_crit_edge, label %for.inc.1.i.if.end.2.i_crit_edge

for.inc.1.i.if.end.2.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i

for.inc.1.i.if.end16_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end.2.i:                                       ; preds = %for.inc.1.i.if.end.2.i_crit_edge, %for.inc.i.if.end.2.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 2
  %28 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.2.i = icmp eq i32 %29, 0
  br i1 %tobool.not.2.i, label %lor.lhs.false.2.i, label %if.end.2.i.do.body_crit_edge

if.end.2.i.do.body_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.2.i:                                ; preds = %if.end.2.i
  %arrayidx2.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 2
  %30 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool3.not.2.i = icmp eq i32 %31, 0
  br i1 %tobool3.not.2.i, label %lor.lhs.false4.2.i, label %lor.lhs.false.2.i.do.body_crit_edge

lor.lhs.false.2.i.do.body_crit_edge:              ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.2.i:                               ; preds = %lor.lhs.false.2.i
  %arrayidx5.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 2
  %32 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx5.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool6.not.2.i = icmp eq i32 %33, 0
  br i1 %tobool6.not.2.i, label %lor.lhs.false7.2.i, label %lor.lhs.false4.2.i.do.body_crit_edge

lor.lhs.false4.2.i.do.body_crit_edge:             ; preds = %lor.lhs.false4.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.2.i:                               ; preds = %lor.lhs.false4.2.i
  %arrayidx8.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 2
  %34 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx8.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool9.not.2.i = icmp eq i32 %35, 0
  br i1 %tobool9.not.2.i, label %lor.lhs.false7.2.i.if.end16_crit_edge, label %lor.lhs.false7.2.i.do.body_crit_edge

lor.lhs.false7.2.i.do.body_crit_edge:             ; preds = %lor.lhs.false7.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.2.i.if.end16_crit_edge:            ; preds = %lor.lhs.false7.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.body:                                          ; preds = %lor.lhs.false7.2.i.do.body_crit_edge, %lor.lhs.false4.2.i.do.body_crit_edge, %lor.lhs.false.2.i.do.body_crit_edge, %if.end.2.i.do.body_crit_edge, %lor.lhs.false7.1.i.do.body_crit_edge, %lor.lhs.false4.1.i.do.body_crit_edge, %lor.lhs.false.1.i.do.body_crit_edge, %if.end.1.i.do.body_crit_edge, %lor.lhs.false7.i.do.body_crit_edge, %lor.lhs.false4.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %if.end.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8958_mbc_put.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8958_mbc_put, %if.then14)) #9
          to label %cleanup [label %if.then14], !srcloc !174

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8958_mbc_put.__UNIQUE_ID_ddebug326, ptr noundef %37, ptr noundef nonnull @.str.77, i32 noundef %1) #9
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false7.2.i.if.end16_crit_edge, %for.inc.1.i.if.end16_crit_edge
  %arrayidx17 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 24, i32 %1
  %38 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool18.not = icmp eq i32 %39, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %11, ptr %arrayidx, align 4
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %3, i32 noundef %1, i32 noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.then14, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.then14 ], [ -16, %if.end16.cleanup_crit_edge ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm8958_vss_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_vss_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
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
  %arrayidx = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8958_vss_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
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
  %arrayidx = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp5 = icmp sgt i32 %11, 1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %mbc_vss = getelementptr inbounds %struct.wm8994_priv, ptr %7, i32 0, i32 66
  %12 = ptrtoint ptr %mbc_vss to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbc_vss, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.i = icmp eq i32 %1, 0
  br i1 %cmp1.i, label %if.end9.if.end.1.i_crit_edge, label %if.end.i

if.end9.if.end.1.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

if.end.i:                                         ; preds = %if.end9
  %arrayidx.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 0
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.do.body_crit_edge

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx5.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 0
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not.i = icmp eq i32 %19, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false4.i.do.body_crit_edge

lor.lhs.false4.i.do.body_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false4.i
  %arrayidx8.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 0
  %20 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not.i = icmp eq i32 %21, 0
  br i1 %tobool9.not.i, label %for.inc.i, label %lor.lhs.false7.i.do.body_crit_edge

lor.lhs.false7.i.do.body_crit_edge:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.i:                                        ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.1.i = icmp eq i32 %1, 1
  br i1 %cmp1.1.i, label %for.inc.i.if.end.2.i_crit_edge, label %for.inc.i.if.end.1.i_crit_edge

for.inc.i.if.end.1.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

for.inc.i.if.end.2.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i

if.end.1.i:                                       ; preds = %for.inc.i.if.end.1.i_crit_edge, %if.end9.if.end.1.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.1.i = icmp eq i32 %23, 0
  br i1 %tobool.not.1.i, label %lor.lhs.false.1.i, label %if.end.1.i.do.body_crit_edge

if.end.1.i.do.body_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.1.i:                                ; preds = %if.end.1.i
  %arrayidx2.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 1
  %24 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.1.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.1.i, label %lor.lhs.false4.1.i, label %lor.lhs.false.1.i.do.body_crit_edge

lor.lhs.false.1.i.do.body_crit_edge:              ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.1.i:                               ; preds = %lor.lhs.false.1.i
  %arrayidx5.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 1
  %26 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool6.not.1.i = icmp eq i32 %27, 0
  br i1 %tobool6.not.1.i, label %lor.lhs.false7.1.i, label %lor.lhs.false4.1.i.do.body_crit_edge

lor.lhs.false4.1.i.do.body_crit_edge:             ; preds = %lor.lhs.false4.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.1.i:                               ; preds = %lor.lhs.false4.1.i
  %arrayidx8.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 1
  %28 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx8.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not.1.i = icmp eq i32 %29, 0
  br i1 %tobool9.not.1.i, label %for.inc.1.i, label %lor.lhs.false7.1.i.do.body_crit_edge

lor.lhs.false7.1.i.do.body_crit_edge:             ; preds = %lor.lhs.false7.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.1.i:                                      ; preds = %lor.lhs.false7.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1.2.i = icmp eq i32 %1, 2
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end19_crit_edge, label %for.inc.1.i.if.end.2.i_crit_edge

for.inc.1.i.if.end.2.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i

for.inc.1.i.if.end19_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end.2.i:                                       ; preds = %for.inc.1.i.if.end.2.i_crit_edge, %for.inc.i.if.end.2.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.2.i = icmp eq i32 %31, 0
  br i1 %tobool.not.2.i, label %lor.lhs.false.2.i, label %if.end.2.i.do.body_crit_edge

if.end.2.i.do.body_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.2.i:                                ; preds = %if.end.2.i
  %arrayidx2.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 2
  %32 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool3.not.2.i = icmp eq i32 %33, 0
  br i1 %tobool3.not.2.i, label %lor.lhs.false4.2.i, label %lor.lhs.false.2.i.do.body_crit_edge

lor.lhs.false.2.i.do.body_crit_edge:              ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.2.i:                               ; preds = %lor.lhs.false.2.i
  %arrayidx5.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 2
  %34 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx5.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool6.not.2.i = icmp eq i32 %35, 0
  br i1 %tobool6.not.2.i, label %lor.lhs.false7.2.i, label %lor.lhs.false4.2.i.do.body_crit_edge

lor.lhs.false4.2.i.do.body_crit_edge:             ; preds = %lor.lhs.false4.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.2.i:                               ; preds = %lor.lhs.false4.2.i
  %arrayidx8.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 2
  %36 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx8.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool9.not.2.i = icmp eq i32 %37, 0
  br i1 %tobool9.not.2.i, label %lor.lhs.false7.2.i.if.end19_crit_edge, label %lor.lhs.false7.2.i.do.body_crit_edge

lor.lhs.false7.2.i.do.body_crit_edge:             ; preds = %lor.lhs.false7.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.2.i.if.end19_crit_edge:            ; preds = %lor.lhs.false7.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.body:                                          ; preds = %lor.lhs.false7.2.i.do.body_crit_edge, %lor.lhs.false4.2.i.do.body_crit_edge, %lor.lhs.false.2.i.do.body_crit_edge, %if.end.2.i.do.body_crit_edge, %lor.lhs.false7.1.i.do.body_crit_edge, %lor.lhs.false4.1.i.do.body_crit_edge, %lor.lhs.false.1.i.do.body_crit_edge, %if.end.1.i.do.body_crit_edge, %lor.lhs.false7.i.do.body_crit_edge, %lor.lhs.false4.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %if.end.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8958_vss_put.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8958_vss_put, %if.then17)) #9
          to label %cleanup [label %if.then17], !srcloc !174

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8958_vss_put.__UNIQUE_ID_ddebug327, ptr noundef %39, ptr noundef nonnull @.str.77, i32 noundef %1) #9
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false7.2.i.if.end19_crit_edge, %for.inc.1.i.if.end19_crit_edge
  %arrayidx20 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 24, i32 %1
  %40 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool21.not = icmp eq i32 %41, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %11, ptr %arrayidx, align 4
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %3, i32 noundef %1, i32 noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.then17, %do.body, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ -16, %if.then17 ], [ -16, %if.end19.cleanup_crit_edge ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm8958_hpf_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_hpf_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp slt i32 %1, 3
  %rem = srem i32 %1, 3
  %arrayidx = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 %rem
  %rem312 = urem i32 %1, 3
  %arrayidx4 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 %rem312
  %.sink.in = select i1 %cmp, ptr %arrayidx, ptr %arrayidx4
  %8 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.sink = load i32, ptr %.sink.in, align 4
  %9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %9, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8958_hpf_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rem = srem i32 %1, 3
  %arrayidx = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 %rem
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3 = icmp eq i32 %9, %11
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %rem582 = urem i32 %1, 3
  %arrayidx6 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 %rem582
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6, align 4
  %value7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp9 = icmp eq i32 %13, %15
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %value13 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %value13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp15 = icmp sgt i32 %17, 1
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %mbc_vss = getelementptr inbounds %struct.wm8994_priv, ptr %7, i32 0, i32 66
  %18 = ptrtoint ptr %mbc_vss to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbc_vss, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.end17.cleanup_crit_edge, label %if.end19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end17
  %rem20 = srem i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem20)
  %cmp1.i = icmp eq i32 %rem20, 0
  br i1 %cmp1.i, label %if.end19.if.end.1.i_crit_edge, label %if.end.i

if.end19.if.end.1.i_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

if.end.i:                                         ; preds = %if.end19
  %arrayidx.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 0
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 0
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i = icmp eq i32 %23, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.do.body_crit_edge

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx5.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 0
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool6.not.i = icmp eq i32 %25, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false4.i.do.body_crit_edge

lor.lhs.false4.i.do.body_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false4.i
  %arrayidx8.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 0
  %26 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool9.not.i = icmp eq i32 %27, 0
  br i1 %tobool9.not.i, label %for.inc.i, label %lor.lhs.false7.i.do.body_crit_edge

lor.lhs.false7.i.do.body_crit_edge:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.i:                                        ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rem20)
  %cmp1.1.i = icmp eq i32 %rem20, 1
  br i1 %cmp1.1.i, label %for.inc.i.if.end.2.i_crit_edge, label %for.inc.i.if.end.1.i_crit_edge

for.inc.i.if.end.1.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

for.inc.i.if.end.2.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i

if.end.1.i:                                       ; preds = %for.inc.i.if.end.1.i_crit_edge, %if.end19.if.end.1.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1.i = icmp eq i32 %29, 0
  br i1 %tobool.not.1.i, label %lor.lhs.false.1.i, label %if.end.1.i.do.body_crit_edge

if.end.1.i.do.body_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.1.i:                                ; preds = %if.end.1.i
  %arrayidx2.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 1
  %30 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool3.not.1.i = icmp eq i32 %31, 0
  br i1 %tobool3.not.1.i, label %lor.lhs.false4.1.i, label %lor.lhs.false.1.i.do.body_crit_edge

lor.lhs.false.1.i.do.body_crit_edge:              ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.1.i:                               ; preds = %lor.lhs.false.1.i
  %arrayidx5.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 1
  %32 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx5.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool6.not.1.i = icmp eq i32 %33, 0
  br i1 %tobool6.not.1.i, label %lor.lhs.false7.1.i, label %lor.lhs.false4.1.i.do.body_crit_edge

lor.lhs.false4.1.i.do.body_crit_edge:             ; preds = %lor.lhs.false4.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.1.i:                               ; preds = %lor.lhs.false4.1.i
  %arrayidx8.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 1
  %34 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx8.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool9.not.1.i = icmp eq i32 %35, 0
  br i1 %tobool9.not.1.i, label %for.inc.1.i, label %lor.lhs.false7.1.i.do.body_crit_edge

lor.lhs.false7.1.i.do.body_crit_edge:             ; preds = %lor.lhs.false7.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.1.i:                                      ; preds = %lor.lhs.false7.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rem20)
  %cmp1.2.i = icmp eq i32 %rem20, 2
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end30_crit_edge, label %for.inc.1.i.if.end.2.i_crit_edge

for.inc.1.i.if.end.2.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i

for.inc.1.i.if.end30_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end.2.i:                                       ; preds = %for.inc.1.i.if.end.2.i_crit_edge, %for.inc.i.if.end.2.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 2
  %36 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.2.i = icmp eq i32 %37, 0
  br i1 %tobool.not.2.i, label %lor.lhs.false.2.i, label %if.end.2.i.do.body_crit_edge

if.end.2.i.do.body_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.2.i:                                ; preds = %if.end.2.i
  %arrayidx2.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 2
  %38 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool3.not.2.i = icmp eq i32 %39, 0
  br i1 %tobool3.not.2.i, label %lor.lhs.false4.2.i, label %lor.lhs.false.2.i.do.body_crit_edge

lor.lhs.false.2.i.do.body_crit_edge:              ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.2.i:                               ; preds = %lor.lhs.false.2.i
  %arrayidx5.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 2
  %40 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool6.not.2.i = icmp eq i32 %41, 0
  br i1 %tobool6.not.2.i, label %lor.lhs.false7.2.i, label %lor.lhs.false4.2.i.do.body_crit_edge

lor.lhs.false4.2.i.do.body_crit_edge:             ; preds = %lor.lhs.false4.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.2.i:                               ; preds = %lor.lhs.false4.2.i
  %arrayidx8.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 2
  %42 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx8.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool9.not.2.i = icmp eq i32 %43, 0
  br i1 %tobool9.not.2.i, label %lor.lhs.false7.2.i.if.end30_crit_edge, label %lor.lhs.false7.2.i.do.body_crit_edge

lor.lhs.false7.2.i.do.body_crit_edge:             ; preds = %lor.lhs.false7.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.2.i.if.end30_crit_edge:            ; preds = %lor.lhs.false7.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.body:                                          ; preds = %lor.lhs.false7.2.i.do.body_crit_edge, %lor.lhs.false4.2.i.do.body_crit_edge, %lor.lhs.false.2.i.do.body_crit_edge, %if.end.2.i.do.body_crit_edge, %lor.lhs.false7.1.i.do.body_crit_edge, %lor.lhs.false4.1.i.do.body_crit_edge, %lor.lhs.false.1.i.do.body_crit_edge, %if.end.1.i.do.body_crit_edge, %lor.lhs.false7.i.do.body_crit_edge, %lor.lhs.false4.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %if.end.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8958_hpf_put.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8958_hpf_put, %if.then28)) #9
          to label %cleanup [label %if.then28], !srcloc !174

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8958_hpf_put.__UNIQUE_ID_ddebug328, ptr noundef %45, ptr noundef nonnull @.str.77, i32 noundef %1) #9
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false7.2.i.if.end30_crit_edge, %for.inc.1.i.if.end30_crit_edge
  %arrayidx32 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 24, i32 %rem20
  %46 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool33.not = icmp eq i32 %47, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx48 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 %rem20
  %arrayidx42 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 %rem20
  %arrayidx48.sink = select i1 %cmp, ptr %arrayidx42, ptr %arrayidx48
  %48 = ptrtoint ptr %arrayidx48.sink to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %17, ptr %arrayidx48.sink, align 4
  %49 = ptrtoint ptr %value13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %value13, align 8
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %3, i32 noundef %rem20, i32 noundef %50)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end30.cleanup_crit_edge, %if.then28, %do.body, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -19, %if.end17.cleanup_crit_edge ], [ -16, %if.then28 ], [ -16, %if.end30.cleanup_crit_edge ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @wm8958_enh_eq_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8958_enh_eq_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
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
  %arrayidx = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 24, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8958_enh_eq_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
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
  %arrayidx = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 24, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp5 = icmp sgt i32 %11, 1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %enh_eq = getelementptr inbounds %struct.wm8994_priv, ptr %7, i32 0, i32 67
  %12 = ptrtoint ptr %enh_eq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enh_eq, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.i = icmp eq i32 %1, 0
  br i1 %cmp1.i, label %if.end9.if.end.1.i_crit_edge, label %if.end.i

if.end9.if.end.1.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

if.end.i:                                         ; preds = %if.end9
  %arrayidx.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 0
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.do.body_crit_edge

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx5.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 0
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not.i = icmp eq i32 %19, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false4.i.do.body_crit_edge

lor.lhs.false4.i.do.body_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false4.i
  %arrayidx8.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 0
  %20 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.not.i = icmp eq i32 %21, 0
  br i1 %tobool9.not.i, label %for.inc.i, label %lor.lhs.false7.i.do.body_crit_edge

lor.lhs.false7.i.do.body_crit_edge:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.i:                                        ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.1.i = icmp eq i32 %1, 1
  br i1 %cmp1.1.i, label %for.inc.i.if.end.2.i_crit_edge, label %for.inc.i.if.end.1.i_crit_edge

for.inc.i.if.end.1.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

for.inc.i.if.end.2.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i

if.end.1.i:                                       ; preds = %for.inc.i.if.end.1.i_crit_edge, %if.end9.if.end.1.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.1.i = icmp eq i32 %23, 0
  br i1 %tobool.not.1.i, label %lor.lhs.false.1.i, label %if.end.1.i.do.body_crit_edge

if.end.1.i.do.body_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.1.i:                                ; preds = %if.end.1.i
  %arrayidx2.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 1
  %24 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool3.not.1.i = icmp eq i32 %25, 0
  br i1 %tobool3.not.1.i, label %lor.lhs.false4.1.i, label %lor.lhs.false.1.i.do.body_crit_edge

lor.lhs.false.1.i.do.body_crit_edge:              ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.1.i:                               ; preds = %lor.lhs.false.1.i
  %arrayidx5.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 1
  %26 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool6.not.1.i = icmp eq i32 %27, 0
  br i1 %tobool6.not.1.i, label %lor.lhs.false7.1.i, label %lor.lhs.false4.1.i.do.body_crit_edge

lor.lhs.false4.1.i.do.body_crit_edge:             ; preds = %lor.lhs.false4.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.1.i:                               ; preds = %lor.lhs.false4.1.i
  %arrayidx8.1.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 1
  %28 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx8.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not.1.i = icmp eq i32 %29, 0
  br i1 %tobool9.not.1.i, label %for.inc.1.i, label %lor.lhs.false7.1.i.do.body_crit_edge

lor.lhs.false7.1.i.do.body_crit_edge:             ; preds = %lor.lhs.false7.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.1.i:                                      ; preds = %lor.lhs.false7.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1.2.i = icmp eq i32 %1, 2
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end19_crit_edge, label %for.inc.1.i.if.end.2.i_crit_edge

for.inc.1.i.if.end.2.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i

for.inc.1.i.if.end19_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end.2.i:                                       ; preds = %for.inc.1.i.if.end.2.i_crit_edge, %for.inc.i.if.end.2.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.2.i = icmp eq i32 %31, 0
  br i1 %tobool.not.2.i, label %lor.lhs.false.2.i, label %if.end.2.i.do.body_crit_edge

if.end.2.i.do.body_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false.2.i:                                ; preds = %if.end.2.i
  %arrayidx2.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 2
  %32 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool3.not.2.i = icmp eq i32 %33, 0
  br i1 %tobool3.not.2.i, label %lor.lhs.false4.2.i, label %lor.lhs.false.2.i.do.body_crit_edge

lor.lhs.false.2.i.do.body_crit_edge:              ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false4.2.i:                               ; preds = %lor.lhs.false.2.i
  %arrayidx5.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 2
  %34 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx5.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool6.not.2.i = icmp eq i32 %35, 0
  br i1 %tobool6.not.2.i, label %lor.lhs.false7.2.i, label %lor.lhs.false4.2.i.do.body_crit_edge

lor.lhs.false4.2.i.do.body_crit_edge:             ; preds = %lor.lhs.false4.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.2.i:                               ; preds = %lor.lhs.false4.2.i
  %arrayidx8.2.i = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 2
  %36 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx8.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool9.not.2.i = icmp eq i32 %37, 0
  br i1 %tobool9.not.2.i, label %lor.lhs.false7.2.i.if.end19_crit_edge, label %lor.lhs.false7.2.i.do.body_crit_edge

lor.lhs.false7.2.i.do.body_crit_edge:             ; preds = %lor.lhs.false7.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false7.2.i.if.end19_crit_edge:            ; preds = %lor.lhs.false7.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.body:                                          ; preds = %lor.lhs.false7.2.i.do.body_crit_edge, %lor.lhs.false4.2.i.do.body_crit_edge, %lor.lhs.false.2.i.do.body_crit_edge, %if.end.2.i.do.body_crit_edge, %lor.lhs.false7.1.i.do.body_crit_edge, %lor.lhs.false4.1.i.do.body_crit_edge, %lor.lhs.false.1.i.do.body_crit_edge, %if.end.1.i.do.body_crit_edge, %lor.lhs.false7.i.do.body_crit_edge, %lor.lhs.false4.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %if.end.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8958_enh_eq_put.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8958_enh_eq_put, %if.then17)) #9
          to label %cleanup [label %if.then17], !srcloc !174

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8958_enh_eq_put.__UNIQUE_ID_ddebug329, ptr noundef %39, ptr noundef nonnull @.str.77, i32 noundef %1) #9
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false7.2.i.if.end19_crit_edge, %for.inc.1.i.if.end19_crit_edge
  %arrayidx20 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 20, i32 %1
  %40 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool21.not = icmp eq i32 %41, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end19
  %arrayidx22 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 23, i32 %1
  %42 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool23.not = icmp eq i32 %43, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %arrayidx25 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 21, i32 %1
  %44 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool26.not = icmp eq i32 %45, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %lor.lhs.false24.cleanup_crit_edge

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %arrayidx28 = getelementptr %struct.wm8994_priv, ptr %7, i32 0, i32 22, i32 %1
  %46 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool29.not = icmp eq i32 %47, 0
  br i1 %tobool29.not, label %if.end31, label %lor.lhs.false27.cleanup_crit_edge

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %11, ptr %arrayidx, align 4
  %49 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %value, align 8
  tail call fastcc void @wm8958_dsp_apply(ptr noundef %3, i32 noundef %1, i32 noundef %50)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %lor.lhs.false27.cleanup_crit_edge, %lor.lhs.false24.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then17, %do.body, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ -16, %if.then17 ], [ -16, %lor.lhs.false27.cleanup_crit_edge ], [ -16, %lor.lhs.false24.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end19.cleanup_crit_edge ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !153, !154, !156, !158, !160, !162, !164}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 916, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 919, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 922, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 927, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 947, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @wm8958_dsp2_init._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @wm8958_dsp2_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 953, i32 4}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 973, i32 4}
!20 = !{ptr @wm8958_dsp2_init._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @wm8958_dsp2_init._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 979, i32 4}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 1000, i32 4}
!26 = !{ptr @wm8958_dsp2_init._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wm8958_dsp2_init._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 1007, i32 4}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 1028, i32 4}
!32 = !{ptr @wm8958_dsp2_init._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wm8958_dsp2_init._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 344, i32 3}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 357, i32 2}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @wm8958_dsp_apply.__UNIQUE_ID_ddebug323, !37, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 388, i32 3}
!43 = !{ptr @wm8958_dsp_apply.__UNIQUE_ID_ddebug324, !42, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 407, i32 3}
!46 = !{ptr @wm8958_dsp_apply.__UNIQUE_ID_ddebug325, !45, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 299, i32 28}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 57, i32 3}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @wm8958_dsp2_fw._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @wm8958_dsp2_fw._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 62, i32 23}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 64, i32 3}
!58 = !{ptr @wm8958_dsp2_fw._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @wm8958_dsp2_fw._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 73, i32 3}
!62 = !{ptr @wm8958_dsp2_fw._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @wm8958_dsp2_fw._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 78, i32 3}
!66 = !{ptr @wm8958_dsp2_fw._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @wm8958_dsp2_fw._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 83, i32 3}
!70 = !{ptr @wm8958_dsp2_fw._entry.40, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @wm8958_dsp2_fw._entry_ptr.42, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 90, i32 3}
!74 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @wm8958_dsp2_fw._entry.43, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @wm8958_dsp2_fw._entry_ptr.46, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 100, i32 4}
!79 = !{ptr @wm8958_dsp2_fw._entry.47, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @wm8958_dsp2_fw._entry_ptr.49, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 107, i32 4}
!83 = !{ptr @wm8958_dsp2_fw._entry.50, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @wm8958_dsp2_fw._entry_ptr.52, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.54, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 112, i32 4}
!87 = !{ptr @wm8958_dsp2_fw._entry.53, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @wm8958_dsp2_fw._entry_ptr.55, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.57, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 127, i32 5}
!91 = !{ptr @wm8958_dsp2_fw._entry.56, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @wm8958_dsp2_fw._entry_ptr.58, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.60, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 130, i32 5}
!95 = !{ptr @wm8958_dsp2_fw._entry.59, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @wm8958_dsp2_fw._entry_ptr.61, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.62, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 140, i32 4}
!99 = !{ptr @wm8958_dsp2_fw.__UNIQUE_ID_ddebug321, !98, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!100 = !{ptr @.str.64, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 156, i32 4}
!102 = !{ptr @.str.65, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @wm8958_dsp2_fw._entry.63, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @wm8958_dsp2_fw._entry_ptr.66, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.67, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 169, i32 3}
!107 = !{ptr @wm8958_dsp2_fw.__UNIQUE_ID_ddebug322, !106, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!108 = !{ptr @.str.69, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 172, i32 3}
!110 = !{ptr @wm8958_dsp2_fw._entry.68, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @wm8958_dsp2_fw._entry_ptr.70, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.71, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 239, i32 29}
!114 = !{ptr @.str.72, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 200, i32 29}
!116 = !{ptr @.str.73, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 838, i32 1}
!118 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 839, i32 1}
!120 = !{ptr @.str.75, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 840, i32 1}
!122 = !{ptr @wm8958_mbc_snd_controls, !123, !"wm8958_mbc_snd_controls", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 837, i32 38}
!124 = !{ptr @.str.76, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 522, i32 3}
!126 = !{ptr @.str.77, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @wm8958_mbc_put.__UNIQUE_ID_ddebug326, !125, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!128 = !{ptr @.str.78, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 844, i32 1}
!130 = !{ptr @.str.79, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 845, i32 1}
!132 = !{ptr @.str.80, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 846, i32 1}
!134 = !{ptr @.str.81, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 847, i32 1}
!136 = !{ptr @.str.82, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 848, i32 1}
!138 = !{ptr @.str.83, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 849, i32 1}
!140 = !{ptr @.str.84, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 850, i32 1}
!142 = !{ptr @.str.85, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 851, i32 1}
!144 = !{ptr @.str.86, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 852, i32 1}
!146 = !{ptr @wm8958_vss_snd_controls, !147, !"wm8958_vss_snd_controls", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 843, i32 38}
!148 = !{ptr @.str.87, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 648, i32 3}
!150 = !{ptr @wm8958_vss_put.__UNIQUE_ID_ddebug327, !149, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!151 = !{ptr @.str.88, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 719, i32 3}
!153 = !{ptr @wm8958_hpf_put.__UNIQUE_ID_ddebug328, !152, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!154 = !{ptr @.str.89, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 856, i32 1}
!156 = !{ptr @.str.90, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 857, i32 1}
!158 = !{ptr @.str.91, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 858, i32 1}
!160 = !{ptr @wm8958_enh_eq_snd_controls, !161, !"wm8958_enh_eq_snd_controls", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 855, i32 38}
!162 = !{ptr @.str.92, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wm8958-dsp2.c", i32 815, i32 3}
!164 = !{ptr @wm8958_enh_eq_put.__UNIQUE_ID_ddebug329, !163, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{i64 2148980429, i64 2148980434, i64 2148980447, i64 2148980491, i64 2148980525, i64 2148980546}
!175 = !{!"branch_weights", i32 1, i32 2000}
