; ModuleID = '/llk/IR_all_yes/sound/pci/hda/hda_sysfs.c_pt.bc'
source_filename = "../sound/pci/hda/hda_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_hda_get_hint\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_get_hint\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_get_hint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_get_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_get_hint\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_get_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_hda_get_bool_hint\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_get_bool_hint\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_get_bool_hint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_get_bool_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_get_bool_hint\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_get_bool_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_hda_get_int_hint\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_get_int_hint\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_get_int_hint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_get_int_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_get_int_hint\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_get_int_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_hda_load_patch\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_hda_load_patch\09\09\09\09"
module asm "\09.long\09__crc_snd_hda_load_patch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_load_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_load_patch\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_load_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hda_patch_item = type { ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, ptr, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hda_hint = type { ptr, ptr }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.hda_verb = type { i16, i32, i32 }
%struct.hda_pincfg = type { i16, i8, i8, i32 }

@__kstrtab_snd_hda_get_hint = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_get_hint = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_get_hint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_get_hint to i32), ptr @__kstrtab_snd_hda_get_hint, ptr @__kstrtabns_snd_hda_get_hint }, section "___ksymtab_gpl+snd_hda_get_hint", align 4
@__kstrtab_snd_hda_get_bool_hint = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_get_bool_hint = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_get_bool_hint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_get_bool_hint to i32), ptr @__kstrtab_snd_hda_get_bool_hint, ptr @__kstrtabns_snd_hda_get_bool_hint }, section "___ksymtab_gpl+snd_hda_get_bool_hint", align 4
@__kstrtab_snd_hda_get_int_hint = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_get_int_hint = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_get_int_hint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_get_int_hint to i32), ptr @__kstrtab_snd_hda_get_int_hint, ptr @__kstrtabns_snd_hda_get_int_hint }, section "___ksymtab_gpl+snd_hda_get_int_hint", align 4
@patch_items = internal constant { [10 x %struct.hda_patch_item], [40 x i8] } { [10 x %struct.hda_patch_item] [%struct.hda_patch_item zeroinitializer, %struct.hda_patch_item { ptr @.str.1, ptr null, ptr @parse_codec_mode }, %struct.hda_patch_item { ptr @.str.2, ptr null, ptr @parse_model_mode }, %struct.hda_patch_item { ptr @.str.3, ptr @.str.4, ptr @parse_pincfg_mode }, %struct.hda_patch_item { ptr @.str.5, ptr @.str.6, ptr @parse_verb_mode }, %struct.hda_patch_item { ptr @.str.7, ptr @.str.8, ptr @parse_hint_mode }, %struct.hda_patch_item { ptr @.str.9, ptr null, ptr @parse_vendor_id_mode }, %struct.hda_patch_item { ptr @.str.10, ptr null, ptr @parse_subsystem_id_mode }, %struct.hda_patch_item { ptr @.str.11, ptr null, ptr @parse_revision_id_mode }, %struct.hda_patch_item { ptr @.str.12, ptr null, ptr @parse_chip_name_mode }], [40 x i8] zeroinitializer }, align 32
@__kstrtab_snd_hda_load_patch = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_load_patch = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_load_patch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_load_patch to i32), ptr @__kstrtab_snd_hda_load_patch, ptr @__kstrtabns_snd_hda_load_patch }, section "___ksymtab_gpl+snd_hda_load_patch", align 4
@hda_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hda_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@snd_hda_dev_attr_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @hda_dev_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@snd_hda_sysfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&codec->user_mutex\00", [45 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[codec]\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[model]\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[pincfg]\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[user_pin_configs]\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[verb]\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[init_verbs]\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[hint]\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[hints]\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[vendor_id]\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[subsystem_id]\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[revision_id]\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[chip_name]\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%i %i %i\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%i %i\00", [26 x i8] zeroinitializer }, align 32
@hda_dev_attrs = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @dev_attr_vendor_id, ptr @dev_attr_subsystem_id, ptr @dev_attr_revision_id, ptr @dev_attr_afg, ptr @dev_attr_mfg, ptr @dev_attr_vendor_name, ptr @dev_attr_chip_name, ptr @dev_attr_modelname, ptr @dev_attr_init_pin_configs, ptr @dev_attr_driver_pin_configs, ptr @dev_attr_power_on_acct, ptr @dev_attr_power_off_acct, ptr @dev_attr_init_verbs, ptr @dev_attr_hints, ptr @dev_attr_user_pin_configs, ptr @dev_attr_reconfig, ptr @dev_attr_clear, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_vendor_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_id_show, ptr @vendor_id_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_subsystem_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @subsystem_id_show, ptr @subsystem_id_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_revision_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @revision_id_show, ptr @revision_id_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_afg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mfg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mfg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vendor_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_name_show, ptr @vendor_name_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chip_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chip_name_show, ptr @chip_name_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_modelname = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modelname_show, ptr @modelname_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_init_pin_configs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @init_pin_configs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_driver_pin_configs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @driver_pin_configs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_on_acct = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_on_acct_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_off_acct = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_off_acct_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_init_verbs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @init_verbs_show, ptr @init_verbs_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hints = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hints_show, ptr @hints_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_user_pin_configs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @user_pin_configs_show, ptr @user_pin_configs_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reconfig = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @reconfig_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_clear = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @clear_store }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vendor_id\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"subsystem_id\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"revision_id\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afg\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mfg\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vendor_name\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chip_name\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"modelname\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"init_pin_configs\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%02x 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"driver_pin_configs\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power_on_acct\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power_off_acct\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init_verbs\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%02x 0x%03x 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hints\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s = %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"user_pin_configs\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reconfig\00", [23 x i8] zeroinitializer }, align 32
@reconfig_codec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.40, i32 135, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hda-codec: reconfiguring\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reconfig_codec\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/hda/hda_sysfs.c\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@reconfig_codec._entry_ptr = internal global ptr @reconfig_codec._entry, section ".printk_index", align 4
@reconfig_codec._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.40, i32 139, ptr @.str.45, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"The codec is being used, can't reconfigure.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@reconfig_codec._entry_ptr.46 = internal global ptr @reconfig_codec._entry.43, section ".printk_index", align 4
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@clear_codec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.40, i32 123, ptr @.str.45, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"The codec is being used, can't free.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clear_codec\00", [20 x i8] zeroinitializer }, align 32
@clear_codec._entry_ptr = internal global ptr @clear_codec._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 49, i64 84, i64 89]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 10, i64 35, i64 91]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 10, i64 35, i64 61]
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"patch_items\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 614, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"hda_dev_attr_group\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 765, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"snd_hda_dev_attr_groups\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 769, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 776, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 616, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 620, i32 10 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 629, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 630, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 624, i32 10 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 625, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 634, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 635, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 639, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 643, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 647, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 651, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 547, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 385, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"hda_dev_attrs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 740, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"dev_attr_vendor_id\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"dev_attr_subsystem_id\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"dev_attr_revision_id\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"dev_attr_afg\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [13 x i8] c"dev_attr_mfg\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [21 x i8] c"dev_attr_vendor_name\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [19 x i8] c"dev_attr_chip_name\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"dev_attr_modelname\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"dev_attr_init_pin_configs\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [28 x i8] c"dev_attr_driver_pin_configs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [23 x i8] c"dev_attr_power_on_acct\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [24 x i8] c"dev_attr_power_off_acct\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c"dev_attr_init_verbs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"dev_attr_hints\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [26 x i8] c"dev_attr_user_pin_configs\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [18 x i8] c"dev_attr_reconfig\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"dev_attr_clear\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 503, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 71, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 504, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 505, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 506, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 507, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 508, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 76, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 509, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 510, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 511, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 88, i32 29 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 512, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 48, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 36, i32 22 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 49, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 407, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 226, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 408, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 276, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 409, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 410, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 135, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 138, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 411, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [29 x i8] c"../sound/pci/hda/hda_sysfs.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 123, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__ksymtab_snd_hda_get_bool_hint, ptr @__ksymtab_snd_hda_get_hint, ptr @__ksymtab_snd_hda_get_int_hint, ptr @__ksymtab_snd_hda_load_patch, ptr @clear_codec._entry, ptr @clear_codec._entry_ptr, ptr @reconfig_codec._entry, ptr @reconfig_codec._entry.43, ptr @reconfig_codec._entry_ptr, ptr @reconfig_codec._entry_ptr.46, ptr @patch_items, ptr @hda_dev_attr_group, ptr @snd_hda_dev_attr_groups, ptr @snd_hda_sysfs_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @hda_dev_attrs, ptr @dev_attr_vendor_id, ptr @dev_attr_subsystem_id, ptr @dev_attr_revision_id, ptr @dev_attr_afg, ptr @dev_attr_mfg, ptr @dev_attr_vendor_name, ptr @dev_attr_chip_name, ptr @dev_attr_modelname, ptr @dev_attr_init_pin_configs, ptr @dev_attr_driver_pin_configs, ptr @dev_attr_power_on_acct, ptr @dev_attr_power_off_acct, ptr @dev_attr_init_verbs, ptr @dev_attr_hints, ptr @dev_attr_user_pin_configs, ptr @dev_attr_reconfig, ptr @dev_attr_clear, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_items to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_dev_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_sysfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dev_attrs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_subsystem_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_revision_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_afg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chip_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modelname to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_init_pin_configs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_driver_pin_configs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_on_acct to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_off_acct to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_init_verbs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hints to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_user_pin_configs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reconfig to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_clear to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reconfig_codec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reconfig_codec._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_codec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_hda_get_hint(ptr nocapture noundef readonly %codec, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hints.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28
  %0 = ptrtoint ptr %hints.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hints.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not.i = icmp eq i32 %1, 0
  br i1 %cmp10.not.i, label %entry.cond.end_crit_edge, label %for.body.lr.ph.i

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

for.body.lr.ph.i:                                 ; preds = %entry
  %list.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 4
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 8
  %elem_size.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %hint.011.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %add.ptr.i.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %hint.011.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hint.011.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef %key) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %get_hint.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %6 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i.i, align 4
  %mul.i.i = mul i32 %7, %inc.i
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %mul.i.i
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.cond.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cond.end_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

get_hint.exit:                                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %hint.011.i, null
  br i1 %tobool.not, label %get_hint.exit.cond.end_crit_edge, label %cond.true

get_hint.exit.cond.end_crit_edge:                 ; preds = %get_hint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %get_hint.exit
  call void @__sanitizer_cov_trace_pc() #11
  %val = getelementptr inbounds %struct.hda_hint, ptr %hint.011.i, i32 0, i32 1
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %val, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %get_hint.exit.cond.end_crit_edge, %for.inc.i.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.true ], [ null, %get_hint.exit.cond.end_crit_edge ], [ null, %entry.cond.end_crit_edge ], [ null, %for.inc.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hda_get_bool_hint(ptr noundef %codec, ptr nocapture noundef readonly %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %user_mutex = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %user_mutex, i32 noundef 0) #9
  %hints.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28
  %0 = ptrtoint ptr %hints.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hints.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp10.not.i.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %entry
  %list.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 4
  %2 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i.i, align 8
  %elem_size.i.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %hint.011.i.i = phi ptr [ %3, %for.body.lr.ph.i.i ], [ %add.ptr.i.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %hint.011.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hint.011.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef %key) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %get_hint.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  %6 = ptrtoint ptr %elem_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i.i.i, align 4
  %mul.i.i.i = mul i32 %7, %inc.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %mul.i.i.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %1
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

get_hint.exit.i:                                  ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %hint.011.i.i, null
  br i1 %tobool.not.i, label %get_hint.exit.i.if.end_crit_edge, label %snd_hda_get_hint.exit

get_hint.exit.i.if.end_crit_edge:                 ; preds = %get_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

snd_hda_get_hint.exit:                            ; preds = %get_hint.exit.i
  %val.i = getelementptr inbounds %struct.hda_hint, ptr %hint.011.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %val.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %snd_hda_get_hint.exit.if.end_crit_edge, label %lor.lhs.false

snd_hda_get_hint.exit.if.end_crit_edge:           ; preds = %snd_hda_get_hint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false:                                    ; preds = %snd_hda_get_hint.exit
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %if.else

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %conv.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 0
  %sub.i = add i8 %11, -32
  %spec.select.i = select i1 %cmp.not.i, i8 %11, i8 %sub.i
  %15 = zext i8 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %spec.select.i, label %sw.default [
    i8 84, label %if.else.if.end_crit_edge
    i8 89, label %if.else.if.end_crit_edge16
    i8 49, label %if.else.if.end_crit_edge17
  ]

if.else.if.end_crit_edge17:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.if.end_crit_edge16:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %sw.default, %if.else.if.end_crit_edge, %if.else.if.end_crit_edge16, %if.else.if.end_crit_edge17, %lor.lhs.false.if.end_crit_edge, %snd_hda_get_hint.exit.if.end_crit_edge, %get_hint.exit.i.if.end_crit_edge, %for.inc.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %sw.default ], [ -2, %lor.lhs.false.if.end_crit_edge ], [ -2, %snd_hda_get_hint.exit.if.end_crit_edge ], [ 1, %if.else.if.end_crit_edge ], [ 1, %if.else.if.end_crit_edge16 ], [ 1, %if.else.if.end_crit_edge17 ], [ -2, %get_hint.exit.i.if.end_crit_edge ], [ -2, %entry.if.end_crit_edge ], [ -2, %for.inc.i.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %user_mutex) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hda_get_int_hint(ptr noundef %codec, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %valp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !138
  %user_mutex = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %user_mutex, i32 noundef 0) #9
  %hints.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28
  %1 = ptrtoint ptr %hints.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hints.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp10.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp10.not.i.i, label %entry.if.end5_crit_edge, label %for.body.lr.ph.i.i

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

for.body.lr.ph.i.i:                               ; preds = %entry
  %list.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 4
  %3 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list.i.i, align 8
  %elem_size.i.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %hint.011.i.i = phi ptr [ %4, %for.body.lr.ph.i.i ], [ %add.ptr.i.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %hint.011.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hint.011.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %6, ptr noundef %key) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %get_hint.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  %7 = ptrtoint ptr %elem_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %elem_size.i.i.i, align 4
  %mul.i.i.i = mul i32 %8, %inc.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %mul.i.i.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %2
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end5_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end5_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

get_hint.exit.i:                                  ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %hint.011.i.i, null
  br i1 %tobool.not.i, label %get_hint.exit.i.if.end5_crit_edge, label %snd_hda_get_hint.exit

get_hint.exit.i.if.end5_crit_edge:                ; preds = %get_hint.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

snd_hda_get_hint.exit:                            ; preds = %get_hint.exit.i
  %val.i = getelementptr inbounds %struct.hda_hint, ptr %hint.011.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %val.i, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %snd_hda_get_hint.exit.if.end5_crit_edge, label %if.else

snd_hda_get_hint.exit.if.end5_crit_edge:          ; preds = %snd_hda_get_hint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.else:                                          ; preds = %snd_hda_get_hint.exit
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.else4, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = ptrtoint ptr %valp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %valp, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.else.if.end5_crit_edge, %snd_hda_get_hint.exit.if.end5_crit_edge, %get_hint.exit.i.if.end5_crit_edge, %for.inc.i.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ 0, %if.else4 ], [ -2, %snd_hda_get_hint.exit.if.end5_crit_edge ], [ -22, %if.else.if.end5_crit_edge ], [ -2, %get_hint.exit.i.if.end5_crit_edge ], [ -2, %entry.if.end5_crit_edge ], [ -2, %for.inc.i.i.if.end5_crit_edge ]
  call void @mutex_unlock(ptr noundef %user_mutex) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_hda_load_patch(ptr noundef %bus, i32 noundef %fw_size, ptr noundef %fw_buf) #2 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  %codec = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %codec) #9
  %1 = ptrtoint ptr %codec to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %codec, align 4
  br label %while.cond.outer.outer

while.cond.outer.loopexit:                        ; preds = %for.inc.i37.while.cond.outer.loopexit_crit_edge, %land.lhs.true.i.while.cond.outer.loopexit_crit_edge, %if.end.i.while.cond.outer.loopexit_crit_edge
  %line_mode.0.ph.ph = phi i32 [ %i.05.i, %if.end.i.while.cond.outer.loopexit_crit_edge ], [ %i.05.i, %land.lhs.true.i.while.cond.outer.loopexit_crit_edge ], [ 0, %for.inc.i37.while.cond.outer.loopexit_crit_edge ]
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %while.cond.outer.loopexit, %entry
  %fw_size.addr.0.ph.ph = phi i32 [ %sub.i, %while.cond.outer.loopexit ], [ %fw_size, %entry ]
  %fw_buf.addr.0.ph.ph = phi ptr [ %p.3.i, %while.cond.outer.loopexit ], [ %fw_buf, %entry ]
  %line_mode.0.ph.ph71 = phi i32 [ %line_mode.0.ph.ph, %while.cond.outer.loopexit ], [ 0, %entry ]
  %parser = getelementptr [10 x %struct.hda_patch_item], ptr @patch_items, i32 0, i32 %line_mode.0.ph.ph71, i32 2
  %2 = and i32 %line_mode.0.ph.ph71, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool17.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %line_mode.0.ph.ph71)
  %cmp20 = icmp ult i32 %line_mode.0.ph.ph71, 2
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %while.cond.outer.outer
  %fw_size.addr.0.ph = phi i32 [ %fw_size.addr.0.ph.ph, %while.cond.outer.outer ], [ %sub.i, %while.cond.outer.backedge ]
  %fw_buf.addr.0.ph = phi ptr [ %fw_buf.addr.0.ph.ph, %while.cond.outer.outer ], [ %p.3.i, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %fw_size.addr.0 = phi i32 [ %fw_size.addr.0.ph, %while.cond.outer ], [ %sub.i, %while.cond.backedge ]
  %fw_buf.addr.0 = phi ptr [ %fw_buf.addr.0.ph, %while.cond.outer ], [ %p.3.i, %while.cond.backedge ]
  %3 = ptrtoint ptr %fw_buf.addr.0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fw_buf.addr.0, align 1
  %conv5.i = zext i8 %4 to i32
  %arrayidx6.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv5.i
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx6.i, align 1
  %7 = and i8 %6, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not7.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fw_size.addr.0)
  %tobool.not8.i = icmp eq i32 %fw_size.addr.0, 0
  %or.cond9.i = select i1 %cmp.not7.i, i1 true, i1 %tobool.not8.i
  br i1 %or.cond9.i, label %while.cond.while.end.i_crit_edge, label %while.cond.while.body.i_crit_edge

while.cond.while.body.i_crit_edge:                ; preds = %while.cond
  br label %while.body.i

while.cond.while.end.i_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.while.body.i_crit_edge
  %p.011.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %fw_buf.addr.0, %while.cond.while.body.i_crit_edge ]
  %fw_size.010.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %fw_size.addr.0, %while.cond.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %p.011.i, i32 1
  %dec.i = add i32 %fw_size.010.i, -1
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.i, align 1
  %conv.i = zext i8 %9 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.not.i = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.while.end.i_crit_edge
  %fw_size.0.lcssa.i = phi i32 [ %fw_size.addr.0, %while.cond.while.end.i_crit_edge ], [ %dec.i, %while.body.i.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %fw_buf.addr.0, %while.cond.while.end.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %tobool.not.lcssa.i = phi i1 [ %tobool.not8.i, %while.cond.while.end.i_crit_edge ], [ %tobool.not.i, %while.body.i.while.end.i_crit_edge ]
  br i1 %tobool.not.lcssa.i, label %while.end, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fw_size.0.lcssa.i)
  %cmp414.not.i = icmp eq i32 %fw_size.0.lcssa.i, 0
  br i1 %cmp414.not.i, label %for.cond.preheader.i.while.body_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.while.body_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %p.117.i = phi ptr [ %p.2.i, %for.inc.i.for.body.i_crit_edge ], [ %p.0.lcssa.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %len.016.i = phi i32 [ %inc21.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %buf.addr.015.i = phi ptr [ %buf.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %buf, %for.cond.preheader.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %p.117.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %p.117.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %14, label %if.end14.i [
    i8 0, label %for.body.i.while.body_crit_edge
    i8 10, label %if.then12.i
  ]

for.body.i.while.body_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr13.i = getelementptr i8, ptr %p.117.i, i32 1
  %inc.i = add nuw i32 %len.016.i, 1
  br label %while.body

if.end14.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %len.016.i)
  %cmp15.i = icmp slt i32 %len.016.i, 127
  br i1 %cmp15.i, label %if.then17.i, label %if.end14.i.for.inc.i_crit_edge

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr18.i = getelementptr i8, ptr %p.117.i, i32 1
  %incdec.ptr19.i = getelementptr i8, ptr %buf.addr.015.i, i32 1
  %16 = ptrtoint ptr %buf.addr.015.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %buf.addr.015.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then17.i, %if.end14.i.for.inc.i_crit_edge
  %buf.addr.1.i = phi ptr [ %incdec.ptr19.i, %if.then17.i ], [ %buf.addr.015.i, %if.end14.i.for.inc.i_crit_edge ]
  %p.2.i = phi ptr [ %incdec.ptr18.i, %if.then17.i ], [ %p.117.i, %if.end14.i.for.inc.i_crit_edge ]
  %inc21.i = add nuw i32 %len.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, %fw_size.0.lcssa.i
  br i1 %exitcond.not.i, label %for.inc.i.while.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.while.body_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %for.inc.i.while.body_crit_edge, %if.then12.i, %for.body.i.while.body_crit_edge, %for.cond.preheader.i.while.body_crit_edge
  %buf.addr.04.i = phi ptr [ %buf.addr.015.i, %if.then12.i ], [ %buf, %for.cond.preheader.i.while.body_crit_edge ], [ %buf.addr.015.i, %for.body.i.while.body_crit_edge ], [ %buf.addr.1.i, %for.inc.i.while.body_crit_edge ]
  %len.1.i = phi i32 [ %inc.i, %if.then12.i ], [ 0, %for.cond.preheader.i.while.body_crit_edge ], [ %len.016.i, %for.body.i.while.body_crit_edge ], [ %fw_size.0.lcssa.i, %for.inc.i.while.body_crit_edge ]
  %p.3.i = phi ptr [ %incdec.ptr13.i, %if.then12.i ], [ %p.0.lcssa.i, %for.cond.preheader.i.while.body_crit_edge ], [ %p.117.i, %for.body.i.while.body_crit_edge ], [ %p.2.i, %for.inc.i.while.body_crit_edge ]
  %17 = ptrtoint ptr %buf.addr.04.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %buf.addr.04.i, align 1
  %sub.i = sub i32 %fw_size.0.lcssa.i, %len.1.i
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %19, label %if.else [
    i8 0, label %while.body.while.cond.backedge_crit_edge
    i8 35, label %while.body.while.cond.backedge_crit_edge82
    i8 10, label %while.body.while.cond.backedge_crit_edge83
    i8 91, label %while.body.for.body.i33_crit_edge
  ]

while.body.for.body.i33_crit_edge:                ; preds = %while.body
  br label %for.body.i33

while.body.while.cond.backedge_crit_edge83:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.body.while.cond.backedge_crit_edge82:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge82, %while.body.while.cond.backedge_crit_edge83
  br label %while.cond

for.body.i33:                                     ; preds = %for.inc.i37.for.body.i33_crit_edge, %while.body.for.body.i33_crit_edge
  %i.05.i = phi i32 [ %inc.i35, %for.inc.i37.for.body.i33_crit_edge ], [ 0, %while.body.for.body.i33_crit_edge ]
  %arrayidx.i31 = getelementptr [10 x %struct.hda_patch_item], ptr @patch_items, i32 0, i32 %i.05.i
  %21 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i31, align 4
  %tobool.not.i32 = icmp eq ptr %22, null
  br i1 %tobool.not.i32, label %for.body.i33.for.inc.i37_crit_edge, label %if.end.i

for.body.i33.for.inc.i37_crit_edge:               ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i37

if.end.i:                                         ; preds = %for.body.i33
  %call.i.i34 = call i32 @strlen(ptr noundef nonnull %22) #12
  %call1.i.i = call i32 @strncasecmp(ptr noundef nonnull %buf, ptr noundef nonnull %22, i32 noundef %call.i.i34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i.not.i, label %if.end.i.while.cond.outer.loopexit_crit_edge, label %if.end5.i

if.end.i.while.cond.outer.loopexit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.loopexit

if.end5.i:                                        ; preds = %if.end.i
  %23 = add nsw i32 %i.05.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %23)
  %tobool7.not.i = icmp ult i32 %23, -3
  br i1 %tobool7.not.i, label %if.end5.i.for.inc.i37_crit_edge, label %land.lhs.true.i

if.end5.i.for.inc.i37_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i37

land.lhs.true.i:                                  ; preds = %if.end5.i
  %alias.i = getelementptr [10 x %struct.hda_patch_item], ptr @patch_items, i32 0, i32 %i.05.i, i32 1
  %24 = ptrtoint ptr %alias.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %alias.i, align 4
  %call.i1.i = call i32 @strlen(ptr noundef %25) #12
  %call1.i2.i = call i32 @strncasecmp(ptr noundef nonnull %buf, ptr noundef %25, i32 noundef %call.i1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2.i)
  %cmp.i3.not.i = icmp eq i32 %call1.i2.i, 0
  br i1 %cmp.i3.not.i, label %land.lhs.true.i.while.cond.outer.loopexit_crit_edge, label %land.lhs.true.i.for.inc.i37_crit_edge

land.lhs.true.i.for.inc.i37_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i37

land.lhs.true.i.while.cond.outer.loopexit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.loopexit

for.inc.i37:                                      ; preds = %land.lhs.true.i.for.inc.i37_crit_edge, %if.end5.i.for.inc.i37_crit_edge, %for.body.i33.for.inc.i37_crit_edge
  %inc.i35 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i36 = icmp eq i32 %inc.i35, 10
  br i1 %exitcond.not.i36, label %for.inc.i37.while.cond.outer.loopexit_crit_edge, label %for.inc.i37.for.body.i33_crit_edge

for.inc.i37.for.body.i33_crit_edge:               ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i33

for.inc.i37.while.cond.outer.loopexit_crit_edge:  ; preds = %for.inc.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.loopexit

if.else:                                          ; preds = %while.body
  br i1 %tobool17.not, label %if.else.while.cond.outer.backedge_crit_edge, label %land.lhs.true

if.else.while.cond.outer.backedge_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.backedge

land.lhs.true:                                    ; preds = %if.else
  %26 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %codec, align 4
  %tobool18.not = icmp ne ptr %27, null
  %or.cond = select i1 %tobool18.not, i1 true, i1 %cmp20
  br i1 %or.cond, label %if.then22, label %land.lhs.true.while.cond.outer.backedge_crit_edge

land.lhs.true.while.cond.outer.backedge_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then22, %land.lhs.true.while.cond.outer.backedge_crit_edge, %if.else.while.cond.outer.backedge_crit_edge
  br label %while.cond.outer

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parser, align 4
  call void %29(ptr noundef nonnull %buf, ptr noundef %bus, ptr noundef nonnull %codec) #9
  br label %while.cond.outer.backedge

while.end:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %codec) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_hda_sysfs_init(ptr noundef %codec) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %user_mutex = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %user_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @snd_hda_sysfs_init.__key) #9
  %elem_size.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 27, i32 2
  %0 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %elem_size.i, align 4
  %alloc_align.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 27, i32 3
  %1 = ptrtoint ptr %alloc_align.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %alloc_align.i, align 4
  %elem_size.i4 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 2
  %2 = ptrtoint ptr %elem_size.i4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %elem_size.i4, align 4
  %alloc_align.i5 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 3
  %3 = ptrtoint ptr %alloc_align.i5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %alloc_align.i5, align 4
  %elem_size.i6 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 29, i32 2
  %4 = ptrtoint ptr %elem_size.i6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %elem_size.i6, align 4
  %alloc_align.i7 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 29, i32 3
  %5 = ptrtoint ptr %alloc_align.i7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %alloc_align.i7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_hda_sysfs_clear(ptr noundef %codec) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %init_verbs = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 27
  tail call void @snd_array_free(ptr noundef %init_verbs) #9
  %hints = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28
  %0 = ptrtoint ptr %hints to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hints, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %list = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 8
  %elem_size.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %hint.011 = phi ptr [ %3, %for.body.lr.ph ], [ %add.ptr.i, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %hint.011 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hint.011, align 4
  tail call void @kfree(ptr noundef %5) #9
  %inc = add nuw i32 %i.012, 1
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %8 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %9, %inc
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %10 = ptrtoint ptr %hints to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hints, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @snd_array_free(ptr noundef %hints) #9
  %user_pins = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 29
  tail call void @snd_array_free(ptr noundef %user_pins) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_array_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_codec_mode(ptr nocapture noundef readonly %buf, ptr noundef readonly %bus, ptr nocapture noundef writeonly %codecp) #6 align 64 {
entry:
  %vendorid = alloca i32, align 4
  %subid = alloca i32, align 4
  %caddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vendorid) #9
  %0 = ptrtoint ptr %vendorid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vendorid, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subid) #9
  %1 = ptrtoint ptr %subid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %subid, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %caddr) #9
  %2 = ptrtoint ptr %caddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %caddr, align 4, !annotation !138
  %3 = ptrtoint ptr %codecp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %codecp, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.13, ptr noundef nonnull %vendorid, ptr noundef nonnull %subid, ptr noundef nonnull %caddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then:                                          ; preds = %entry
  %codec_list = getelementptr inbounds %struct.hdac_bus, ptr %bus, i32 0, i32 11
  %4 = ptrtoint ptr %codec_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn32 = load ptr, ptr %codec_list, align 4
  %cmp4.not33 = icmp eq ptr %.pn32, %codec_list
  br i1 %cmp4.not33, label %if.then.if.end22_crit_edge, label %for.body.lr.ph

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.body.lr.ph:                                   ; preds = %if.then
  %5 = ptrtoint ptr %vendorid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vendorid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5 = icmp slt i32 %6, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn34 = phi ptr [ %.pn32, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  br i1 %cmp5, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %vendor_id = getelementptr i8, ptr %.pn34, i32 12
  %7 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vendor_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp7 = icmp eq i32 %8, %6
  br i1 %cmp7, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %9 = ptrtoint ptr %subid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %subid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp8 = icmp slt i32 %10, 1
  br i1 %cmp8, label %land.lhs.true.land.lhs.true12_crit_edge, label %lor.lhs.false9

land.lhs.true.land.lhs.true12_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true12

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %subsystem_id = getelementptr i8, ptr %.pn34, i32 16
  %11 = ptrtoint ptr %subsystem_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %subsystem_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp11 = icmp eq i32 %12, %10
  br i1 %cmp11, label %lor.lhs.false9.land.lhs.true12_crit_edge, label %lor.lhs.false9.for.inc_crit_edge

lor.lhs.false9.for.inc_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false9.land.lhs.true12_crit_edge:         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true12

land.lhs.true12:                                  ; preds = %lor.lhs.false9.land.lhs.true12_crit_edge, %land.lhs.true.land.lhs.true12_crit_edge
  %addr = getelementptr i8, ptr %.pn34, i32 -4
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 8
  %15 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %caddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp14 = icmp eq i32 %14, %16
  br i1 %cmp14, label %if.then15, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  %codec.0.le = getelementptr i8, ptr %.pn34, i32 -940
  %17 = ptrtoint ptr %codecp to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %codec.0.le, ptr %codecp, align 4
  br label %if.end22

for.inc:                                          ; preds = %land.lhs.true12.for.inc_crit_edge, %lor.lhs.false9.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp4.not = icmp eq ptr %.pn, %codec_list
  br i1 %cmp4.not, label %for.inc.if.end22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end22:                                         ; preds = %for.inc.if.end22_crit_edge, %if.then15, %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %caddr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendorid) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_model_mode(ptr noundef %buf, ptr nocapture noundef readnone %bus, ptr nocapture noundef readonly %codecp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %codecp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codecp, align 4
  %modelname = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %modelname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modelname, align 4
  tail call void @kfree(ptr noundef %3) #9
  %call = tail call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #9
  %4 = ptrtoint ptr %codecp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codecp, align 4
  %modelname1 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %modelname1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %modelname1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_pincfg_mode(ptr nocapture noundef readonly %buf, ptr nocapture noundef readnone %bus, ptr nocapture noundef readonly %codecp) #2 align 64 {
entry:
  %nid.i = alloca i32, align 4
  %cfg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %codecp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codecp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nid.i) #9
  %2 = ptrtoint ptr %nid.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nid.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg.i) #9
  %3 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cfg.i, align 4, !annotation !138
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.14, ptr noundef nonnull %nid.i, ptr noundef nonnull %cfg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.parse_user_pin_configs.exit_crit_edge

entry.parse_user_pin_configs.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_user_pin_configs.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i.parse_user_pin_configs.exit_crit_edge, label %if.end2.i

if.end.i.parse_user_pin_configs.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_user_pin_configs.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %user_mutex.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %user_mutex.i, i32 noundef 0) #9
  %user_pins.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nid.i, align 4
  %conv.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg.i, align 4
  %call3.i = call i32 @snd_hda_add_pincfg(ptr noundef %1, ptr noundef %user_pins.i, i16 noundef zeroext %conv.i, i32 noundef %9) #9
  call void @mutex_unlock(ptr noundef %user_mutex.i) #9
  br label %parse_user_pin_configs.exit

parse_user_pin_configs.exit:                      ; preds = %if.end2.i, %if.end.i.parse_user_pin_configs.exit_crit_edge, %entry.parse_user_pin_configs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nid.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_verb_mode(ptr nocapture noundef readonly %buf, ptr nocapture noundef readnone %bus, ptr nocapture noundef readonly %codecp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %codecp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codecp, align 4
  %call = tail call fastcc i32 @parse_init_verbs(ptr noundef %1, ptr noundef %buf)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_hint_mode(ptr noundef %buf, ptr nocapture noundef readnone %bus, ptr nocapture noundef readonly %codecp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %codecp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codecp, align 4
  %call = tail call fastcc i32 @parse_hints(ptr noundef %1, ptr noundef %buf)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_vendor_id_mode(ptr noundef %buf, ptr nocapture noundef readnone %bus, ptr nocapture noundef readonly %codecp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !138
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = ptrtoint ptr %codecp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %codecp, align 4
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %vendor_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_subsystem_id_mode(ptr noundef %buf, ptr nocapture noundef readnone %bus, ptr nocapture noundef readonly %codecp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !138
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = ptrtoint ptr %codecp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %codecp, align 4
  %subsystem_id = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %subsystem_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %subsystem_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_revision_id_mode(ptr noundef %buf, ptr nocapture noundef readnone %bus, ptr nocapture noundef readonly %codecp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !138
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = ptrtoint ptr %codecp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %codecp, align 4
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %revision_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %revision_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_chip_name_mode(ptr noundef %buf, ptr nocapture noundef readnone %bus, ptr nocapture noundef readonly %codecp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %codecp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codecp, align 4
  %call = tail call i32 @snd_hda_codec_set_name(ptr noundef %1, ptr noundef %buf) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_add_pincfg(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_init_verbs(ptr noundef %codec, ptr nocapture noundef readonly %buf) unnamed_addr #2 align 64 {
entry:
  %nid = alloca i32, align 4
  %verb = alloca i32, align 4
  %param = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nid) #9
  %0 = ptrtoint ptr %nid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nid, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %verb) #9
  %1 = ptrtoint ptr %verb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %verb, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #9
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %param, align 4, !annotation !138
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.13, ptr noundef nonnull %nid, ptr noundef nonnull %verb, ptr noundef nonnull %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp.not = icmp eq i32 %call, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %nid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %verb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %verb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %user_mutex = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %user_mutex, i32 noundef 0) #9
  %init_verbs = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 27
  %call4 = call ptr @snd_array_new(ptr noundef %init_verbs) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup.sink.split_crit_edge, label %if.end8

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %nid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nid, align 4
  %conv = trunc i32 %8 to i16
  %9 = ptrtoint ptr %call4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %call4, align 4
  %10 = ptrtoint ptr %verb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %verb, align 4
  %verb10 = getelementptr inbounds %struct.hda_verb, ptr %call4, i32 0, i32 1
  %12 = ptrtoint ptr %verb10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %verb10, align 4
  %13 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %param, align 4
  %param11 = getelementptr inbounds %struct.hda_verb, ptr %call4, i32 0, i32 2
  %15 = ptrtoint ptr %param11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %param11, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end8 ], [ -12, %if.end3.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %user_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %verb) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nid) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_array_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_hints(ptr noundef %codec, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skip_spaces(ptr noundef %buf) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %1, label %if.end10 [
    i8 0, label %entry.cleanup_crit_edge
    i8 35, label %entry.cleanup_crit_edge107
    i8 10, label %entry.cleanup_crit_edge108
    i8 61, label %if.then9
  ]

entry.cleanup_crit_edge108:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge107:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %entry
  %call.i = tail call ptr @kstrndup(ptr noundef %call, i32 noundef 1024, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end10.cleanup_crit_edge, label %if.end.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %call1.i = tail call ptr @strchr(ptr noundef nonnull %call.i, i32 noundef 10) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end14_crit_edge, label %if.then3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %call1.i, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then3.i, %if.end.i.if.end14_crit_edge
  %call15 = tail call ptr @strchr(ptr noundef nonnull %call.i, i32 noundef 61)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %incdec.ptr = getelementptr i8, ptr %call15, i32 1
  %4 = ptrtoint ptr %call15 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call15, align 1
  %call19 = tail call ptr @skip_spaces(ptr noundef %incdec.ptr) #9
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i74 = icmp eq i8 %6, 0
  br i1 %tobool.not.i74, label %if.end18.remove_trail_spaces.exit_crit_edge, label %if.end.i76

if.end18.remove_trail_spaces.exit_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_trail_spaces.exit

if.end.i76:                                       ; preds = %if.end18
  %call.i75 = tail call i32 @strlen(ptr noundef nonnull %call.i) #12
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %call.i75
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i76
  %add.ptr.pn.i = phi ptr [ %add.ptr.i, %if.end.i76 ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %p.0.i = getelementptr i8, ptr %add.ptr.pn.i, i32 -1
  %7 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %p.0.i, align 1
  %conv.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 0
  br i1 %cmp.not.i, label %for.cond.i.remove_trail_spaces.exit_crit_edge, label %for.body.i

for.cond.i.remove_trail_spaces.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_trail_spaces.exit

for.body.i:                                       ; preds = %for.cond.i
  %12 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %p.0.i, align 1
  %cmp4.i = icmp eq ptr %p.0.i, %call.i
  br i1 %cmp4.i, label %for.body.i.remove_trail_spaces.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.remove_trail_spaces.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_trail_spaces.exit

remove_trail_spaces.exit:                         ; preds = %for.body.i.remove_trail_spaces.exit_crit_edge, %for.cond.i.remove_trail_spaces.exit_crit_edge, %if.end18.remove_trail_spaces.exit_crit_edge
  %13 = ptrtoint ptr %call19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i77 = icmp eq i8 %14, 0
  br i1 %tobool.not.i77, label %remove_trail_spaces.exit.remove_trail_spaces.exit89_crit_edge, label %if.end.i80

remove_trail_spaces.exit.remove_trail_spaces.exit89_crit_edge: ; preds = %remove_trail_spaces.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_trail_spaces.exit89

if.end.i80:                                       ; preds = %remove_trail_spaces.exit
  %call.i78 = tail call i32 @strlen(ptr noundef %call19) #12
  %add.ptr.i79 = getelementptr i8, ptr %call19, i32 %call.i78
  br label %for.cond.i86

for.cond.i86:                                     ; preds = %for.body.i88.for.cond.i86_crit_edge, %if.end.i80
  %add.ptr.pn.i81 = phi ptr [ %add.ptr.i79, %if.end.i80 ], [ %p.0.i82, %for.body.i88.for.cond.i86_crit_edge ]
  %p.0.i82 = getelementptr i8, ptr %add.ptr.pn.i81, i32 -1
  %15 = ptrtoint ptr %p.0.i82 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %p.0.i82, align 1
  %conv.i83 = zext i8 %16 to i32
  %arrayidx.i84 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i83
  %17 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i84, align 1
  %19 = and i8 %18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.not.i85 = icmp eq i8 %19, 0
  br i1 %cmp.not.i85, label %for.cond.i86.remove_trail_spaces.exit89_crit_edge, label %for.body.i88

for.cond.i86.remove_trail_spaces.exit89_crit_edge: ; preds = %for.cond.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_trail_spaces.exit89

for.body.i88:                                     ; preds = %for.cond.i86
  %20 = ptrtoint ptr %p.0.i82 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %p.0.i82, align 1
  %cmp4.i87 = icmp eq ptr %p.0.i82, %call19
  br i1 %cmp4.i87, label %for.body.i88.remove_trail_spaces.exit89_crit_edge, label %for.body.i88.for.cond.i86_crit_edge

for.body.i88.for.cond.i86_crit_edge:              ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i86

for.body.i88.remove_trail_spaces.exit89_crit_edge: ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_trail_spaces.exit89

remove_trail_spaces.exit89:                       ; preds = %for.body.i88.remove_trail_spaces.exit89_crit_edge, %for.cond.i86.remove_trail_spaces.exit89_crit_edge, %remove_trail_spaces.exit.remove_trail_spaces.exit89_crit_edge
  %user_mutex = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %user_mutex, i32 noundef 0) #9
  %hints.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28
  %21 = ptrtoint ptr %hints.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hints.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp10.not.i = icmp eq i32 %22, 0
  br i1 %cmp10.not.i, label %remove_trail_spaces.exit89.if.end32_crit_edge, label %for.body.lr.ph.i

remove_trail_spaces.exit89.if.end32_crit_edge:    ; preds = %remove_trail_spaces.exit89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

for.body.lr.ph.i:                                 ; preds = %remove_trail_spaces.exit89
  %list.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 4
  %23 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list.i, align 8
  %elem_size.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 28, i32 2
  br label %for.body.i92

for.body.i92:                                     ; preds = %for.inc.i.for.body.i92_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i92_crit_edge ]
  %hint.011.i = phi ptr [ %24, %for.body.lr.ph.i ], [ %add.ptr.i.i, %for.inc.i.for.body.i92_crit_edge ]
  %25 = ptrtoint ptr %hint.011.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hint.011.i, align 4
  %call.i90 = tail call i32 @strcmp(ptr noundef %26, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i91 = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i91, label %get_hint.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i92
  %inc.i = add nuw i32 %i.012.i, 1
  %27 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %elem_size.i.i, align 4
  %mul.i.i = mul i32 %28, %inc.i
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %mul.i.i
  %exitcond.not.i = icmp eq i32 %inc.i, %22
  br i1 %exitcond.not.i, label %for.inc.i.if.end26_crit_edge, label %for.inc.i.for.body.i92_crit_edge

for.inc.i.for.body.i92_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i92

for.inc.i.if.end26_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

get_hint.exit:                                    ; preds = %for.body.i92
  %tobool21.not = icmp eq ptr %hint.011.i, null
  br i1 %tobool21.not, label %get_hint.exit.if.end26_crit_edge, label %if.then22

get_hint.exit.if.end26_crit_edge:                 ; preds = %get_hint.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then22:                                        ; preds = %get_hint.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %hint.011.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hint.011.i, align 4
  tail call void @kfree(ptr noundef %30) #9
  br label %unlock.thread

if.end26:                                         ; preds = %get_hint.exit.if.end26_crit_edge, %for.inc.i.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %22)
  %cmp27 = icmp ugt i32 %22, 1023
  br i1 %cmp27, label %if.end26.if.then41_crit_edge, label %if.end26.if.end32_crit_edge

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end26.if.then41_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.end32:                                         ; preds = %if.end26.if.end32_crit_edge, %remove_trail_spaces.exit89.if.end32_crit_edge
  %call31 = tail call ptr @snd_array_new(ptr noundef %hints.i) #9
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end32.if.then41_crit_edge, label %if.end32.unlock.thread_crit_edge

if.end32.unlock.thread_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end32.if.then41_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

unlock.thread:                                    ; preds = %if.end32.unlock.thread_crit_edge, %if.then22
  %call31.sink103 = phi ptr [ %hint.011.i, %if.then22 ], [ %call31, %if.end32.unlock.thread_crit_edge ]
  %31 = ptrtoint ptr %call31.sink103 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %call31.sink103, align 4
  %val36 = getelementptr inbounds %struct.hda_hint, ptr %call31.sink103, i32 0, i32 1
  %32 = ptrtoint ptr %val36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call19, ptr %val36, align 4
  tail call void @mutex_unlock(ptr noundef %user_mutex) #9
  br label %cleanup

if.then41:                                        ; preds = %if.end32.if.then41_crit_edge, %if.end26.if.then41_crit_edge
  tail call void @mutex_unlock(ptr noundef %user_mutex) #9
  tail call void @kfree(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %unlock.thread, %if.then17, %if.end10.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge107, %entry.cleanup_crit_edge108
  %retval.0 = phi i32 [ -22, %if.then9 ], [ -22, %if.then17 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge107 ], [ 0, %entry.cleanup_crit_edge108 ], [ -12, %if.then41 ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %unlock.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vendor_id, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_id_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !138
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %vendor_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subsystem_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %subsystem_id = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %subsystem_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subsystem_id, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subsystem_id_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !138
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %subsystem_id = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %subsystem_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %subsystem_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @revision_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision_id, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @revision_id_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !138
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %revision_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %revision_id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %afg = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %afg, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mfg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mfg = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mfg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mfg, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vendor_name = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vendor_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor_name, align 4
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr @.str.23, ptr %3
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %spec.select)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_name_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef 64, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @strchr(ptr noundef nonnull %call.i, i32 noundef 10) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call1.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge
  %vendor_name = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %vendor_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vendor_name, align 4
  tail call void @kfree(ptr noundef %4) #9
  %5 = ptrtoint ptr %vendor_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %vendor_name, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chip_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chip_name = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %chip_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_name, align 8
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr @.str.23, ptr %3
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %spec.select)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chip_name_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef 64, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @strchr(ptr noundef nonnull %call.i, i32 noundef 10) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call1.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge
  %chip_name = getelementptr inbounds %struct.hdac_device, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %chip_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_name, align 8
  tail call void @kfree(ptr noundef %4) #9
  %5 = ptrtoint ptr %chip_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %chip_name, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modelname_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %modelname = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %modelname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %modelname, align 4
  %tobool.not = icmp eq ptr %3, null
  %spec.select = select i1 %tobool.not, ptr @.str.23, ptr %3
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %spec.select)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modelname_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef 64, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @strchr(ptr noundef nonnull %call.i, i32 noundef 10) #9
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call1.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge
  %modelname = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %modelname to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %modelname, align 4
  tail call void @kfree(ptr noundef %4) #9
  %5 = ptrtoint ptr %modelname to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %modelname, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_pin_configs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %init_pins = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 23
  %user_mutex.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %user_mutex.i, i32 noundef 0) #9
  %list1.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 23, i32 4
  %2 = ptrtoint ptr %init_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.pin_configs_show.exit_crit_edge, label %for.body.lr.ph.i

entry.pin_configs_show.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pin_configs_show.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %4 = ptrtoint ptr %list1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list1.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 23, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %len.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %pin.012.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %add.ptr.i.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %len.014.i
  %6 = ptrtoint ptr %pin.012.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pin.012.i, align 4
  %conv.i = zext i16 %7 to i32
  %cfg.i = getelementptr inbounds %struct.hda_pincfg, ptr %pin.012.i, i32 0, i32 3
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.27, i32 noundef %conv.i, i32 noundef %9) #9
  %add.i = add i32 %call.i, %len.014.i
  %inc.i = add nuw i32 %i.013.i, 1
  %10 = ptrtoint ptr %list1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list1.i, align 4
  %12 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elem_size.i.i, align 4
  %mul.i.i = mul i32 %13, %inc.i
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul.i.i
  %14 = ptrtoint ptr %init_pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %init_pins, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.pin_configs_show.exit_crit_edge

for.body.i.pin_configs_show.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pin_configs_show.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pin_configs_show.exit:                            ; preds = %for.body.i.pin_configs_show.exit_crit_edge, %entry.pin_configs_show.exit_crit_edge
  %len.0.lcssa.i = phi i32 [ 0, %entry.pin_configs_show.exit_crit_edge ], [ %add.i, %for.body.i.pin_configs_show.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %user_mutex.i) #9
  ret i32 %len.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @driver_pin_configs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_pins = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 24
  %user_mutex.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %user_mutex.i, i32 noundef 0) #9
  %list1.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 24, i32 4
  %2 = ptrtoint ptr %driver_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.pin_configs_show.exit_crit_edge, label %for.body.lr.ph.i

entry.pin_configs_show.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pin_configs_show.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %4 = ptrtoint ptr %list1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list1.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 24, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %len.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %pin.012.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %add.ptr.i.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %len.014.i
  %6 = ptrtoint ptr %pin.012.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pin.012.i, align 4
  %conv.i = zext i16 %7 to i32
  %cfg.i = getelementptr inbounds %struct.hda_pincfg, ptr %pin.012.i, i32 0, i32 3
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.27, i32 noundef %conv.i, i32 noundef %9) #9
  %add.i = add i32 %call.i, %len.014.i
  %inc.i = add nuw i32 %i.013.i, 1
  %10 = ptrtoint ptr %list1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list1.i, align 4
  %12 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elem_size.i.i, align 4
  %mul.i.i = mul i32 %13, %inc.i
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul.i.i
  %14 = ptrtoint ptr %driver_pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_pins, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.pin_configs_show.exit_crit_edge

for.body.i.pin_configs_show.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pin_configs_show.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pin_configs_show.exit:                            ; preds = %for.body.i.pin_configs_show.exit_crit_edge, %entry.pin_configs_show.exit_crit_edge
  %len.0.lcssa.i = phi i32 [ 0, %entry.pin_configs_show.exit_crit_edge ], [ %add.i, %for.body.i.pin_configs_show.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %user_mutex.i) #9
  ret i32 %len.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_on_acct_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @snd_hda_update_power_acct(ptr noundef %1) #9
  %power_on_acct = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %power_on_acct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_on_acct, align 8
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %3) #9
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_update_power_acct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_off_acct_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @snd_hda_update_power_acct(ptr noundef %1) #9
  %power_off_acct = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %power_off_acct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_off_acct, align 4
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %3) #9
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_verbs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %user_mutex = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %user_mutex, i32 noundef 0) #9
  %init_verbs = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %init_verbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_verbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16.not = icmp eq i32 %3, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %list = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 27, i32 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %elem_size.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 27, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %len.019 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %v.017 = phi ptr [ %5, %for.body.lr.ph ], [ %add.ptr.i, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.019
  %sub = sub i32 4096, %len.019
  %6 = ptrtoint ptr %v.017 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %v.017, align 4
  %conv = zext i16 %7 to i32
  %verb = getelementptr inbounds %struct.hda_verb, ptr %v.017, i32 0, i32 1
  %8 = ptrtoint ptr %verb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %verb, align 4
  %param = getelementptr inbounds %struct.hda_verb, ptr %v.017, i32 0, i32 2
  %10 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %param, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %9, i32 noundef %11) #9
  %add = add i32 %call2, %len.019
  %inc = add nuw i32 %i.018, 1
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  %14 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %15, %inc
  %add.ptr.i = getelementptr i8, ptr %13, i32 %mul.i
  %16 = ptrtoint ptr %init_verbs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %init_verbs, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %user_mutex) #9
  ret i32 %len.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_verbs_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @parse_init_verbs(ptr noundef %1, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1.count = select i1 %cmp, i32 %call1, i32 %count
  ret i32 %call1.count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hints_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %user_mutex = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %user_mutex, i32 noundef 0) #9
  %hints = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %hints to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hints, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.not = icmp eq i32 %3, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %list = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 28, i32 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 8
  %elem_size.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 28, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %len.018 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %hint.016 = phi ptr [ %5, %for.body.lr.ph ], [ %add.ptr.i, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.018
  %sub = sub i32 4096, %len.018
  %6 = ptrtoint ptr %hint.016 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hint.016, align 4
  %val = getelementptr inbounds %struct.hda_hint, ptr %hint.016, i32 0, i32 1
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %val, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.35, ptr noundef %7, ptr noundef %9) #9
  %add = add i32 %call2, %len.018
  %inc = add nuw i32 %i.017, 1
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %12 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %13, %inc
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %14 = ptrtoint ptr %hints to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hints, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %user_mutex) #9
  ret i32 %len.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hints_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @parse_hints(ptr noundef %1, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1.count = select i1 %cmp, i32 %call1, i32 %count
  ret i32 %call1.count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_pin_configs_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %user_pins = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 29
  %user_mutex.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %user_mutex.i, i32 noundef 0) #9
  %list1.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 29, i32 4
  %2 = ptrtoint ptr %user_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %user_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 0
  br i1 %cmp11.not.i, label %entry.pin_configs_show.exit_crit_edge, label %for.body.lr.ph.i

entry.pin_configs_show.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pin_configs_show.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %4 = ptrtoint ptr %list1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list1.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 29, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %len.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %pin.012.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %add.ptr.i.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %len.014.i
  %6 = ptrtoint ptr %pin.012.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pin.012.i, align 4
  %conv.i = zext i16 %7 to i32
  %cfg.i = getelementptr inbounds %struct.hda_pincfg, ptr %pin.012.i, i32 0, i32 3
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg.i, align 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.27, i32 noundef %conv.i, i32 noundef %9) #9
  %add.i = add i32 %call.i, %len.014.i
  %inc.i = add nuw i32 %i.013.i, 1
  %10 = ptrtoint ptr %list1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list1.i, align 4
  %12 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elem_size.i.i, align 4
  %mul.i.i = mul i32 %13, %inc.i
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul.i.i
  %14 = ptrtoint ptr %user_pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %user_pins, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.pin_configs_show.exit_crit_edge

for.body.i.pin_configs_show.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pin_configs_show.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

pin_configs_show.exit:                            ; preds = %for.body.i.pin_configs_show.exit_crit_edge, %entry.pin_configs_show.exit_crit_edge
  %len.0.lcssa.i = phi i32 [ 0, %entry.pin_configs_show.exit_crit_edge ], [ %add.i, %for.body.i.pin_configs_show.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %user_mutex.i) #9
  ret i32 %len.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_pin_configs_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %nid.i = alloca i32, align 4
  %cfg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nid.i) #9
  %2 = ptrtoint ptr %nid.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nid.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg.i) #9
  %3 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cfg.i, align 4, !annotation !138
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.14, ptr noundef nonnull %nid.i, ptr noundef nonnull %cfg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.parse_user_pin_configs.exit.thread_crit_edge

entry.parse_user_pin_configs.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_user_pin_configs.exit.thread

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i.parse_user_pin_configs.exit.thread_crit_edge, label %parse_user_pin_configs.exit

if.end.i.parse_user_pin_configs.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %parse_user_pin_configs.exit.thread

parse_user_pin_configs.exit.thread:               ; preds = %if.end.i.parse_user_pin_configs.exit.thread_crit_edge, %entry.parse_user_pin_configs.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nid.i) #9
  br label %10

parse_user_pin_configs.exit:                      ; preds = %if.end.i
  %user_mutex.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %user_mutex.i, i32 noundef 0) #9
  %user_pins.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nid.i, align 4
  %conv.i = trunc i32 %7 to i16
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg.i, align 4
  %call3.i = call i32 @snd_hda_add_pincfg(ptr noundef %1, ptr noundef %user_pins.i, i16 noundef zeroext %conv.i, i32 noundef %9) #9
  call void @mutex_unlock(ptr noundef %user_mutex.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nid.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %parse_user_pin_configs.exit._crit_edge, label %parse_user_pin_configs.exit._crit_edge7

parse_user_pin_configs.exit._crit_edge7:          ; preds = %parse_user_pin_configs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %11

parse_user_pin_configs.exit._crit_edge:           ; preds = %parse_user_pin_configs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %10

10:                                               ; preds = %parse_user_pin_configs.exit._crit_edge, %parse_user_pin_configs.exit.thread
  %retval.0.i6 = phi i32 [ -22, %parse_user_pin_configs.exit.thread ], [ %call3.i, %parse_user_pin_configs.exit._crit_edge ]
  br label %11

11:                                               ; preds = %10, %parse_user_pin_configs.exit._crit_edge7
  %12 = phi i32 [ %retval.0.i6, %10 ], [ %count, %parse_user_pin_configs.exit._crit_edge7 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reconfig_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %if.then

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @snd_hdac_power_up(ptr noundef %1) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.38) #13
  %call2.i = tail call i32 @snd_hda_codec_reset(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end5.i, label %if.end.i

do.end5.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44) #13
  br label %if.end.thread5

if.end.i:                                         ; preds = %if.then
  %call10.i = tail call i32 @device_reprobe(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end.i.if.end.thread5_crit_edge, label %if.end

if.end.i.if.end.thread5_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread5

if.end.thread5:                                   ; preds = %if.end.i.if.end.thread5_crit_edge, %do.end5.i
  %err.0.i.ph = phi i32 [ %call10.i, %if.end.i.if.end.thread5_crit_edge ], [ %call2.i, %do.end5.i ]
  %call16.i7 = tail call i32 @snd_hdac_power_down(ptr noundef %1) #9
  br label %6

if.end:                                           ; preds = %if.end.i
  %card.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card.i, align 4
  %call14.i = tail call i32 @snd_card_register(ptr noundef %5) #9
  %call16.i = tail call i32 @snd_hdac_power_down(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp = icmp slt i32 %call14.i, 0
  br i1 %cmp, label %if.end._crit_edge, label %if.end.if.end.thread_crit_edge

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %6

6:                                                ; preds = %if.end._crit_edge, %if.end.thread5
  %err.0.i9 = phi i32 [ %err.0.i.ph, %if.end.thread5 ], [ %call14.i, %if.end._crit_edge ]
  br label %if.end.thread

if.end.thread:                                    ; preds = %6, %if.end.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %7 = phi i32 [ %err.0.i9, %6 ], [ %count, %if.end.if.end.thread_crit_edge ], [ %count, %entry.if.end.thread_crit_edge ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_reprobe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clear_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %if.then

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @snd_hda_codec_reset(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %16, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %init_verbs.i.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 27
  tail call void @snd_array_free(ptr noundef %init_verbs.i.i) #9
  %hints.i.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %hints.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hints.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp10.not.i.i, label %if.end.i.snd_hda_sysfs_clear.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.snd_hda_sysfs_clear.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_hda_sysfs_clear.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %list.i.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 28, i32 4
  %6 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list.i.i, align 8
  %elem_size.i.i.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 28, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %hint.011.i.i = phi ptr [ %7, %for.body.lr.ph.i.i ], [ %add.ptr.i.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %8 = ptrtoint ptr %hint.011.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hint.011.i.i, align 4
  tail call void @kfree(ptr noundef %9) #9
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  %10 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list.i.i, align 4
  %12 = ptrtoint ptr %elem_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elem_size.i.i.i, align 4
  %mul.i.i.i = mul i32 %13, %inc.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %mul.i.i.i
  %14 = ptrtoint ptr %hints.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hints.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %15
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.snd_hda_sysfs_clear.exit.i_crit_edge

for.body.i.i.snd_hda_sysfs_clear.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_hda_sysfs_clear.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

snd_hda_sysfs_clear.exit.i:                       ; preds = %for.body.i.i.snd_hda_sysfs_clear.exit.i_crit_edge, %if.end.i.snd_hda_sysfs_clear.exit.i_crit_edge
  tail call void @snd_array_free(ptr noundef %hints.i.i) #9
  %user_pins.i.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 29
  tail call void @snd_array_free(ptr noundef %user_pins.i.i) #9
  br label %if.end.thread

16:                                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.48) #13
  br label %if.end.thread

if.end.thread:                                    ; preds = %16, %snd_hda_sysfs_clear.exit.i, %entry.if.end.thread_crit_edge
  %17 = phi i32 [ %call.i, %16 ], [ %count, %entry.if.end.thread_crit_edge ], [ %count, %snd_hda_sysfs_clear.exit.i ]
  ret i32 %17
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !83, !84, !86, !87, !89, !91, !92, !94, !95, !97, !99, !100, !102, !104, !105, !107, !108, !110, !111, !112, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !126, !127, !128}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__ksymtab_snd_hda_get_hint, !1, !"__ksymtab_snd_hda_get_hint", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/hda_sysfs.c", i32 426, i32 1}
!2 = !{ptr @__ksymtab_snd_hda_get_bool_hint, !3, !"__ksymtab_snd_hda_get_bool_hint", i1 false, i1 false}
!3 = !{!"../sound/pci/hda/hda_sysfs.c", i32 461, i32 1}
!4 = !{ptr @__ksymtab_snd_hda_get_int_hint, !5, !"__ksymtab_snd_hda_get_int_hint", i1 false, i1 false}
!5 = !{!"../sound/pci/hda/hda_sysfs.c", i32 492, i32 1}
!6 = !{ptr @__ksymtab_snd_hda_load_patch, !7, !"__ksymtab_snd_hda_load_patch", i1 false, i1 false}
!7 = !{!"../sound/pci/hda/hda_sysfs.c", i32 734, i32 1}
!8 = !{ptr @snd_hda_dev_attr_groups, !9, !"snd_hda_dev_attr_groups", i1 false, i1 false}
!9 = !{!"../sound/pci/hda/hda_sysfs.c", i32 769, i32 31}
!10 = !{ptr @snd_hda_sysfs_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../sound/pci/hda/hda_sysfs.c", i32 776, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/hda/hda_sysfs.c", i32 616, i32 10}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/hda/hda_sysfs.c", i32 620, i32 10}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/hda/hda_sysfs.c", i32 629, i32 10}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/hda/hda_sysfs.c", i32 630, i32 12}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/hda/hda_sysfs.c", i32 624, i32 10}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/hda/hda_sysfs.c", i32 625, i32 12}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/hda/hda_sysfs.c", i32 634, i32 10}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/hda/hda_sysfs.c", i32 635, i32 12}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/hda/hda_sysfs.c", i32 639, i32 10}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/hda/hda_sysfs.c", i32 643, i32 10}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/hda/hda_sysfs.c", i32 647, i32 10}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/hda/hda_sysfs.c", i32 651, i32 10}
!37 = !{ptr @patch_items, !38, !"patch_items", i1 false, i1 false}
!38 = !{!"../sound/pci/hda/hda_sysfs.c", i32 614, i32 36}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/hda/hda_sysfs.c", i32 547, i32 18}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/hda/hda_sysfs.c", i32 385, i32 18}
!43 = !{ptr @hda_dev_attr_group, !44, !"hda_dev_attr_group", i1 false, i1 false}
!44 = !{!"../sound/pci/hda/hda_sysfs.c", i32 765, i32 37}
!45 = !{ptr @hda_dev_attrs, !46, !"hda_dev_attrs", i1 false, i1 false}
!46 = !{!"../sound/pci/hda/hda_sysfs.c", i32 740, i32 26}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/hda/hda_sysfs.c", i32 503, i32 8}
!49 = !{ptr @dev_attr_vendor_id, !48, !"dev_attr_vendor_id", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/hda/hda_sysfs.c", i32 71, i32 1}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/hda/hda_sysfs.c", i32 504, i32 8}
!54 = !{ptr @dev_attr_subsystem_id, !53, !"dev_attr_subsystem_id", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/hda/hda_sysfs.c", i32 505, i32 8}
!57 = !{ptr @dev_attr_revision_id, !56, !"dev_attr_revision_id", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/hda/hda_sysfs.c", i32 506, i32 8}
!60 = !{ptr @dev_attr_afg, !59, !"dev_attr_afg", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/hda/hda_sysfs.c", i32 507, i32 8}
!63 = !{ptr @dev_attr_mfg, !62, !"dev_attr_mfg", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/hda/hda_sysfs.c", i32 508, i32 8}
!66 = !{ptr @dev_attr_vendor_name, !65, !"dev_attr_vendor_name", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/hda/hda_sysfs.c", i32 76, i32 1}
!69 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/hda/hda_sysfs.c", i32 509, i32 8}
!72 = !{ptr @dev_attr_chip_name, !71, !"dev_attr_chip_name", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/hda/hda_sysfs.c", i32 510, i32 8}
!75 = !{ptr @dev_attr_modelname, !74, !"dev_attr_modelname", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/hda/hda_sysfs.c", i32 511, i32 8}
!78 = !{ptr @dev_attr_init_pin_configs, !77, !"dev_attr_init_pin_configs", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/hda/hda_sysfs.c", i32 88, i32 29}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/hda/hda_sysfs.c", i32 512, i32 8}
!83 = !{ptr @dev_attr_driver_pin_configs, !82, !"dev_attr_driver_pin_configs", i1 false, i1 false}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/hda/hda_sysfs.c", i32 48, i32 8}
!86 = !{ptr @dev_attr_power_on_acct, !85, !"dev_attr_power_on_acct", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/hda/hda_sysfs.c", i32 36, i32 22}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/hda/hda_sysfs.c", i32 49, i32 8}
!91 = !{ptr @dev_attr_power_off_acct, !90, !"dev_attr_power_off_acct", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/hda/hda_sysfs.c", i32 407, i32 8}
!94 = !{ptr @dev_attr_init_verbs, !93, !"dev_attr_init_verbs", i1 false, i1 false}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/hda/hda_sysfs.c", i32 226, i32 5}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/hda/hda_sysfs.c", i32 408, i32 8}
!99 = !{ptr @dev_attr_hints, !98, !"dev_attr_hints", i1 false, i1 false}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/hda/hda_sysfs.c", i32 276, i32 5}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/hda/hda_sysfs.c", i32 409, i32 8}
!104 = !{ptr @dev_attr_user_pin_configs, !103, !"dev_attr_user_pin_configs", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/hda/hda_sysfs.c", i32 410, i32 8}
!107 = !{ptr @dev_attr_reconfig, !106, !"dev_attr_reconfig", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/hda/hda_sysfs.c", i32 135, i32 2}
!110 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @reconfig_codec._entry, !109, !"_entry", i1 false, i1 false}
!115 = !{ptr @reconfig_codec._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/hda/hda_sysfs.c", i32 138, i32 3}
!118 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @reconfig_codec._entry.43, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @reconfig_codec._entry_ptr.46, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/pci/hda/hda_sysfs.c", i32 411, i32 8}
!123 = !{ptr @dev_attr_clear, !122, !"dev_attr_clear", i1 false, i1 false}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/hda/hda_sysfs.c", i32 123, i32 3}
!126 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @clear_codec._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @clear_codec._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
