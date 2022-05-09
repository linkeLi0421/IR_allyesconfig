; ModuleID = '/llk/IR_all_yes/sound/soc/ti/omap-mcbsp-st.c_pt.bc'
source_filename = "../sound/soc/ti/omap-mcbsp-st.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+omap_mcbsp_st_add_controls\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_mcbsp_st_add_controls\09\09\09\09"
module asm "\09.long\09__crc_omap_mcbsp_st_add_controls\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_mcbsp_st_add_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_mcbsp_st_add_controls\22\09\09\09\09\09"
module asm "__kstrtabns_omap_mcbsp_st_add_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.omap_mcbsp = type { ptr, ptr, %struct.spinlock, i32, i32, ptr, i8, i32, i32, i8, i32, i32, i32, ptr, ptr, %struct.omap_mcbsp_reg_cfg, [2 x %struct.snd_dmaengine_dai_dma_data], [2 x i32], i32, i16, i16, ptr, i32, i32, i32, [2 x i32], i32, i32, %struct.pm_qos_request }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.omap_mcbsp_reg_cfg = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.omap_mcbsp_st_data = type { ptr, ptr, i8, i8, [128 x i16], i32, i16, i16 }
%struct.omap_mcbsp_platform_data = type { ptr, i16, i8, i8, i8, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.76, [64 x i8] }
%union.anon.76 = type { %struct.anon.79, [40 x i8] }
%struct.anon.79 = type { i32, i32, [64 x i8], i64, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sidetone\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ick\00", [28 x i8] zeroinitializer }, align 32
@omap_mcbsp_st_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 353, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to get ick, sidetone might be broken\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_mcbsp_st_init\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/ti/omap-mcbsp-st.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_mcbsp_st_init._entry_ptr = internal global ptr @omap_mcbsp_st_init._entry, section ".printk_index", align 4
@sidetone_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sidetone_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@omap_mcbsp_st_add_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 493, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No sidetone data for port\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_mcbsp_st_add_controls\00", [37 x i8] zeroinitializer }, align 32
@omap_mcbsp_st_add_controls._entry_ptr = internal global ptr @omap_mcbsp_st_add_controls._entry, section ".printk_index", align 4
@omap_mcbsp2_st_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @omap_mcbsp_st_get_mode, ptr @omap_mcbsp_st_put_mode, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @omap_mcbsp_st_info_volsw, ptr @omap_mcbsp_get_st_ch0_volume, ptr @omap_mcbsp_set_st_ch0_volume, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @omap_mcbsp_st_info_volsw, ptr @omap_mcbsp_get_st_ch1_volume, ptr @omap_mcbsp_set_st_ch1_volume, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }], [48 x i8] zeroinitializer }, align 32
@omap_mcbsp3_st_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @omap_mcbsp_st_get_mode, ptr @omap_mcbsp_st_put_mode, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @omap_mcbsp_st_info_volsw, ptr @omap_mcbsp_get_st_ch0_volume, ptr @omap_mcbsp_set_st_ch0_volume, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @omap_mcbsp_st_info_volsw, ptr @omap_mcbsp_get_st_ch1_volume, ptr @omap_mcbsp_set_st_ch1_volume, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }], [48 x i8] zeroinitializer }, align 32
@omap_mcbsp_st_add_controls._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 507, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Port %d not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@omap_mcbsp_st_add_controls._entry_ptr.12 = internal global ptr @omap_mcbsp_st_add_controls._entry.9, section ".printk_index", align 4
@__kstrtab_omap_mcbsp_st_add_controls = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_mcbsp_st_add_controls = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_mcbsp_st_add_controls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_mcbsp_st_add_controls to i32), ptr @__kstrtab_omap_mcbsp_st_add_controls, ptr @__kstrtabns_omap_mcbsp_st_add_controls }, section "___ksymtab_gpl+omap_mcbsp_st_add_controls", align 4
@omap_mcbsp_st_fir_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 140, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"McBSP FIR load error!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_mcbsp_st_fir_write\00", [40 x i8] zeroinitializer }, align 32
@omap_mcbsp_st_fir_write._entry_ptr = internal global ptr @omap_mcbsp_st_fir_write._entry, section ".printk_index", align 4
@sidetone_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_st_taps, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_st_taps = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @st_taps_show, ptr @st_taps_store }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st_taps\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c", %d\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d%n\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"McBSP2 Sidetone Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"McBSP2 Sidetone Channel 0 Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -32768, i32 32767, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"McBSP2 Sidetone Channel 1 Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -32768, i32 32767, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"McBSP3 Sidetone Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"McBSP3 Sidetone Channel 0 Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -32768, i32 32767, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"McBSP3 Sidetone Channel 1 Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -32768, i32 32767, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 342, i32 59 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 350, i32 44 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 352, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"sidetone_attr_group\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 300, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 493, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"omap_mcbsp2_st_controls\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [24 x i8] c"omap_mcbsp3_st_controls\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 507, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 140, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"sidetone_attrs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 295, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"dev_attr_st_taps\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 293, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 247, i32 40 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 247, i32 49 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 269, i32 24 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 484, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [32 x i8] c"../sound/soc/ti/omap-mcbsp-st.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 485, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @__ksymtab_omap_mcbsp_st_add_controls, ptr @omap_mcbsp_st_add_controls._entry, ptr @omap_mcbsp_st_add_controls._entry.9, ptr @omap_mcbsp_st_add_controls._entry_ptr, ptr @omap_mcbsp_st_add_controls._entry_ptr.12, ptr @omap_mcbsp_st_fir_write._entry, ptr @omap_mcbsp_st_fir_write._entry_ptr, ptr @omap_mcbsp_st_init._entry, ptr @omap_mcbsp_st_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sidetone_attr_group, ptr @.str.7, ptr @.str.8, ptr @omap_mcbsp2_st_controls, ptr @omap_mcbsp3_st_controls, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @sidetone_attrs, ptr @dev_attr_st_taps, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.compoundliteral, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_st_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_st_add_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp2_st_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp3_st_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_st_add_controls._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_mcbsp_st_fir_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_st_taps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_mcbsp_st_start(ptr nocapture noundef readonly %mcbsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %st_data1 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 14
  %0 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st_data1, align 4
  %enabled = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %running = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %running, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %taps = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 44
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !64
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %conv1.i = and i32 %9, 65533
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #7
  %11 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %st_data1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 %10) #7, !srcloc !65
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %or.i = or i32 %conv1.i, 2
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %16 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %st_data1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %15) #7, !srcloc !65
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %indvars.iv.i = phi i32 [ 0, %if.end.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %taps, i32 %indvars.iv.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  %conv7.i = sext i16 %21 to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv7.i) #7
  %23 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %st_data1, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %26, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 %22) #7, !srcloc !65
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %27 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %st_data1, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %30, i32 44
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i) #7, !srcloc !64
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %and1154.i = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1154.i)
  %tobool12.not55.i = icmp eq i32 %and1154.i, 0
  br i1 %tobool12.not55.i, label %for.end.i.while.body.i_crit_edge, label %for.end.i.while.end.i_crit_edge

for.end.i.while.end.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  br label %while.body.i

land.rhs.i:                                       ; preds = %while.body.i
  %cmp15.i = icmp ult i16 %i.157.i22, 998
  br i1 %cmp15.i, label %land.rhs.i.while.body.i_crit_edge, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %for.end.i.while.body.i_crit_edge
  %i.157.i22 = phi i16 [ %inc13.i, %land.rhs.i.while.body.i_crit_edge ], [ 0, %for.end.i.while.body.i_crit_edge ]
  %inc13.i = add nuw nsw i16 %i.157.i22, 1
  %33 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %st_data1, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %36, i32 44
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #7, !srcloc !64
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  %and11.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %land.rhs.i, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %for.end.i.while.end.i_crit_edge
  %val.0.in.lcssa.i = phi i32 [ %32, %for.end.i.while.end.i_crit_edge ], [ %38, %land.rhs.i.while.end.i_crit_edge ], [ %38, %while.body.i.while.end.i_crit_edge ]
  %i.2.i = phi i16 [ 0, %for.end.i.while.end.i_crit_edge ], [ %inc13.i, %while.body.i.while.end.i_crit_edge ], [ 1000, %land.rhs.i.while.end.i_crit_edge ]
  %and20.i = and i32 %val.0.in.lcssa.i, 65533
  %39 = tail call i32 @llvm.bswap.i32(i32 %and20.i) #7
  %40 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %st_data1, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %43, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %39) #7, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %i.2.i)
  %cmp22.i = icmp eq i16 %i.2.i, 1000
  br i1 %cmp22.i, label %do.end.i, label %while.end.i.omap_mcbsp_st_fir_write.exit_crit_edge

while.end.i.omap_mcbsp_st_fir_write.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_mcbsp_st_fir_write.exit

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %mcbsp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mcbsp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.13) #10
  br label %omap_mcbsp_st_fir_write.exit

omap_mcbsp_st_fir_write.exit:                     ; preds = %do.end.i, %while.end.i.omap_mcbsp_st_fir_write.exit_crit_edge
  %46 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %st_data1, align 4
  %ch0gain.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %ch0gain.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ch0gain.i, align 4
  %conv6.i = zext i16 %49 to i32
  %ch1gain.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %47, i32 0, i32 7
  %50 = ptrtoint ptr %ch1gain.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ch1gain.i, align 2
  %conv27.i = zext i16 %51 to i32
  %shl.i = shl nuw i32 %conv27.i, 16
  %or.i14 = or i32 %shl.i, %conv6.i
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i14) #7
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %47, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %54, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 %52) #7, !srcloc !65
  %free = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 9
  %55 = ptrtoint ptr %free to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %free, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool3.not = icmp eq i8 %56, 0
  br i1 %tobool3.not, label %if.then4, label %omap_mcbsp_st_fir_write.exit.if.end6_crit_edge

omap_mcbsp_st_fir_write.exit.if.end6_crit_edge:   ; preds = %omap_mcbsp_st_fir_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %omap_mcbsp_st_fir_write.exit
  %pdata.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %57 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdata.i, align 4
  %force_ick_on.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %force_ick_on.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %force_ick_on.i, align 4
  %tobool.not.i16 = icmp eq ptr %60, null
  br i1 %tobool.not.i16, label %if.then4.if.end.i20_crit_edge, label %if.then.i17

if.then4.if.end.i20_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i20

if.then.i17:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %st_data1, align 4
  %mcbsp_iclk.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %mcbsp_iclk.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mcbsp_iclk.i, align 4
  %call.i = tail call i32 %60(ptr noundef %64, i1 noundef zeroext true) #7
  br label %if.end.i20

if.end.i20:                                       ; preds = %if.then.i17, %if.then4.if.end.i20_crit_edge
  %65 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %st_data1, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %68, i32 16
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #7, !srcloc !64
  %70 = and i32 %69, -16777217
  %71 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %st_data1, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %74, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %70) #7, !srcloc !65
  %io_base.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %75 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io_base.i.i, align 4
  %77 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdata.i, align 4
  %reg_step.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %reg_step.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %reg_step.i.i, align 1
  %conv1.i.i = zext i8 %80 to i32
  %mul.i.i = mul nuw nsw i32 %conv1.i.i, 47
  %add.ptr.i19.i = getelementptr i8, ptr %76, i32 %mul.i.i
  %reg_size.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %78, i32 0, i32 2
  %81 = ptrtoint ptr %reg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %reg_size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp.i.i = icmp eq i8 %82, 2
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.true8.i.i

cond.true.i.i:                                    ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19.i) #7, !srcloc !66
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #7
  %conv5.i.i = zext i16 %84 to i32
  br label %omap_mcbsp_read.exit.i

cond.true8.i.i:                                   ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #7, !srcloc !64
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #7
  br label %omap_mcbsp_read.exit.i

omap_mcbsp_read.exit.i:                           ; preds = %cond.true8.i.i, %cond.true.i.i
  %retval.0.i.i = phi i32 [ %conv5.i.i, %cond.true.i.i ], [ %86, %cond.true8.i.i ]
  %or.i21 = or i32 %retval.0.i.i, 1024
  %87 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %io_base.i.i, align 4
  %89 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdata.i, align 4
  %reg_step.i22.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %reg_step.i22.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %reg_step.i22.i, align 1
  %conv1.i23.i = zext i8 %92 to i32
  %mul.i24.i = mul nuw nsw i32 %conv1.i23.i, 47
  %add.ptr.i25.i = getelementptr i8, ptr %88, i32 %mul.i24.i
  %reg_size.i26.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %90, i32 0, i32 2
  %93 = ptrtoint ptr %reg_size.i26.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %reg_size.i26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp.i27.i = icmp eq i8 %94, 2
  br i1 %cmp.i27.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %omap_mcbsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i28.i = trunc i32 %or.i21 to i16
  %reg_cache.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %95 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_cache.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %96, i32 47
  %97 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv5.i28.i, ptr %arrayidx.i.i, align 2
  %98 = tail call i16 @llvm.bswap.i16(i16 %conv5.i28.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i25.i, i16 %98) #7, !srcloc !67
  br label %omap_mcbsp_st_on.exit

if.else.i.i:                                      ; preds = %omap_mcbsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %reg_cache7.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %99 = ptrtoint ptr %reg_cache7.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg_cache7.i.i, align 4
  %arrayidx9.i.i = getelementptr i32, ptr %100, i32 47
  %101 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or.i21, ptr %arrayidx9.i.i, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %or.i21) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %102) #7, !srcloc !65
  br label %omap_mcbsp_st_on.exit

omap_mcbsp_st_on.exit:                            ; preds = %if.else.i.i, %if.then.i.i
  %103 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %st_data1, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %106, i32 44
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #7, !srcloc !64
  %108 = or i32 %107, 16777216
  %109 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %st_data1, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %112, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %108) #7, !srcloc !65
  %113 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %running, align 4
  br label %if.end6

if.end6:                                          ; preds = %omap_mcbsp_st_on.exit, %omap_mcbsp_st_fir_write.exit.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_mcbsp_st_stop(ptr nocapture noundef readonly %mcbsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %st_data1 = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 14
  %0 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st_data1, align 4
  %running = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %running, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %free = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 9
  %4 = ptrtoint ptr %free to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %free, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.then
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 44
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !64
  %9 = and i32 %8, -16777217
  %10 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %st_data1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %9) #7, !srcloc !65
  %io_base.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 5
  %14 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i.i, align 4
  %pdata.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 13
  %16 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata.i.i, align 4
  %reg_step.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %reg_step.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg_step.i.i, align 1
  %conv1.i.i = zext i8 %19 to i32
  %mul.i.i = mul nuw nsw i32 %conv1.i.i, 47
  %add.ptr.i19.i = getelementptr i8, ptr %15, i32 %mul.i.i
  %reg_size.i.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %reg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg_size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp.i.i = icmp eq i8 %21, 2
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.true8.i.i

cond.true.i.i:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19.i) #7, !srcloc !66
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #7
  %conv5.i.i = zext i16 %23 to i32
  br label %omap_mcbsp_read.exit.i

cond.true8.i.i:                                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #7, !srcloc !64
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  br label %omap_mcbsp_read.exit.i

omap_mcbsp_read.exit.i:                           ; preds = %cond.true8.i.i, %cond.true.i.i
  %retval.0.i.i = phi i32 [ %conv5.i.i, %cond.true.i.i ], [ %25, %cond.true8.i.i ]
  %and2.i = and i32 %retval.0.i.i, -1025
  %26 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i.i, align 4
  %28 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata.i.i, align 4
  %reg_step.i22.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %reg_step.i22.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg_step.i22.i, align 1
  %conv1.i23.i = zext i8 %31 to i32
  %mul.i24.i = mul nuw nsw i32 %conv1.i23.i, 47
  %add.ptr.i25.i = getelementptr i8, ptr %27, i32 %mul.i24.i
  %reg_size.i26.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %reg_size.i26.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %reg_size.i26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp.i27.i = icmp eq i8 %33, 2
  br i1 %cmp.i27.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %omap_mcbsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i28.i = trunc i32 %and2.i to i16
  %reg_cache.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %34 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_cache.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %35, i32 47
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv5.i28.i, ptr %arrayidx.i.i, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %conv5.i28.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i25.i, i16 %37) #7, !srcloc !67
  br label %omap_mcbsp_write.exit.i

if.else.i.i:                                      ; preds = %omap_mcbsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %reg_cache7.i.i = getelementptr inbounds %struct.omap_mcbsp, ptr %mcbsp, i32 0, i32 21
  %38 = ptrtoint ptr %reg_cache7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_cache7.i.i, align 4
  %arrayidx9.i.i = getelementptr i32, ptr %39, i32 47
  %40 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and2.i, ptr %arrayidx9.i.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %41) #7, !srcloc !65
  br label %omap_mcbsp_write.exit.i

omap_mcbsp_write.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %42 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %st_data1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %45, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #7, !srcloc !64
  %47 = or i32 %46, 16777216
  %48 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %st_data1, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %51, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %47) #7, !srcloc !65
  %52 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdata.i.i, align 4
  %force_ick_on.i = getelementptr inbounds %struct.omap_mcbsp_platform_data, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %force_ick_on.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %force_ick_on.i, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %omap_mcbsp_write.exit.i.omap_mcbsp_st_off.exit_crit_edge, label %if.then.i

omap_mcbsp_write.exit.i.omap_mcbsp_st_off.exit_crit_edge: ; preds = %omap_mcbsp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_mcbsp_st_off.exit

if.then.i:                                        ; preds = %omap_mcbsp_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %st_data1, align 4
  %mcbsp_iclk.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %mcbsp_iclk.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mcbsp_iclk.i, align 4
  %call6.i = tail call i32 %55(ptr noundef %59, i1 noundef zeroext false) #7
  br label %omap_mcbsp_st_off.exit

omap_mcbsp_st_off.exit:                           ; preds = %if.then.i, %omap_mcbsp_write.exit.i.omap_mcbsp_st_off.exit_crit_edge
  %60 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %running, align 4
  br label %if.end5

if.end5:                                          ; preds = %omap_mcbsp_st_off.exit, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_mcbsp_st_init(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 276, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call7 = tail call ptr @clk_get(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  %mcbsp_iclk = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %mcbsp_iclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %mcbsp_iclk, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.2) #10
  %9 = ptrtoint ptr %mcbsp_iclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %mcbsp_iclk, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end5.if.end13_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %13
  %add.i = add i32 %sub.i, %15
  %call16 = tail call ptr @devm_ioremap(ptr noundef %11, i32 noundef %13, i32 noundef %add.i) #7
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call16, ptr %call.i, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.end13.cleanup_crit_edge, label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call22 = tail call i32 @sysfs_create_group(ptr noundef %18, ptr noundef nonnull @sidetone_attr_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %st_data26 = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %st_data26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %st_data26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end20.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_mcbsp_st_cleanup(ptr nocapture noundef readonly %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %st_data = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %st_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @sysfs_remove_group(ptr noundef %5, ptr noundef nonnull @sidetone_attr_group) #7
  %6 = ptrtoint ptr %st_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st_data, align 4
  %mcbsp_iclk = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mcbsp_iclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mcbsp_iclk, align 4
  tail call void @clk_put(ptr noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_mcbsp_st_add_controls(ptr nocapture noundef readonly %rtd, i32 noundef %port_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %0 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dais, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %st_data = getelementptr inbounds %struct.omap_mcbsp, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %st_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %st_data, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = zext i32 %port_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %port_id, label %do.end6 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %3, ptr noundef nonnull @omap_mcbsp2_st_controls, i32 noundef 3) #7
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %3, ptr noundef nonnull @omap_mcbsp3_st_controls, i32 noundef 3) #7
  br label %cleanup

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.10, i32 noundef %port_id) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %sw.bb2, %sw.bb, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_taps_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %st_data1 = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st_data1, align 4
  %lock = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %nr_taps = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %nr_taps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_taps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21 = icmp sgt i32 %5, 0
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %status.022 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %status.022
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.023)
  %tobool.not = icmp eq i32 %i.023, 0
  %cond = select i1 %tobool.not, ptr @.str.17, ptr @.str.16
  %arrayidx2 = getelementptr %struct.omap_mcbsp_st_data, ptr %3, i32 0, i32 4, i32 %i.023
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx2, align 2
  %conv = sext i16 %7 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx, ptr noundef nonnull %cond, i32 noundef %conv)
  %add = add i32 %call3, %status.022
  %inc = add nuw nsw i32 %i.023, 1
  %8 = ptrtoint ptr %nr_taps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_taps, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %cmp21, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr i8, ptr %buf, i32 %add
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 2560, ptr %arrayidx5, align 1
  %add7 = add i32 %add, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %status.1 = phi i32 [ %add7, %if.then ], [ %add, %for.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_taps_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %st_data1 = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %st_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st_data1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %tmp, align 4, !annotation !68
  %lock = getelementptr inbounds %struct.omap_mcbsp, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %taps = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %3, i32 0, i32 4
  %6 = call ptr @memset(ptr %taps, i32 0, i32 256)
  %nr_taps = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %nr_taps to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %nr_taps, align 4
  %call228 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef nonnull %val, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call228)
  %8 = icmp slt i32 %call228, 1
  br i1 %8, label %entry.out_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body:                                          ; preds = %if.end8
  %incdec.ptr = getelementptr i8, ptr %add.ptr, i32 1
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %incdec.ptr, ptr noundef nonnull @.str.19, ptr noundef nonnull %val, ptr noundef nonnull %tmp)
  %9 = icmp slt i32 %call2, 1
  br i1 %9, label %do.body.out_crit_edge, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %do.body.if.end_crit_edge, %entry.if.end_crit_edge
  %i.030 = phi i32 [ %inc, %do.body.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %buf.addr.029 = phi ptr [ %incdec.ptr, %do.body.if.end_crit_edge ], [ %buf, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = add i32 %11, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %12)
  %13 = icmp ult i32 %12, -65536
  br i1 %13, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %if.end
  %conv = trunc i32 %11 to i16
  %inc = add i32 %i.030, 1
  %arrayidx = getelementptr %struct.omap_mcbsp_st_data, ptr %3, i32 0, i32 4, i32 %i.030
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %arrayidx, align 2
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp, align 4
  %add.ptr = getelementptr i8, ptr %buf.addr.029, i32 %16
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %18)
  %cmp11.not = icmp eq i8 %18, 44
  br i1 %cmp11.not, label %do.body, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %nr_taps to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc, ptr %nr_taps, align 4
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %do.body.out_crit_edge, %entry.out_crit_edge
  %size.addr.0 = phi i32 [ %size, %do.end ], [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -22, %do.body.out_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %size.addr.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_mcbsp_st_get_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %st_data1.i = getelementptr inbounds %struct.omap_mcbsp, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %st_data1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st_data1.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.omap_mcbsp_st_is_enabled.exit_crit_edge, label %if.end.i

entry.omap_mcbsp_st_is_enabled.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_mcbsp_st_is_enabled.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %enabled.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled.i, align 1, !range !63
  %10 = zext i8 %9 to i32
  br label %omap_mcbsp_st_is_enabled.exit

omap_mcbsp_st_is_enabled.exit:                    ; preds = %if.end.i, %entry.omap_mcbsp_st_is_enabled.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.end.i ], [ -19, %entry.omap_mcbsp_st_is_enabled.exit_crit_edge ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_st_put_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %st_data1.i = getelementptr inbounds %struct.omap_mcbsp, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %st_data1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st_data1.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %omap_mcbsp_st_is_enabled.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

omap_mcbsp_st_is_enabled.exit:                    ; preds = %entry
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value1, align 8
  %enabled.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled.i, align 1, !range !63
  %12 = trunc i32 %9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp = icmp eq i8 %11, %12
  br i1 %cmp, label %omap_mcbsp_st_is_enabled.exit.cleanup_crit_edge, label %if.end.thread

omap_mcbsp_st_is_enabled.exit.cleanup_crit_edge:  ; preds = %omap_mcbsp_st_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.thread:                                    ; preds = %omap_mcbsp_st_is_enabled.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not27 = icmp eq i8 %12, 0
  %lock.i20 = getelementptr inbounds %struct.omap_mcbsp, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i20) #7
  br i1 %tobool.not27, label %if.end.i23, label %if.end.i17

if.end.i17:                                       ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %enabled.i, align 1
  %call.i = tail call i32 @omap_mcbsp_st_start(ptr noundef %5) #7
  br label %cleanup.sink.split

if.end.i23:                                       ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %call.i21 = tail call i32 @omap_mcbsp_st_stop(ptr noundef %5) #7
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled.i, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i23, %if.end.i17
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i20) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %omap_mcbsp_st_is_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %omap_mcbsp_st_is_enabled.exit.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_mcbsp_st_info_volsw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %max1 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %max1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %value, align 8
  %max5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %max5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %4, ptr %max5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_get_st_ch0_volume(ptr nocapture noundef readonly %kc, ptr nocapture noundef writeonly %uc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %st_data1.i = getelementptr inbounds %struct.omap_mcbsp, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %st_data1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st_data1.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i = getelementptr inbounds %struct.omap_mcbsp, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #7
  %ch0gain.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ch0gain.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %storemerge.i = load i16, ptr %ch0gain.i, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #7
  %conv = sext i16 %storemerge.i to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_set_st_ch0_volume(ptr nocapture noundef readonly %kc, ptr nocapture noundef readonly %uc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp = icmp slt i32 %12, %10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max1 = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %max1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp3 = icmp sgt i32 %12, %14
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %st_data1.i = getelementptr inbounds %struct.omap_mcbsp, ptr %5, i32 0, i32 14
  %15 = ptrtoint ptr %st_data1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %st_data1.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %conv = trunc i32 %12 to i16
  %lock.i = getelementptr inbounds %struct.omap_mcbsp, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #7
  %ch0gain.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %ch0gain.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %ch0gain.i, align 4
  %enabled.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %16, i32 0, i32 3
  %18 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled.i, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not.i = icmp eq i8 %19, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then9.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %st_data1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %st_data1.i, align 4
  %ch0gain.i.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %ch0gain.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ch0gain.i.i, align 4
  %conv6.i.i = zext i16 %23 to i32
  %ch1gain.i.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %21, i32 0, i32 7
  %24 = ptrtoint ptr %ch1gain.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ch1gain.i.i, align 2
  %conv27.i.i = zext i16 %25 to i32
  %shl.i.i = shl nuw i32 %conv27.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv6.i.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %21, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %26) #7, !srcloc !65
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end.i.if.end10.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end10.i ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_get_st_ch1_volume(ptr nocapture noundef readonly %kc, ptr nocapture noundef writeonly %uc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %st_data1.i = getelementptr inbounds %struct.omap_mcbsp, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %st_data1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st_data1.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i = getelementptr inbounds %struct.omap_mcbsp, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #7
  %ch1gain.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %ch1gain.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %storemerge.i = load i16, ptr %ch1gain.i, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #7
  %conv = sext i16 %storemerge.i to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_mcbsp_set_st_ch1_volume(ptr nocapture noundef readonly %kc, ptr nocapture noundef readonly %uc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp = icmp slt i32 %12, %10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max1 = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %max1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp3 = icmp sgt i32 %12, %14
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %st_data1.i = getelementptr inbounds %struct.omap_mcbsp, ptr %5, i32 0, i32 14
  %15 = ptrtoint ptr %st_data1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %st_data1.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %conv = trunc i32 %12 to i16
  %lock.i = getelementptr inbounds %struct.omap_mcbsp, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #7
  %ch1gain.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %ch1gain.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %ch1gain.i, align 2
  %enabled.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %16, i32 0, i32 3
  %18 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled.i, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not.i = icmp eq i8 %19, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then9.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %st_data1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %st_data1.i, align 4
  %ch0gain.i.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %ch0gain.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ch0gain.i.i, align 4
  %conv6.i.i = zext i16 %23 to i32
  %ch1gain.i.i = getelementptr inbounds %struct.omap_mcbsp_st_data, ptr %21, i32 0, i32 7
  %24 = ptrtoint ptr %ch1gain.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ch1gain.i.i, align 2
  %conv27.i.i = zext i16 %25 to i32
  %shl.i.i = shl nuw i32 %conv27.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv6.i.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %21, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %26) #7, !srcloc !65
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end.i.if.end10.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end10.i ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 342, i32 59}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 350, i32 44}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 352, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @omap_mcbsp_st_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @omap_mcbsp_st_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 493, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @omap_mcbsp_st_add_controls._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @omap_mcbsp_st_add_controls._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 507, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @omap_mcbsp_st_add_controls._entry.9, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @omap_mcbsp_st_add_controls._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_omap_mcbsp_st_add_controls, !23, !"__ksymtab_omap_mcbsp_st_add_controls", i1 false, i1 false}
!23 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 513, i32 1}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 140, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @omap_mcbsp_st_fir_write._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @omap_mcbsp_st_fir_write._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @sidetone_attr_group, !30, !"sidetone_attr_group", i1 false, i1 false}
!30 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 300, i32 37}
!31 = !{ptr @sidetone_attrs, !32, !"sidetone_attrs", i1 false, i1 false}
!32 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 295, i32 32}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 293, i32 8}
!35 = !{ptr @dev_attr_st_taps, !34, !"dev_attr_st_taps", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 247, i32 40}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 247, i32 49}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 250, i32 35}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 269, i32 24}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 484, i32 1}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @omap_mcbsp2_st_controls, !45, !"omap_mcbsp2_st_controls", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/ti/omap-mcbsp-st.c", i32 485, i32 1}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @omap_mcbsp3_st_controls, !50, !"omap_mcbsp3_st_controls", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i8 0, i8 2}
!64 = !{i64 4883789}
!65 = !{i64 4883371}
!66 = !{i64 4882951}
!67 = !{i64 4882751}
!68 = !{!"auto-init"}
