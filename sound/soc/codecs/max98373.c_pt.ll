; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/max98373.c_pt.bc'
source_filename = "../sound/soc/codecs/max98373.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+max98373_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_max98373_reset\09\09\09\09"
module asm "\09.long\09__crc_max98373_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max98373_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22max98373_reset\22\09\09\09\09\09"
module asm "__kstrtabns_max98373_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+soc_codec_dev_max98373\22, \22a\22\09"
module asm "\09.weak\09__crc_soc_codec_dev_max98373\09\09\09\09"
module asm "\09.long\09__crc_soc_codec_dev_max98373\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_soc_codec_dev_max98373:\09\09\09\09\09"
module asm "\09.asciz \09\22soc_codec_dev_max98373\22\09\09\09\09\09"
module asm "__kstrtabns_soc_codec_dev_max98373:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+soc_codec_dev_max98373_sdw\22, \22a\22\09"
module asm "\09.weak\09__crc_soc_codec_dev_max98373_sdw\09\09\09\09"
module asm "\09.long\09__crc_soc_codec_dev_max98373_sdw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_soc_codec_dev_max98373_sdw:\09\09\09\09\09"
module asm "\09.asciz \09\22soc_codec_dev_max98373_sdw\22\09\09\09\09\09"
module asm "__kstrtabns_soc_codec_dev_max98373_sdw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+max98373_slot_config\22, \22a\22\09"
module asm "\09.weak\09__crc_max98373_slot_config\09\09\09\09"
module asm "\09.long\09__crc_max98373_slot_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max98373_slot_config:\09\09\09\09\09"
module asm "\09.asciz \09\22max98373_slot_config\22\09\09\09\09\09"
module asm "__kstrtabns_max98373_slot_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.max98373_priv = type { ptr, i32, i32, i32, i32, i8, i32, i8, ptr, i32, ptr, i8, i8, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.90, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.90 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.max98373_cache = type { i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.85, [128 x i8] }
%union.anon.85 = type { %union.anon.87 }
%union.anon.87 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }

@max98373_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 334, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Reset command failed. (ret:%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max98373_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/max98373.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max98373_reset._entry_ptr = internal global ptr @max98373_reset._entry, section ".printk_index", align 4
@max98373_reset._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 343, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Reset completed (retry:%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max98373_reset._entry_ptr.8 = internal global ptr @max98373_reset._entry.5, section ".printk_index", align 4
@max98373_reset._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Reset failed. (ret:%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@max98373_reset._entry_ptr.11 = internal global ptr @max98373_reset._entry.9, section ".printk_index", align 4
@__kstrtab_max98373_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_max98373_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_max98373_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max98373_reset to i32), ptr @__kstrtab_max98373_reset, ptr @__kstrtabns_max98373_reset }, section "___ksymtab_gpl+max98373_reset", align 4
@max98373_snd_controls = internal constant { [59 x %struct.snd_kcontrol_new], [720 x i8] } { [59 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_spkgain_max_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @max98373_out_volt_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_dht_spkgain_min_tlv }, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_dht_rotation_point_tlv }, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_dht_step_size_tlv }, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_dht_step_size_tlv }, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @max98373_dht_attack_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @max98373_dht_release_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @max98373_feedback_get, ptr null, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @max98373_feedback_get, ptr null, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @max98373_adc_samplerate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @max98373_feedback_get, ptr null, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_bde_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_bde_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_bde_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_bde_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_bde_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_bde_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_bde_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_bde_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_limiter_thresh_tlv }, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_limiter_thresh_tlv }, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_limiter_thresh_tlv }, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_limiter_thresh_tlv }, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @max98373_limiter_thresh_tlv }, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @max98373_limiter_attack_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @max98373_limiter_release_rate_enum to i32) }], [720 x i8] zeroinitializer }, align 32
@max98373_audio_map = internal constant { [10 x %struct.snd_soc_dapm_route], [152 x i8] } { [10 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.197, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.198, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.199, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr @.str.200, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr @.str.200, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.200, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }], [152 x i8] zeroinitializer }, align 32
@soc_codec_dev_max98373 = dso_local constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @max98373_snd_controls, i32 59, ptr @max98373_dapm_widgets, i32 11, ptr @max98373_audio_map, i32 10, ptr @max98373_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_soc_codec_dev_max98373 = external dso_local constant [0 x i8], align 1
@__kstrtabns_soc_codec_dev_max98373 = external dso_local constant [0 x i8], align 1
@__ksymtab_soc_codec_dev_max98373 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @soc_codec_dev_max98373 to i32), ptr @__kstrtab_soc_codec_dev_max98373, ptr @__kstrtabns_soc_codec_dev_max98373 }, section "___ksymtab_gpl+soc_codec_dev_max98373", align 4
@soc_codec_dev_max98373_sdw = dso_local constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @max98373_snd_controls, i32 59, ptr @max98373_dapm_widgets, i32 11, ptr @max98373_audio_map, i32 10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_soc_codec_dev_max98373_sdw = external dso_local constant [0 x i8], align 1
@__kstrtabns_soc_codec_dev_max98373_sdw = external dso_local constant [0 x i8], align 1
@__ksymtab_soc_codec_dev_max98373_sdw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @soc_codec_dev_max98373_sdw to i32), ptr @__kstrtab_soc_codec_dev_max98373_sdw, ptr @__kstrtabns_soc_codec_dev_max98373_sdw }, section "___ksymtab_gpl+soc_codec_dev_max98373_sdw", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maxim,vmon-slot-no\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maxim,imon-slot-no\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"maxim,reset-gpio\00", [47 x i8] zeroinitializer }, align 32
@max98373_slot_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 477, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Looking up %s property in node %s failed %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max98373_slot_config\00", [43 x i8] zeroinitializer }, align 32
@max98373_slot_config._entry_ptr = internal global ptr @max98373_slot_config._entry, section ".printk_index", align 4
@max98373_slot_config.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_max98373\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"maxim,reset-gpio=%d\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"maxim,spkfb-slot-no\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_max98373_slot_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_max98373_slot_config = external dso_local constant [0 x i8], align 1
@__ksymtab_max98373_slot_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max98373_slot_config to i32), ptr @__kstrtab_max98373_slot_config, ptr @__kstrtabns_max98373_slot_config }, section "___ksymtab_gpl+max98373_slot_config", align 4
@__UNIQUE_ID_description295 = internal constant [54 x i8] c"snd_soc_max98373.description=ALSA SoC MAX98373 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [65 x i8] c"snd_soc_max98373.author=Ryan Lee <ryans.lee@maximintegrated.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [56 x i8] c"snd_soc_max98373.file=sound/soc/codecs/snd-soc-max98373\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [29 x i8] c"snd_soc_max98373.license=GPL\00", section ".modinfo", align 1
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Digital Vol Sel Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8255, i32 8255, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Volume Location Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8255, i32 8255, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ramp Up Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8255, i32 8255, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Ramp Down Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8255, i32 8255, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"OVC Autorestart Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8446, i32 8446, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"THERM Autorestart Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8446, i32 8446, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CMON Autorestart Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8446, i32 8446, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CLK Monitor Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8446, i32 8446, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Dither Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8255, i32 8255, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC Blocker Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8255, i32 8255, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Digital Volume\00", [17 x i8] zeroinitializer }, align 32
@max98373_digital_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6350, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 8253, i32 8253, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@max98373_spk_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 8, i32 1, i32 8, i32 0, i32 50, i32 9, i32 10, i32 1, i32 8, i32 500, i32 100], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 8254, i32 8254, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FS Max Volume\00", [18 x i8] zeroinitializer }, align 32
@max98373_spkgain_max_tlv = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 24, i32 0, i32 9, i32 1, i32 8, i32 800, i32 100], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 8254, i32 8254, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Output Voltage\00", [17 x i8] zeroinitializer }, align 32
@max98373_out_volt_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8254, i8 0, i8 0, i32 10, i32 15, ptr @max98373_output_voltage_lvl_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DHT Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8404, i32 8404, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DHT Min Volume\00", [17 x i8] zeroinitializer }, align 32
@max98373_dht_spkgain_min_tlv = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 24, i32 0, i32 9, i32 1, i32 8, i32 800, i32 100], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 8401, i32 8401, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DHT Rot Pnt Volume\00", [45 x i8] zeroinitializer }, align 32
@max98373_dht_rotation_point_tlv = internal constant { [38 x i32], [40 x i8] } { [38 x i32] [i32 3, i32 144, i32 0, i32 1, i32 1, i32 8, i32 -3000, i32 500, i32 2, i32 4, i32 1, i32 8, i32 -2200, i32 200, i32 5, i32 6, i32 1, i32 8, i32 -1500, i32 300, i32 7, i32 9, i32 1, i32 8, i32 -1000, i32 200, i32 10, i32 13, i32 1, i32 8, i32 -500, i32 100, i32 14, i32 15, i32 1, i32 8, i32 -100, i32 50], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8401, i32 8401, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DHT Attack Step Volume\00", [41 x i8] zeroinitializer }, align 32
@max98373_dht_step_size_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 1, i32 1, i32 8, i32 25, i32 25, i32 2, i32 4, i32 1, i32 8, i32 100, i32 100], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 8402, i32 8402, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DHT Release Step Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 8403, i32 8403, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DHT Attack Rate\00", [16 x i8] zeroinitializer }, align 32
@max98373_dht_attack_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8402, i8 0, i8 0, i32 8, i32 7, ptr @max98373_dht_attack_rate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DHT Release Rate\00", [47 x i8] zeroinitializer }, align 32
@max98373_dht_release_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8403, i8 0, i8 0, i32 8, i32 7, ptr @max98373_dht_release_rate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC PVDD CH Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8278, i32 8278, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC PVDD FLT Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8274, i32 8274, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC TEMP FLT Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8275, i32 8275, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC PVDD\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8276, i32 8276, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC TEMP\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8277, i32 8277, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC PVDD FLT Coeff\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 8274, i32 8274, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC TEMP FLT Coeff\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 8275, i32 8275, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC SampleRate\00", [17 x i8] zeroinitializer }, align 32
@max98373_adc_samplerate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8273, i8 0, i8 0, i32 4, i32 3, ptr @max98373_ADC_samplerate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BDE Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8373, i32 8373, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BDE LVL4 Mute Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8370, i32 8370, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BDE LVL4 Hold Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8370, i32 8370, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BDE LVL1 Thresh\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8343, i32 8343, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BDE LVL2 Thresh\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8344, i32 8344, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BDE LVL3 Thresh\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8345, i32 8345, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BDE LVL4 Thresh\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8346, i32 8346, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BDE Active Level\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 8374, i32 8374, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BDE Clip Mode Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8338, i32 8338, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BDE Thresh Hysteresis\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8347, i32 8347, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BDE Hold Time\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8336, i32 8336, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BDE Attack Rate\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8337, i32 8337, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BDE Release Rate\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8337, i32 8337, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BDE LVL1 Clip Thresh Volume\00", [36 x i8] zeroinitializer }, align 32
@max98373_bde_gain_tlv = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 24, i32 0, i32 60, i32 1, i32 8, i32 -1500, i32 25], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 60, i32 60, i32 8361, i32 8361, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BDE LVL2 Clip Thresh Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 60, i32 60, i32 8364, i32 8364, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BDE LVL3 Clip Thresh Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 60, i32 60, i32 8367, i32 8367, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BDE LVL4 Clip Thresh Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 60, i32 60, i32 8370, i32 8370, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BDE LVL1 Clip Reduction Volume\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 60, i32 60, i32 8362, i32 8362, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BDE LVL2 Clip Reduction Volume\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 60, i32 60, i32 8365, i32 8365, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BDE LVL3 Clip Reduction Volume\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 60, i32 60, i32 8368, i32 8368, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BDE LVL4 Clip Reduction Volume\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 60, i32 60, i32 8371, i32 8371, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BDE LVL1 Limiter Thresh Volume\00", [33 x i8] zeroinitializer }, align 32
@max98373_limiter_thresh_tlv = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 24, i32 0, i32 15, i32 1, i32 8, i32 -1500, i32 100], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8360, i32 8360, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BDE LVL2 Limiter Thresh Volume\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8363, i32 8363, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BDE LVL3 Limiter Thresh Volume\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8366, i32 8366, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BDE LVL4 Limiter Thresh Volume\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8369, i32 8369, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Limiter Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8418, i32 8418, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Limiter Src Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8416, i32 8416, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Limiter Thresh Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8416, i32 8416, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Limiter Attack Rate\00", [44 x i8] zeroinitializer }, align 32
@max98373_limiter_attack_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8417, i8 4, i8 4, i32 16, i32 15, ptr @max98373_limiter_attack_rate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Limiter Release Rate\00", [43 x i8] zeroinitializer }, align 32
@max98373_limiter_release_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8417, i8 0, i8 0, i32 16, i32 15, ptr @max98373_limiter_release_rate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@max98373_output_voltage_lvl_text = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140], [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5.43V\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"6.09V\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"6.83V\00", [26 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"7.67V\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8.60V\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"9.65V\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10.83V\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"12.15V\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"13.63V\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"15.29V\00", [25 x i8] zeroinitializer }, align 32
@max98373_dht_attack_rate_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148], [32 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"17.5us\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"35us\00", [27 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"70us\00", [27 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"140us\00", [26 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"280us\00", [26 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"560us\00", [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1120us\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2240us\00", [25 x i8] zeroinitializer }, align 32
@max98373_dht_release_rate_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156], [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"45ms\00", [27 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"225ms\00", [26 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"450ms\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1150ms\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2250ms\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3100ms\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4500ms\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"6750ms\00", [25 x i8] zeroinitializer }, align 32
@max98373_ADC_samplerate_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160], [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"333kHz\00", [25 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"192kHz\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"64kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48kHz\00", [26 x i8] zeroinitializer }, align 32
@max98373_limiter_attack_rate_text = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176], [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"10us\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"20us\00", [27 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"40us\00", [27 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"80us\00", [27 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"160us\00", [26 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"320us\00", [26 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"640us\00", [26 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.28ms\00", [25 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.56ms\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.12ms\00", [25 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10.24ms\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"20.48ms\00", [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"40.96ms\00", [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"81.92ms\00", [24 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"16.384ms\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"32.768ms\00", [23 x i8] zeroinitializer }, align 32
@max98373_limiter_release_rate_text = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.177, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181], [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.120ms\00", [24 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"163.84ms\00", [23 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"327.68ms\00", [23 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"655.36ms\00", [23 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1310.72ms\00", [22 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Amp Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAI Sel Mux\00", [20 x i8] zeroinitializer }, align 32
@max98373_dai_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @dai_sel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BE_OUT\00", [25 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Voltage Sense\00", [18 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Current Sense\00", [18 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Speaker FB Sense\00", [47 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VI Sense\00", [23 x i8] zeroinitializer }, align 32
@max98373_vi_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.201 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SpkFB Sense\00", [20 x i8] zeroinitializer }, align 32
@max98373_spkfb_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VMON\00", [27 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IMON\00", [27 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FBMON\00", [26 x i8] zeroinitializer }, align 32
@max98373_dapm_widgets = internal constant { [11 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [484 x i8] } { [11 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.182, ptr @.str.183, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8235, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98373_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98373_dai_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.186, ptr @.str.187, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8263, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.188, ptr @.str.187, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8263, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.189, ptr @.str.187, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98373_vi_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98373_spkfb_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [484 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAI Sel\00", [24 x i8] zeroinitializer }, align 32
@dai_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8233, i8 6, i8 6, i32 3, i32 3, ptr @max98373_switch_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@max98373_switch_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.197, ptr @.str.198, ptr @.str.199], [20 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LeftRight\00", [22 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8236, i32 8236, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8259, i32 8259, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 334, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 343, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 348, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [22 x i8] c"max98373_snd_controls\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 198, i32 38 }
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c"max98373_audio_map\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 309, i32 40 }
@___asan_gen_.242 = private unnamed_addr constant [23 x i8] c"soc_codec_dev_max98373\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 429, i32 39 }
@___asan_gen_.245 = private unnamed_addr constant [27 x i8] c"soc_codec_dev_max98373_sdw\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 443, i32 39 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 462, i32 37 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 467, i32 37 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 473, i32 7 }
@___asan_gen_.257 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 475, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 479, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 487, i32 37 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 199, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 201, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 203, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 205, i32 1 }
@___asan_gen_.290 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 208, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 211, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 214, i32 1 }
@___asan_gen_.302 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 216, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 218, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 220, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 222, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant [21 x i8] c"max98373_digital_tlv\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 85, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 224, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"max98373_spk_tlv\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 86, i32 14 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 226, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant [25 x i8] c"max98373_spkgain_max_tlv\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 90, i32 14 }
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 228, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant [23 x i8] c"max98373_out_volt_enum\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 121, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 230, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 232, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant [29 x i8] c"max98373_dht_spkgain_min_tlv\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 97, i32 14 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 234, i32 1 }
@___asan_gen_.356 = private unnamed_addr constant [32 x i8] c"max98373_dht_rotation_point_tlv\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 100, i32 14 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 236, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant [27 x i8] c"max98373_dht_step_size_tlv\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 93, i32 14 }
@___asan_gen_.366 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 238, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 240, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant [30 x i8] c"max98373_dht_attack_rate_enum\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 130, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 241, i32 1 }
@___asan_gen_.380 = private unnamed_addr constant [31 x i8] c"max98373_dht_release_rate_enum\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 139, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 243, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 244, i32 1 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 246, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 248, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 250, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 252, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 254, i32 1 }
@___asan_gen_.410 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 256, i32 1 }
@___asan_gen_.414 = private unnamed_addr constant [29 x i8] c"max98373_adc_samplerate_enum\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 169, i32 8 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 258, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 259, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 261, i32 1 }
@___asan_gen_.428 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 263, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 264, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 265, i32 1 }
@___asan_gen_.440 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 266, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 267, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 269, i32 1 }
@___asan_gen_.452 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 270, i32 1 }
@___asan_gen_.456 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 271, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 272, i32 1 }
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 273, i32 1 }
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 274, i32 1 }
@___asan_gen_.472 = private unnamed_addr constant [22 x i8] c"max98373_bde_gain_tlv\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 112, i32 14 }
@___asan_gen_.475 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 276, i32 1 }
@___asan_gen_.479 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 278, i32 1 }
@___asan_gen_.483 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 280, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 282, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 284, i32 1 }
@___asan_gen_.495 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 286, i32 1 }
@___asan_gen_.499 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 288, i32 1 }
@___asan_gen_.503 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 290, i32 1 }
@___asan_gen_.507 = private unnamed_addr constant [28 x i8] c"max98373_limiter_thresh_tlv\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 108, i32 14 }
@___asan_gen_.510 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 292, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 294, i32 1 }
@___asan_gen_.518 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 296, i32 1 }
@___asan_gen_.522 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 299, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 301, i32 1 }
@___asan_gen_.530 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 303, i32 1 }
@___asan_gen_.534 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 305, i32 1 }
@___asan_gen_.538 = private unnamed_addr constant [34 x i8] c"max98373_limiter_attack_rate_enum\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 150, i32 8 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 306, i32 1 }
@___asan_gen_.544 = private unnamed_addr constant [35 x i8] c"max98373_limiter_release_rate_enum\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 161, i32 8 }
@___asan_gen_.547 = private unnamed_addr constant [33 x i8] c"max98373_output_voltage_lvl_text\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 116, i32 27 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 117, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 117, i32 11 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 117, i32 20 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 117, i32 29 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 117, i32 38 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 118, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 118, i32 11 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 118, i32 21 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 118, i32 31 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 118, i32 41 }
@___asan_gen_.580 = private unnamed_addr constant [30 x i8] c"max98373_dht_attack_rate_text\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 125, i32 27 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 126, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 126, i32 12 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 126, i32 20 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 126, i32 28 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 127, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 127, i32 11 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 127, i32 20 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 127, i32 30 }
@___asan_gen_.607 = private unnamed_addr constant [31 x i8] c"max98373_dht_release_rate_text\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 134, i32 27 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 135, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 135, i32 10 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 135, i32 19 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 135, i32 28 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 136, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 136, i32 12 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 136, i32 22 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 136, i32 32 }
@___asan_gen_.634 = private unnamed_addr constant [29 x i8] c"max98373_ADC_samplerate_text\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 165, i32 27 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 166, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 166, i32 12 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 166, i32 22 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 166, i32 31 }
@___asan_gen_.649 = private unnamed_addr constant [34 x i8] c"max98373_limiter_attack_rate_text\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 143, i32 27 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 144, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 144, i32 10 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 144, i32 18 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 144, i32 26 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 145, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 145, i32 11 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 145, i32 20 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 145, i32 29 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 146, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 146, i32 12 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 146, i32 22 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 146, i32 33 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 147, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 147, i32 13 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 147, i32 24 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 147, i32 36 }
@___asan_gen_.700 = private unnamed_addr constant [35 x i8] c"max98373_limiter_release_rate_text\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 154, i32 27 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 156, i32 31 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 158, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 158, i32 14 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 158, i32 26 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 158, i32 38 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 64, i32 1 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 67, i32 1 }
@___asan_gen_.727 = private unnamed_addr constant [22 x i8] c"max98373_dai_controls\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 54, i32 38 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 69, i32 1 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 70, i32 1 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 72, i32 1 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 74, i32 1 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 76, i32 1 }
@___asan_gen_.748 = private unnamed_addr constant [20 x i8] c"max98373_vi_control\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 57, i32 38 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 78, i32 1 }
@___asan_gen_.754 = private unnamed_addr constant [23 x i8] c"max98373_spkfb_control\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 60, i32 38 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 80, i32 1 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 81, i32 1 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 82, i32 1 }
@___asan_gen_.766 = private unnamed_addr constant [22 x i8] c"max98373_dapm_widgets\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 63, i32 41 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 55, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant [13 x i8] c"dai_sel_enum\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 49, i32 30 }
@___asan_gen_.775 = private unnamed_addr constant [21 x i8] c"max98373_switch_text\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 46, i32 27 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 47, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 47, i32 10 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 47, i32 19 }
@___asan_gen_.787 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.788 = private constant [31 x i8] c"../sound/soc/codecs/max98373.c\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 58, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.791 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@llvm.compiler.used = appending global [245 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__ksymtab_max98373_reset, ptr @__ksymtab_max98373_slot_config, ptr @__ksymtab_soc_codec_dev_max98373, ptr @__ksymtab_soc_codec_dev_max98373_sdw, ptr @max98373_reset._entry, ptr @max98373_reset._entry.5, ptr @max98373_reset._entry.9, ptr @max98373_reset._entry_ptr, ptr @max98373_reset._entry_ptr.11, ptr @max98373_reset._entry_ptr.8, ptr @max98373_slot_config._entry, ptr @max98373_slot_config._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @max98373_snd_controls, ptr @max98373_audio_map, ptr @soc_codec_dev_max98373, ptr @soc_codec_dev_max98373_sdw, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.compoundliteral, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @max98373_digital_tlv, ptr @.compoundliteral.40, ptr @.str.41, ptr @max98373_spk_tlv, ptr @.compoundliteral.42, ptr @.str.43, ptr @max98373_spkgain_max_tlv, ptr @.compoundliteral.44, ptr @.str.45, ptr @max98373_out_volt_enum, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @max98373_dht_spkgain_min_tlv, ptr @.compoundliteral.49, ptr @.str.50, ptr @max98373_dht_rotation_point_tlv, ptr @.compoundliteral.51, ptr @.str.52, ptr @max98373_dht_step_size_tlv, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @max98373_dht_attack_rate_enum, ptr @.str.57, ptr @max98373_dht_release_rate_enum, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @max98373_adc_samplerate_enum, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @max98373_bde_gain_tlv, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @max98373_limiter_thresh_tlv, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @max98373_limiter_attack_rate_enum, ptr @.str.130, ptr @max98373_limiter_release_rate_enum, ptr @max98373_output_voltage_lvl_text, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @max98373_dht_attack_rate_text, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @max98373_dht_release_rate_text, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @max98373_ADC_samplerate_text, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @max98373_limiter_attack_rate_text, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @max98373_limiter_release_rate_text, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @max98373_dai_controls, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @max98373_vi_control, ptr @.str.191, ptr @max98373_spkfb_control, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @max98373_dapm_widgets, ptr @.str.196, ptr @dai_sel_enum, ptr @max98373_switch_text, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.compoundliteral.201, ptr @.compoundliteral.202], section "llvm.metadata"
@0 = internal global [233 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_reset._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_reset._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_snd_controls to i32), i32 2832, i32 3552, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_audio_map to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_max98373 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_max98373_sdw to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_slot_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_spk_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_spkgain_max_tlv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_out_volt_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dht_spkgain_min_tlv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dht_rotation_point_tlv to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dht_step_size_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dht_attack_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dht_release_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_adc_samplerate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_bde_gain_tlv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_limiter_thresh_tlv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_limiter_attack_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_limiter_release_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_output_voltage_lvl_text to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dht_attack_rate_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dht_release_rate_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_ADC_samplerate_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_limiter_attack_rate_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_limiter_release_rate_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dai_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_vi_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_spkfb_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dapm_widgets to i32), i32 1980, i32 2464, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dai_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_switch_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @max98373_reset(ptr nocapture noundef readonly %max98373, ptr noundef %dev) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !372
  %1 = ptrtoint ptr %max98373 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %max98373, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 8192, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call.i) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #4
  %3 = ptrtoint ptr %max98373 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %max98373, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef 8703, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.do.end7_crit_edge, label %if.end8

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

do.end7:                                          ; preds = %if.end8.1.do.end7_crit_edge, %if.end8.do.end7_crit_edge, %if.end.do.end7_crit_edge
  %count.024.lcssa = phi i32 [ 0, %if.end.do.end7_crit_edge ], [ 1, %if.end8.do.end7_crit_edge ], [ 2, %if.end8.1.do.end7_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %count.024.lcssa) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #4
  %5 = ptrtoint ptr %max98373 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %max98373, align 4
  %call2.1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 8703, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool3.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool3.not.1, label %if.end8.do.end7_crit_edge, label %if.end8.1

if.end8.do.end7_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.end8.1:                                        ; preds = %if.end8
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #4
  %7 = ptrtoint ptr %max98373 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %max98373, align 4
  %call2.2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 8703, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool3.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool3.not.2, label %if.end8.1.do.end7_crit_edge, label %if.end8.2

if.end8.1.do.end7_crit_edge:                      ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.end8.2:                                        ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call2.2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8.2, %do.end7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_probe(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @max98373_reset(ptr noundef %3, ptr noundef %1)
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 8224, i32 noundef 255) #4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 8225, i32 noundef 255) #4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 8233, i32 noundef 128) #4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 8234, i32 noundef 1) #4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 8255, i32 noundef 3) #4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 8262, i32 noundef 7) #4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %i_slot = getelementptr inbounds %struct.max98373_priv, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %i_slot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_slot, align 4
  %shl = shl i32 %19, 4
  %v_slot = getelementptr inbounds %struct.max98373_priv, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %v_slot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v_slot, align 4
  %or = or i32 %shl, %21
  %and = and i32 %or, 255
  %call13 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 8226, i32 noundef %and) #4
  %22 = ptrtoint ptr %v_slot to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %v_slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %cmp = icmp ult i32 %23, 8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %sub = add i32 %23, -8
  %sub.sink = select i1 %cmp, i32 %23, i32 %sub
  %.sink = select i1 %cmp, i32 8224, i32 8225
  %shl21 = shl nuw i32 1, %sub.sink
  %call.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %.sink, i32 noundef %shl21, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %26 = ptrtoint ptr %i_slot to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp24 = icmp ult i32 %27, 8
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %sub33 = add i32 %27, -8
  %sub33.sink = select i1 %cmp24, i32 %27, i32 %sub33
  %.sink81 = select i1 %cmp24, i32 8224, i32 8225
  %shl34 = shl nuw i32 1, %sub33.sink
  %call.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %.sink81, i32 noundef %shl34, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %call38 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 8446, i32 noundef 15) #4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %spkfb_slot = getelementptr inbounds %struct.max98373_priv, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %spkfb_slot to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %spkfb_slot, align 4
  %and40 = and i32 %35, 255
  %call41 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 8227, i32 noundef %and40) #4
  %interleave_mode = getelementptr inbounds %struct.max98373_priv, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %interleave_mode to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %interleave_mode, align 4, !range !373
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not = icmp eq i8 %37, 0
  br i1 %tobool.not, label %entry.if.end45_crit_edge, label %if.then42

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then42:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %call.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 8228, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %entry.if.end45_crit_edge
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %call.i80 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 8259, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @max98373_slot_config(ptr noundef %dev, ptr nocapture noundef %max98373) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #4
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !372
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull %value, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %and = and i32 %2, 15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %and, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.max98373_priv, ptr %max98373, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %3, align 4
  %call.i57 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull %value, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool3.not = icmp eq i32 %call.i57, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %and5 = and i32 %6, 15
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %.sink61 = phi i32 [ %and5, %if.then4 ], [ 1, %if.end.if.end8_crit_edge ]
  %7 = getelementptr inbounds %struct.max98373_priv, ptr %max98373, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink61, ptr %7, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.else30, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call.i58 = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %10, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef null) #4
  %reset_gpio = getelementptr inbounds %struct.max98373_priv, ptr %max98373, i32 0, i32 1
  %11 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i58, ptr %reset_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i58)
  %12 = icmp ult i32 %call.i58, 2048
  br i1 %12, label %do.body19, label %do.end

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %full_name = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %full_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef %16, i32 noundef %call.i58) #7
  br label %if.end32

do.body19:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98373_slot_config.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98373_slot_config, %if.then24)) #4
          to label %if.end32 [label %if.then24], !srcloc !374

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reset_gpio, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98373_slot_config.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %18) #4
  br label %if.end32

if.else30:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %reset_gpio31 = getelementptr inbounds %struct.max98373_priv, ptr %max98373, i32 0, i32 1
  %19 = ptrtoint ptr %reset_gpio31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %reset_gpio31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then24, %do.body19, %do.end
  %call.i59 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull %value, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool34.not = icmp eq i32 %call.i59, 0
  br i1 %tobool34.not, label %if.then35, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 4
  %and36 = and i32 %21, 15
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end32.if.end39_crit_edge
  %.sink62 = phi i32 [ %and36, %if.then35 ], [ 2, %if.end32.if.end39_crit_edge ]
  %22 = getelementptr inbounds %struct.max98373_priv, ptr %max98373, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink62, ptr %22, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_feedback_get(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %for.cond.preheader, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

for.cond.preheader:                               ; preds = %entry
  %cache_num = getelementptr inbounds %struct.max98373_priv, ptr %8, i32 0, i32 9
  %11 = ptrtoint ptr %cache_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cache_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp224 = icmp sgt i32 %12, 0
  br i1 %cmp224, label %for.body.lr.ph, label %for.cond.preheader.if.end9_crit_edge

for.cond.preheader.if.end9_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %cache = getelementptr inbounds %struct.max98373_priv, ptr %8, i32 0, i32 8
  %15 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cache, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.max98373_cache, ptr %16, i32 %i.025
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %18)
  %cmp4 = icmp eq i32 %14, %18
  br i1 %cmp4, label %if.then5, label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %val = getelementptr %struct.max98373_cache, ptr %16, i32 %i.025, i32 1
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %21 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %value, align 8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.inc.if.end9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.end9_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9:                                          ; preds = %for.inc.if.end9_crit_edge, %for.cond.preheader.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = tail call i32 @snd_soc_get_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ %call10, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 8447, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @usleep_range_state(i32 noundef 30000, i32 noundef 31000, i32 noundef 2) #4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 8447, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @usleep_range_state(i32 noundef 30000, i32 noundef 31000, i32 noundef 2) #4
  %tdm_mode = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %tdm_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tdm_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 233)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 233)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !318, !320, !322, !324, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361}
!llvm.module.flags = !{!363, !364, !365, !366, !367, !368, !369, !370}
!llvm.ident = !{!371}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/max98373.c", i32 334, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @max98373_reset._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @max98373_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/max98373.c", i32 343, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @max98373_reset._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @max98373_reset._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/max98373.c", i32 348, i32 2}
!15 = !{ptr @max98373_reset._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @max98373_reset._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_max98373_reset, !18, !"__ksymtab_max98373_reset", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/max98373.c", i32 350, i32 1}
!19 = !{ptr @soc_codec_dev_max98373, !20, !"soc_codec_dev_max98373", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/max98373.c", i32 429, i32 39}
!21 = !{ptr @__ksymtab_soc_codec_dev_max98373, !22, !"__ksymtab_soc_codec_dev_max98373", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/max98373.c", i32 441, i32 1}
!23 = !{ptr @soc_codec_dev_max98373_sdw, !24, !"soc_codec_dev_max98373_sdw", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/max98373.c", i32 443, i32 39}
!25 = !{ptr @__ksymtab_soc_codec_dev_max98373_sdw, !26, !"__ksymtab_soc_codec_dev_max98373_sdw", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/max98373.c", i32 455, i32 1}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/max98373.c", i32 462, i32 37}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/max98373.c", i32 467, i32 37}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/max98373.c", i32 473, i32 7}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/max98373.c", i32 475, i32 4}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @max98373_slot_config._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @max98373_slot_config._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/max98373.c", i32 479, i32 4}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @max98373_slot_config.__UNIQUE_ID_ddebug294, !39, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/max98373.c", i32 487, i32 37}
!44 = !{ptr @__ksymtab_max98373_slot_config, !45, !"__ksymtab_max98373_slot_config", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/max98373.c", i32 492, i32 1}
!46 = !{ptr @__UNIQUE_ID_description295, !47, !"__UNIQUE_ID_description295", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/max98373.c", i32 494, i32 1}
!48 = !{ptr @__UNIQUE_ID_author296, !49, !"__UNIQUE_ID_author296", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/max98373.c", i32 495, i32 1}
!50 = !{ptr @__UNIQUE_ID_file297, !51, !"__UNIQUE_ID_file297", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/max98373.c", i32 496, i32 1}
!52 = !{ptr @__UNIQUE_ID_license298, !51, !"__UNIQUE_ID_license298", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/max98373.c", i32 199, i32 1}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/max98373.c", i32 201, i32 1}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/max98373.c", i32 203, i32 1}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/max98373.c", i32 205, i32 1}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/max98373.c", i32 208, i32 1}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/max98373.c", i32 211, i32 1}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/max98373.c", i32 214, i32 1}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/max98373.c", i32 216, i32 1}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/max98373.c", i32 218, i32 1}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/max98373.c", i32 220, i32 1}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/max98373.c", i32 222, i32 1}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/max98373.c", i32 224, i32 1}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/max98373.c", i32 226, i32 1}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/max98373.c", i32 228, i32 1}
!81 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/max98373.c", i32 230, i32 1}
!83 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/max98373.c", i32 232, i32 1}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/max98373.c", i32 234, i32 1}
!87 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/max98373.c", i32 236, i32 1}
!89 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/max98373.c", i32 238, i32 1}
!91 = !{ptr @.str.56, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/max98373.c", i32 240, i32 1}
!93 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/max98373.c", i32 241, i32 1}
!95 = !{ptr @.str.58, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/max98373.c", i32 243, i32 1}
!97 = !{ptr @.str.60, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/max98373.c", i32 244, i32 1}
!99 = !{ptr @.str.62, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/max98373.c", i32 246, i32 1}
!101 = !{ptr @.str.64, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/max98373.c", i32 248, i32 1}
!103 = !{ptr @.str.66, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/max98373.c", i32 250, i32 1}
!105 = !{ptr @.str.68, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/max98373.c", i32 252, i32 1}
!107 = !{ptr @.str.70, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/max98373.c", i32 254, i32 1}
!109 = !{ptr @.str.72, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/max98373.c", i32 256, i32 1}
!111 = !{ptr @.str.73, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/max98373.c", i32 258, i32 1}
!113 = !{ptr @.str.75, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/max98373.c", i32 259, i32 1}
!115 = !{ptr @.str.77, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/max98373.c", i32 261, i32 1}
!117 = !{ptr @.str.79, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/max98373.c", i32 263, i32 1}
!119 = !{ptr @.str.81, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/max98373.c", i32 264, i32 1}
!121 = !{ptr @.str.83, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/max98373.c", i32 265, i32 1}
!123 = !{ptr @.str.85, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/max98373.c", i32 266, i32 1}
!125 = !{ptr @.str.87, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/max98373.c", i32 267, i32 1}
!127 = !{ptr @.str.89, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/max98373.c", i32 269, i32 1}
!129 = !{ptr @.str.91, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/max98373.c", i32 270, i32 1}
!131 = !{ptr @.str.93, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/max98373.c", i32 271, i32 1}
!133 = !{ptr @.str.95, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/max98373.c", i32 272, i32 1}
!135 = !{ptr @.str.97, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/max98373.c", i32 273, i32 1}
!137 = !{ptr @.str.99, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/max98373.c", i32 274, i32 1}
!139 = !{ptr @.str.101, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/max98373.c", i32 276, i32 1}
!141 = !{ptr @.str.103, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/max98373.c", i32 278, i32 1}
!143 = !{ptr @.str.105, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/max98373.c", i32 280, i32 1}
!145 = !{ptr @.str.107, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/max98373.c", i32 282, i32 1}
!147 = !{ptr @.str.109, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/max98373.c", i32 284, i32 1}
!149 = !{ptr @.str.111, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/max98373.c", i32 286, i32 1}
!151 = !{ptr @.str.113, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/max98373.c", i32 288, i32 1}
!153 = !{ptr @.str.115, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/max98373.c", i32 290, i32 1}
!155 = !{ptr @.str.117, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/max98373.c", i32 292, i32 1}
!157 = !{ptr @.str.119, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/max98373.c", i32 294, i32 1}
!159 = !{ptr @.str.121, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/max98373.c", i32 296, i32 1}
!161 = !{ptr @.str.123, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/max98373.c", i32 299, i32 1}
!163 = !{ptr @.str.125, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/max98373.c", i32 301, i32 1}
!165 = !{ptr @.str.127, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/max98373.c", i32 303, i32 1}
!167 = !{ptr @.str.129, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/max98373.c", i32 305, i32 1}
!169 = !{ptr @.str.130, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/max98373.c", i32 306, i32 1}
!171 = !{ptr @max98373_snd_controls, !172, !"max98373_snd_controls", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/max98373.c", i32 198, i32 38}
!173 = !{ptr @max98373_digital_tlv, !174, !"max98373_digital_tlv", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/max98373.c", i32 85, i32 8}
!175 = !{ptr @max98373_spk_tlv, !176, !"max98373_spk_tlv", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/max98373.c", i32 86, i32 14}
!177 = !{ptr @max98373_spkgain_max_tlv, !178, !"max98373_spkgain_max_tlv", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/max98373.c", i32 90, i32 14}
!179 = !{ptr @max98373_out_volt_enum, !180, !"max98373_out_volt_enum", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/max98373.c", i32 121, i32 8}
!181 = !{ptr @.str.131, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/max98373.c", i32 117, i32 2}
!183 = !{ptr @.str.132, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/max98373.c", i32 117, i32 11}
!185 = !{ptr @.str.133, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/max98373.c", i32 117, i32 20}
!187 = !{ptr @.str.134, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/max98373.c", i32 117, i32 29}
!189 = !{ptr @.str.135, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/max98373.c", i32 117, i32 38}
!191 = !{ptr @.str.136, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/max98373.c", i32 118, i32 2}
!193 = !{ptr @.str.137, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/max98373.c", i32 118, i32 11}
!195 = !{ptr @.str.138, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/max98373.c", i32 118, i32 21}
!197 = !{ptr @.str.139, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/max98373.c", i32 118, i32 31}
!199 = !{ptr @.str.140, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/max98373.c", i32 118, i32 41}
!201 = !{ptr @max98373_output_voltage_lvl_text, !202, !"max98373_output_voltage_lvl_text", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/max98373.c", i32 116, i32 27}
!203 = !{ptr @max98373_dht_spkgain_min_tlv, !204, !"max98373_dht_spkgain_min_tlv", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/max98373.c", i32 97, i32 14}
!205 = !{ptr @max98373_dht_rotation_point_tlv, !206, !"max98373_dht_rotation_point_tlv", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/max98373.c", i32 100, i32 14}
!207 = !{ptr @max98373_dht_step_size_tlv, !208, !"max98373_dht_step_size_tlv", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/max98373.c", i32 93, i32 14}
!209 = !{ptr @max98373_dht_attack_rate_enum, !210, !"max98373_dht_attack_rate_enum", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/max98373.c", i32 130, i32 8}
!211 = !{ptr @.str.141, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/max98373.c", i32 126, i32 2}
!213 = !{ptr @.str.142, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/max98373.c", i32 126, i32 12}
!215 = !{ptr @.str.143, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/max98373.c", i32 126, i32 20}
!217 = !{ptr @.str.144, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/max98373.c", i32 126, i32 28}
!219 = !{ptr @.str.145, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/max98373.c", i32 127, i32 2}
!221 = !{ptr @.str.146, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/max98373.c", i32 127, i32 11}
!223 = !{ptr @.str.147, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/max98373.c", i32 127, i32 20}
!225 = !{ptr @.str.148, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/max98373.c", i32 127, i32 30}
!227 = !{ptr @max98373_dht_attack_rate_text, !228, !"max98373_dht_attack_rate_text", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/max98373.c", i32 125, i32 27}
!229 = !{ptr @max98373_dht_release_rate_enum, !230, !"max98373_dht_release_rate_enum", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/max98373.c", i32 139, i32 8}
!231 = !{ptr @.str.149, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/max98373.c", i32 135, i32 2}
!233 = !{ptr @.str.150, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/max98373.c", i32 135, i32 10}
!235 = !{ptr @.str.151, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/max98373.c", i32 135, i32 19}
!237 = !{ptr @.str.152, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/max98373.c", i32 135, i32 28}
!239 = !{ptr @.str.153, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/max98373.c", i32 136, i32 2}
!241 = !{ptr @.str.154, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/max98373.c", i32 136, i32 12}
!243 = !{ptr @.str.155, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/max98373.c", i32 136, i32 22}
!245 = !{ptr @.str.156, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/max98373.c", i32 136, i32 32}
!247 = !{ptr @max98373_dht_release_rate_text, !248, !"max98373_dht_release_rate_text", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/max98373.c", i32 134, i32 27}
!249 = !{ptr @max98373_adc_samplerate_enum, !250, !"max98373_adc_samplerate_enum", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/max98373.c", i32 169, i32 8}
!251 = !{ptr @.str.157, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/max98373.c", i32 166, i32 2}
!253 = !{ptr @.str.158, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/max98373.c", i32 166, i32 12}
!255 = !{ptr @.str.159, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/max98373.c", i32 166, i32 22}
!257 = !{ptr @.str.160, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/max98373.c", i32 166, i32 31}
!259 = !{ptr @max98373_ADC_samplerate_text, !260, !"max98373_ADC_samplerate_text", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/max98373.c", i32 165, i32 27}
!261 = !{ptr @max98373_bde_gain_tlv, !262, !"max98373_bde_gain_tlv", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/max98373.c", i32 112, i32 14}
!263 = !{ptr @max98373_limiter_thresh_tlv, !264, !"max98373_limiter_thresh_tlv", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/max98373.c", i32 108, i32 14}
!265 = !{ptr @max98373_limiter_attack_rate_enum, !266, !"max98373_limiter_attack_rate_enum", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/max98373.c", i32 150, i32 8}
!267 = !{ptr @.str.161, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/max98373.c", i32 144, i32 2}
!269 = !{ptr @.str.162, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/max98373.c", i32 144, i32 10}
!271 = !{ptr @.str.163, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/max98373.c", i32 144, i32 18}
!273 = !{ptr @.str.164, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/max98373.c", i32 144, i32 26}
!275 = !{ptr @.str.165, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/max98373.c", i32 145, i32 2}
!277 = !{ptr @.str.166, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/max98373.c", i32 145, i32 11}
!279 = !{ptr @.str.167, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/max98373.c", i32 145, i32 20}
!281 = !{ptr @.str.168, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/max98373.c", i32 145, i32 29}
!283 = !{ptr @.str.169, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/max98373.c", i32 146, i32 2}
!285 = !{ptr @.str.170, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/max98373.c", i32 146, i32 12}
!287 = !{ptr @.str.171, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/max98373.c", i32 146, i32 22}
!289 = !{ptr @.str.172, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/max98373.c", i32 146, i32 33}
!291 = !{ptr @.str.173, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/max98373.c", i32 147, i32 2}
!293 = !{ptr @.str.174, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/max98373.c", i32 147, i32 13}
!295 = !{ptr @.str.175, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/max98373.c", i32 147, i32 24}
!297 = !{ptr @.str.176, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/max98373.c", i32 147, i32 36}
!299 = !{ptr @max98373_limiter_attack_rate_text, !300, !"max98373_limiter_attack_rate_text", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/max98373.c", i32 143, i32 27}
!301 = !{ptr @max98373_limiter_release_rate_enum, !302, !"max98373_limiter_release_rate_enum", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/max98373.c", i32 161, i32 8}
!303 = !{ptr @.str.177, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/max98373.c", i32 156, i32 31}
!305 = !{ptr @.str.178, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/max98373.c", i32 158, i32 2}
!307 = !{ptr @.str.179, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/max98373.c", i32 158, i32 14}
!309 = !{ptr @.str.180, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/max98373.c", i32 158, i32 26}
!311 = !{ptr @.str.181, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/max98373.c", i32 158, i32 38}
!313 = !{ptr @max98373_limiter_release_rate_text, !314, !"max98373_limiter_release_rate_text", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/max98373.c", i32 154, i32 27}
!315 = !{ptr @.str.182, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/max98373.c", i32 64, i32 1}
!317 = !{ptr @.str.183, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.184, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/max98373.c", i32 67, i32 1}
!320 = !{ptr @.str.185, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/max98373.c", i32 69, i32 1}
!322 = !{ptr @.str.186, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/max98373.c", i32 70, i32 1}
!324 = !{ptr @.str.187, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.188, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/max98373.c", i32 72, i32 1}
!327 = !{ptr @.str.189, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/max98373.c", i32 74, i32 1}
!329 = !{ptr @.str.190, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/max98373.c", i32 76, i32 1}
!331 = !{ptr @.str.191, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/max98373.c", i32 78, i32 1}
!333 = !{ptr @.str.192, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/max98373.c", i32 80, i32 1}
!335 = !{ptr @.str.193, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/max98373.c", i32 81, i32 1}
!337 = !{ptr @.str.194, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/max98373.c", i32 82, i32 1}
!339 = !{ptr @max98373_dapm_widgets, !340, !"max98373_dapm_widgets", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/max98373.c", i32 63, i32 41}
!341 = !{ptr @.str.196, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/max98373.c", i32 55, i32 2}
!343 = !{ptr @max98373_dai_controls, !344, !"max98373_dai_controls", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/max98373.c", i32 54, i32 38}
!345 = !{ptr @dai_sel_enum, !346, !"dai_sel_enum", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/max98373.c", i32 49, i32 30}
!347 = !{ptr @.str.197, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/max98373.c", i32 47, i32 2}
!349 = !{ptr @.str.198, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/max98373.c", i32 47, i32 10}
!351 = !{ptr @.str.199, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/max98373.c", i32 47, i32 19}
!353 = !{ptr @max98373_switch_text, !354, !"max98373_switch_text", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/max98373.c", i32 46, i32 27}
!355 = !{ptr @.str.200, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/max98373.c", i32 58, i32 2}
!357 = !{ptr @max98373_vi_control, !358, !"max98373_vi_control", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/max98373.c", i32 57, i32 38}
!359 = !{ptr @max98373_spkfb_control, !360, !"max98373_spkfb_control", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/max98373.c", i32 60, i32 38}
!361 = !{ptr @max98373_audio_map, !362, !"max98373_audio_map", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/max98373.c", i32 309, i32 40}
!363 = !{i32 1, !"wchar_size", i32 2}
!364 = !{i32 1, !"min_enum_size", i32 4}
!365 = !{i32 8, !"branch-target-enforcement", i32 0}
!366 = !{i32 8, !"sign-return-address", i32 0}
!367 = !{i32 8, !"sign-return-address-all", i32 0}
!368 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!369 = !{i32 7, !"uwtable", i32 1}
!370 = !{i32 7, !"frame-pointer", i32 2}
!371 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!372 = !{!"auto-init"}
!373 = !{i8 0, i8 2}
!374 = !{i64 2148963768, i64 2148963773, i64 2148963786, i64 2148963830, i64 2148963864, i64 2148963885}
